; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_instat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_instat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__*, i32, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__** }

@True = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @instat(i32** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32**, i32*** %4, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = call %struct.TYPE_13__* @execute(i32* %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %7, align 8
  %17 = load i32**, i32*** %4, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  %19 = load i32*, i32** %18, align 8
  %20 = call %struct.TYPE_13__* @execute(i32* %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %8, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = call i32 @isarr(%struct.TYPE_13__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** @True, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %3, align 8
  br label %97

26:                                               ; preds = %2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %11, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = call i32 @tempfree(%struct.TYPE_13__* %31)
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %92, %26
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %95

39:                                               ; preds = %33
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %42, i64 %44
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %9, align 8
  br label %47

47:                                               ; preds = %89, %39
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = icmp ne %struct.TYPE_13__* %48, null
  br i1 %49, label %50, label %91

50:                                               ; preds = %47
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @setsval(%struct.TYPE_13__* %51, i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %10, align 8
  %59 = load i32**, i32*** %4, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 2
  %61 = load i32*, i32** %60, align 8
  %62 = call %struct.TYPE_13__* @execute(i32* %61)
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %6, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = call i64 @isbreak(%struct.TYPE_13__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %50
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = call i32 @tempfree(%struct.TYPE_13__* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** @True, align 8
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %3, align 8
  br label %97

70:                                               ; preds = %50
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = call i64 @isnext(%struct.TYPE_13__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = call i64 @isexit(%struct.TYPE_13__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = call i64 @isret(%struct.TYPE_13__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78, %74, %70
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = call i32 @tempfree(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %3, align 8
  br label %97

86:                                               ; preds = %78
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = call i32 @tempfree(%struct.TYPE_13__* %87)
  br label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %9, align 8
  br label %47

91:                                               ; preds = %47
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %33

95:                                               ; preds = %33
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** @True, align 8
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %3, align 8
  br label %97

97:                                               ; preds = %95, %82, %66, %24
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %98
}

declare dso_local %struct.TYPE_13__* @execute(i32*) #1

declare dso_local i32 @isarr(%struct.TYPE_13__*) #1

declare dso_local i32 @tempfree(%struct.TYPE_13__*) #1

declare dso_local i32 @setsval(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @isbreak(%struct.TYPE_13__*) #1

declare dso_local i64 @isnext(%struct.TYPE_13__*) #1

declare dso_local i64 @isexit(%struct.TYPE_13__*) #1

declare dso_local i64 @isret(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
