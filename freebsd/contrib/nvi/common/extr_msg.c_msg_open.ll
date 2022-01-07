; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_msg.c_msg_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_msg.c_msg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@msg_open.first = internal global i32 1, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@errno = common dso_local global i64 0, align 8
@NL_CAT_LOCALE = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i64 0, align 8
@M_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"030|The file %s is not a message catalog\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msg_open(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @strrchr(i8* %9, i8 signext 47)
  store i8* %10, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @LC_MESSAGES, align 4
  %21 = call i8* @setlocale(i32 %20, i32* null)
  %22 = call i8* @join(i8* %19, i8* %21)
  store i8* %22, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = load i32, i32* @M_SYSERR, align 4
  %27 = call i32 @msgq(%struct.TYPE_6__* %25, i32 %26, i32* null)
  store i32 1, i32* %3, align 4
  br label %79

28:                                               ; preds = %18
  br label %38

29:                                               ; preds = %12, %2
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @join(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = load i32, i32* @M_SYSERR, align 4
  %36 = call i32 @msgq(%struct.TYPE_6__* %34, i32 %35, i32* null)
  store i32 1, i32* %3, align 4
  br label %79

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %28
  store i64 0, i64* @errno, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @NL_CAT_LOCALE, align 4
  %41 = call i32 @catopen(i8* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = load i32, i32* @msg_open.first, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* @msg_open.first, align 4
  store i32 1, i32* %8, align 4
  br label %75

47:                                               ; preds = %43
  %48 = load i64, i64* @errno, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EFTYPE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50, %47
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = load i32, i32* @M_ERR, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @msgq_str(%struct.TYPE_6__* %55, i32 %56, i8* %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %64

59:                                               ; preds = %50
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = load i32, i32* @M_SYSERR, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @msgq_str(%struct.TYPE_6__* %60, i32 %61, i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %54
  store i32 1, i32* %8, align 4
  br label %75

65:                                               ; preds = %38
  store i32 0, i32* @msg_open.first, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = call i32 @msg_close(%struct.TYPE_7__* %68)
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %65, %64, %46
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %33, %24
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @join(i8*, i8*) #1

declare dso_local i8* @setlocale(i32, i32*) #1

declare dso_local i32 @msgq(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @catopen(i8*, i32) #1

declare dso_local i32 @msgq_str(%struct.TYPE_6__*, i32, i8*, i8*) #1

declare dso_local i32 @msg_close(%struct.TYPE_7__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
