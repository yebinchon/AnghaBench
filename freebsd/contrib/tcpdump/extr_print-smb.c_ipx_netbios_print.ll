; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_ipx_netbios_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_ipx_netbios_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@startbuf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"\FFSMB\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\0A>>> IPX transport \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A>>> Unknown IPX \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipx_netbios_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ugt i32* %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i32*, i32** %5, align 8
  store i32* %23, i32** @startbuf, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %61, %22
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %27, label %64

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ugt i32* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %64

36:                                               ; preds = %27
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i64 @memcmp(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @smb_fdata(%struct.TYPE_6__* %44, i32* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %49, i32 0)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @print_smb(%struct.TYPE_6__* %51, i32* %55, i32* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.2 to %struct.TYPE_6__*))
  br label %64

60:                                               ; preds = %36
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %24

64:                                               ; preds = %43, %35, %24
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @smb_fdata(%struct.TYPE_6__* %68, i32* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %70, i32 0)
  br label %72

72:                                               ; preds = %67, %64
  ret void
}

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @smb_fdata(%struct.TYPE_6__*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @print_smb(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
