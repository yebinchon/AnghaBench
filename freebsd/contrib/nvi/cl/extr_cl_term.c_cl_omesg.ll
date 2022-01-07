; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_term.c_cl_omesg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_term.c_cl_omesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.stat = type { i32 }

@STDERR_FILENO = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TGW_UNKNOWN = common dso_local global i64 0, align 8
@S_IWGRP = common dso_local global i32 0, align 4
@TGW_SET = common dso_local global i64 0, align 8
@TGW_UNSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"046|messages not turned on: %s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"045|messages not turned off: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_omesg(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @STDERR_FILENO, align 4
  %11 = call i8* @ttyname(i32 %10)
  store i8* %11, i8** %9, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @M_SYSERR, align 4
  %19 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %17, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %13
  store i32 1, i32* %4, align 4
  br label %95

21:                                               ; preds = %3
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @stat(i8* %22, %struct.stat* %8)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @M_SYSERR, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %29, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %28, %25
  store i32 1, i32* %4, align 4
  br label %95

34:                                               ; preds = %21
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TGW_UNKNOWN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @S_IWGRP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @TGW_SET, align 8
  br label %50

48:                                               ; preds = %40
  %49 = load i64, i64* @TGW_UNSET, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %34
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @S_IWGRP, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @chmod(i8* %58, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load i32*, i32** %5, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @M_SYSERR, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %69, i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %68, %65
  store i32 1, i32* %4, align 4
  br label %95

74:                                               ; preds = %57
  br label %94

75:                                               ; preds = %54
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @S_IWGRP, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = call i64 @chmod(i8* %76, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load i32*, i32** %5, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* @M_SYSERR, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %88, i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %87, %84
  store i32 1, i32* %4, align 4
  br label %95

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93, %74
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %92, %73, %33, %20
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i8* @ttyname(i32) #1

declare dso_local i32 @msgq(i32*, i32, i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
