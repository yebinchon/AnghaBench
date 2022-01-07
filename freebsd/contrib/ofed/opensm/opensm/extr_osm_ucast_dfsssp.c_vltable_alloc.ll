; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_vltable_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_vltable_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32* }

@OSM_DEFAULT_SL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__**, i32)* @vltable_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vltable_alloc(%struct.TYPE_4__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i64 @malloc(i32 24)
  %7 = inttoptr i64 %6 to %struct.TYPE_4__*
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %8, align 8
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %61

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i64 @malloc(i32 %21)
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32* %23, i32** %26, align 8
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %13
  br label %61

33:                                               ; preds = %13
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i64 @malloc(i32 %39)
  %41 = inttoptr i64 %40 to i32*
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32* %41, i32** %44, align 8
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %33
  br label %61

51:                                               ; preds = %33
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @OSM_DEFAULT_SL, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i32 @memset(i32* %55, i32 %56, i32 %59)
  store i32 0, i32* %3, align 4
  br label %64

61:                                               ; preds = %50, %32, %12
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %63 = call i32 @vltable_dealloc(%struct.TYPE_4__** %62)
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %51
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vltable_dealloc(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
