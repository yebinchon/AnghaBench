; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_cursor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }

@HMAP = common dso_local global %struct.TYPE_10__* null, align 8
@TMAP = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vs_sm_cursor(%struct.TYPE_11__* %0, %struct.TYPE_10__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @HMAP, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @TMAP, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %2
  store i32 1, i32* %3, align 4
  br label %84

23:                                               ; preds = %14
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @HMAP, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %6, align 8
  br label %25

25:                                               ; preds = %34, %23
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 1
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %6, align 8
  br label %25

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %80, %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @TMAP, align 8
  %41 = icmp ule %struct.TYPE_10__* %39, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %38
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @TMAP, align 8
  %45 = icmp ne %struct.TYPE_10__* %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %57, align 8
  store i32 0, i32* %3, align 4
  br label %84

58:                                               ; preds = %46, %42
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = call i32 @SMAP_CACHE(%struct.TYPE_10__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = call i64 @vs_line(%struct.TYPE_11__* %63, %struct.TYPE_10__* %64, i32* null, i32* null)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %84

68:                                               ; preds = %62, %58
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %78, align 8
  store i32 0, i32* %3, align 4
  br label %84

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 1
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %6, align 8
  br label %38

83:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %76, %67, %55, %22
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @SMAP_CACHE(%struct.TYPE_10__*) #1

declare dso_local i64 @vs_line(%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
