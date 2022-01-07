; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_char_poly.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_char_poly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32**, i32**)* @char_poly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @char_poly(%struct.TYPE_8__* %0, i32 %1, i32** %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32***, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32* %19, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32*** null, i32**** %13, align 8
  store i32* null, i32** %14, align 8
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @OSM_LOG_ENTER(i32* %21)
  br label %23

23:                                               ; preds = %4
  %24 = load i32**, i32*** %7, align 8
  %25 = icmp ne i32** %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %101

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call i32* @poly_alloc(%struct.TYPE_8__* %28, i32 %29)
  store i32* %30, i32** %14, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %101

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32*** @pm_alloc(%struct.TYPE_8__* %34, i32 %35, i32 %36)
  store i32*** %37, i32**** %13, align 8
  %38 = icmp ne i32*** %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @free(i32* %40)
  store i32* null, i32** %14, align 8
  br label %101

42:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %86, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %89

47:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32***, i32**** %13, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32**, i32*** %62, i64 %64
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %61, i32* %71, align 4
  br label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %48

75:                                               ; preds = %48
  %76 = load i32***, i32**** %13, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32**, i32*** %76, i64 %78
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 -1, i32* %85, align 4
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %43

89:                                               ; preds = %43
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32***, i32**** %13, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = call i64 @determinant(%struct.TYPE_8__* %90, i32 %91, i32 %92, i32*** %93, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @free(i32* %98)
  store i32* null, i32** %14, align 8
  br label %101

100:                                              ; preds = %89
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %100, %97, %39, %32, %26
  %102 = load i32***, i32**** %13, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @pm_free(i32*** %102, i32 %103)
  %105 = load i32*, i32** %14, align 8
  %106 = load i32**, i32*** %8, align 8
  store i32* %105, i32** %106, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @OSM_LOG_EXIT(i32* %107)
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i32* @poly_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32*** @pm_alloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @determinant(%struct.TYPE_8__*, i32, i32, i32***, i32*) #1

declare dso_local i32 @pm_free(i32***, i32) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
