; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_pm_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_pm_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed allocating matrix - out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32*** (%struct.TYPE_5__*, i32, i32)* @pm_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32*** @pm_alloc(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32***, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32***, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32* %15, i32** %8, align 8
  store i32*** null, i32**** %11, align 8
  br label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @calloc(i32 %17, i32 8)
  %19 = bitcast i8* %18 to i32***
  store i32*** %19, i32**** %11, align 8
  %20 = icmp ne i32*** %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %77

22:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %67, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @calloc(i32 %28, i32 8)
  %30 = bitcast i8* %29 to i32**
  %31 = load i32***, i32**** %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32**, i32*** %31, i64 %33
  store i32** %30, i32*** %34, align 8
  %35 = icmp ne i32** %30, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %70

37:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i8* @calloc(i32 %44, i32 4)
  %46 = bitcast i8* %45 to i32*
  %47 = load i32***, i32**** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32**, i32*** %47, i64 %49
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* %46, i32** %54, align 8
  %55 = icmp ne i32* %46, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  br label %61

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %38

61:                                               ; preds = %56, %38
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %70

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %23

70:                                               ; preds = %65, %36, %23
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %77

75:                                               ; preds = %70
  %76 = load i32***, i32**** %11, align 8
  store i32*** %76, i32**** %4, align 8
  br label %84

77:                                               ; preds = %74, %21
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @OSM_LOG_ERROR, align 4
  %80 = call i32 @OSM_LOG(i32* %78, i32 %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %81 = load i32***, i32**** %11, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @pm_free(i32*** %81, i32 %82)
  store i32*** null, i32**** %4, align 8
  br label %84

84:                                               ; preds = %77, %75
  %85 = load i32***, i32**** %4, align 8
  ret i32*** %85
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*) #1

declare dso_local i32 @pm_free(i32***, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
