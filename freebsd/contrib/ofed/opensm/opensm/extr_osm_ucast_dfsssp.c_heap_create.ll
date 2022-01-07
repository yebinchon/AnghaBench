; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_heap_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_heap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, %struct.TYPE_8__**)* @heap_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heap_create(%struct.TYPE_7__* %0, i64 %1, %struct.TYPE_8__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = call i64 @malloc(i32 16)
  %11 = inttoptr i64 %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %80

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @malloc(i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_7__**
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store %struct.TYPE_7__** %25, %struct.TYPE_7__*** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %29, align 8
  %31 = icmp ne %struct.TYPE_7__** %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %15
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = call i32 @free(%struct.TYPE_8__* %33)
  store i32 1, i32* %4, align 4
  br label %80

35:                                               ; preds = %15
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 %49
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %50, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %54, i64 %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i64 %51, i64* %58, align 8
  br label %59

59:                                               ; preds = %42
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %36

62:                                               ; preds = %36
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %74, %62
  %67 = load i64, i64* %9, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = sub i64 %71, 1
  %73 = call i32 @heap_down(%struct.TYPE_8__* %70, i64 %72)
  br label %74

74:                                               ; preds = %69
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* %9, align 8
  br label %66

77:                                               ; preds = %66
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %79, align 8
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %32, %14
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @heap_down(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
