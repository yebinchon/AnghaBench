; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options_f.c_f_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options_f.c_f_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@MINIMUM_SCREEN_ROWS = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"042|Screen lines too small, less than %d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"043|Screen lines too large, greater than %d\00", align 1
@O_LINES = common dso_local global i32 0, align 4
@O_WINDOW = common dso_local global i32 0, align 4
@OS_DEF = common dso_local global i32 0, align 4
@MAXIMUM_SCREEN_ROWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_lines(%struct.TYPE_7__* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MINIMUM_SCREEN_ROWS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = load i32, i32* @M_ERR, align 4
  %17 = load i32, i32* @MINIMUM_SCREEN_ROWS, align 4
  %18 = call i32 @msgq(%struct.TYPE_7__* %15, i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 1, i32* %5, align 4
  br label %99

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 500
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = load i32, i32* @M_ERR, align 4
  %26 = call i32 @msgq(%struct.TYPE_7__* %24, i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 500)
  store i32 1, i32* %5, align 4
  br label %99

27:                                               ; preds = %19
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = load i32, i32* @O_LINES, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @o_set(%struct.TYPE_7__* %28, i32 %29, i32 0, i32* null, i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %62

36:                                               ; preds = %27
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = load i32, i32* @O_WINDOW, align 4
  %41 = call i32 @O_VAL(%struct.TYPE_7__* %39, i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = load i32, i32* @O_WINDOW, align 4
  %44 = call i32 @O_D_VAL(%struct.TYPE_7__* %42, i32 %43)
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %36
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = load i32, i32* @O_WINDOW, align 4
  %49 = call i32 @O_VAL(%struct.TYPE_7__* %47, i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46, %36
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = load i32, i32* @O_WINDOW, align 4
  %56 = call i32 @o_set(%struct.TYPE_7__* %54, i32 %55, i32 0, i32* null, i32 1)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = load i32, i32* @O_WINDOW, align 4
  %59 = load i32, i32* @OS_DEF, align 4
  %60 = call i32 @o_set(%struct.TYPE_7__* %57, i32 %58, i32 %59, i32* null, i32 1)
  br label %61

61:                                               ; preds = %53, %46
  br label %98

62:                                               ; preds = %27
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sdiv i32 %65, 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = load i32, i32* @O_WINDOW, align 4
  %71 = call i32 @O_VAL(%struct.TYPE_7__* %69, i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = load i32, i32* @O_WINDOW, align 4
  %74 = call i32 @O_D_VAL(%struct.TYPE_7__* %72, i32 %73)
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %62
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = load i32, i32* @O_WINDOW, align 4
  %79 = call i32 @O_VAL(%struct.TYPE_7__* %77, i32 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %79, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %76, %62
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = load i32, i32* @O_WINDOW, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i32 @o_set(%struct.TYPE_7__* %84, i32 %85, i32 0, i32* null, i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = load i32, i32* @O_WINDOW, align 4
  %92 = load i32, i32* @OS_DEF, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = call i32 @o_set(%struct.TYPE_7__* %90, i32 %91, i32 %92, i32* null, i32 %95)
  br label %97

97:                                               ; preds = %83, %76
  br label %98

98:                                               ; preds = %97, %61
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %23, %14
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @msgq(%struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i32 @o_set(%struct.TYPE_7__*, i32, i32, i32*, i32) #1

declare dso_local i32 @O_VAL(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @O_D_VAL(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
