; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_m_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_m_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed allocating matrix - out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (%struct.TYPE_5__*, i32)* @m_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @m_alloc(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32* %12, i32** %6, align 8
  store i32** null, i32*** %8, align 8
  br label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @calloc(i32 %14, i32 8)
  %16 = bitcast i8* %15 to i32**
  store i32** %16, i32*** %8, align 8
  %17 = icmp ne i32** %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %45

19:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @calloc(i32 %25, i32 4)
  %27 = bitcast i8* %26 to i32*
  %28 = load i32**, i32*** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  store i32* %27, i32** %31, align 8
  %32 = icmp ne i32* %27, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %38

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %20

38:                                               ; preds = %33, %20
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %45

43:                                               ; preds = %38
  %44 = load i32**, i32*** %8, align 8
  store i32** %44, i32*** %3, align 8
  br label %52

45:                                               ; preds = %42, %18
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @OSM_LOG_ERROR, align 4
  %48 = call i32 @OSM_LOG(i32* %46, i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %49 = load i32**, i32*** %8, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @m_free(i32** %49, i32 %50)
  store i32** null, i32*** %3, align 8
  br label %52

52:                                               ; preds = %45, %43
  %53 = load i32**, i32*** %3, align 8
  ret i32** %53
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*) #1

declare dso_local i32 @m_free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
