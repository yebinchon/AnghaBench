; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_print.c_ex_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_print.c_ex_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@E_C_HASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%6u  \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"TOOBIG  \00", align 1
@DBG_FATAL = common dso_local global i32 0, align 4
@E_C_LIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_print(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_13__* %2, %struct.TYPE_13__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [10 x i32], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @NEEDFILE(%struct.TYPE_12__* %19, i32* %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %12, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %92, %5
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %95

35:                                               ; preds = %31
  store i64 0, i64* %15, align 8
  %36 = load i32, i32* @E_C_HASH, align 4
  %37 = call i64 @LF_ISSET(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32, i32* %13, align 4
  %41 = icmp sle i32 %40, 999999
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %18, i64 0, i64 0
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %18, i64 0, i64 0
  %45 = call i32 @SIZE(i32* %44)
  %46 = call i32* @L(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @SPRINTF(i32* %43, i32 %45, i32* %46, i32 %47)
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %18, i64 0, i64 0
  store i32* %49, i32** %17, align 8
  br label %52

50:                                               ; preds = %39
  %51 = call i32* @L(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %51, i32** %17, align 8
  br label %52

52:                                               ; preds = %50, %42
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = call i64 @ex_prchars(%struct.TYPE_12__* %53, i32* %54, i64* %15, i32 8, i32 0, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  br label %96

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @DBG_FATAL, align 4
  %63 = call i64 @db_get(%struct.TYPE_12__* %60, i32 %61, i32 %62, i32** %17, i64* %16)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  br label %96

66:                                               ; preds = %59
  %67 = load i64, i64* %16, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* @E_C_LIST, align 4
  %71 = call i64 @LF_ISSET(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = call i32 @ex_puts(%struct.TYPE_12__* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %86

76:                                               ; preds = %69, %66
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i64 @ex_ldisplay(%struct.TYPE_12__* %77, i32* %78, i64 %79, i64 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 1, i32* %6, align 4
  br label %96

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %73
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = call i64 @INTERRUPTED(%struct.TYPE_12__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %95

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %31

95:                                               ; preds = %90, %31
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %95, %84, %65, %57
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @NEEDFILE(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i32 @SPRINTF(i32*, i32, i32*, i32) #1

declare dso_local i32 @SIZE(i32*) #1

declare dso_local i32* @L(i8*) #1

declare dso_local i64 @ex_prchars(%struct.TYPE_12__*, i32*, i64*, i32, i32, i32) #1

declare dso_local i64 @db_get(%struct.TYPE_12__*, i32, i32, i32**, i64*) #1

declare dso_local i32 @ex_puts(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @ex_ldisplay(%struct.TYPE_12__*, i32*, i64, i64, i32) #1

declare dso_local i64 @INTERRUPTED(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
