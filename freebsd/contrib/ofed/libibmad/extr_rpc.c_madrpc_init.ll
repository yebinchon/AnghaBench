; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_rpc.c_madrpc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_rpc.c_madrpc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"can't init UMAD library\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"can't open UMAD port (%s:%d)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@MAX_CLASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"too many classes %d requested\00", align 1
@ibmp = common dso_local global %struct.TYPE_3__* null, align 8
@IB_SA_CLASS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"client_register for mgmt class %d failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @madrpc_init(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i64 (...) @umad_init()
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 (i8*, ...) @IBPANIC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @umad_open_port(i8* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %26 ]
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, ...) @IBPANIC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %16
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MAX_CLASS, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i8*, ...) @IBPANIC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ibmp, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ibmp, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memset(i32 %44, i32 255, i32 4)
  br label %46

46:                                               ; preds = %67, %38
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %8, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  %53 = load i32, i32* %51, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @IB_SA_CLASS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ibmp, align 8
  %62 = call i64 @mad_register_client_via(i32 %59, i32 %60, %struct.TYPE_3__* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i8*, ...) @IBPANIC(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %58
  br label %46

68:                                               ; preds = %46
  ret void
}

declare dso_local i64 @umad_init(...) #1

declare dso_local i32 @IBPANIC(i8*, ...) #1

declare dso_local i32 @umad_open_port(i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @mad_register_client_via(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
