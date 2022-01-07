; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_ftree.c_bubble_sort_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_ftree.c_bubble_sort_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__**, i64)* @bubble_sort_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bubble_sort_up(%struct.TYPE_9__** %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %8, i64 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FALSE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %78

20:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %66, %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %69

24:                                               ; preds = %21
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  store i64 1, i64* %6, align 8
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub i64 %27, %28
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %32, i64 %33
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %36, i64 %38
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = call i64 @port_group_compare_load_up(%struct.TYPE_9__* %35, %struct.TYPE_9__* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %31
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %44, i64 %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %7, align 8
  %49 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %49, i64 %50
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %54 = load i64, i64* %6, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %53, i64 %55
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %58, i64 %59
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %60, align 8
  br label %61

61:                                               ; preds = %43, %31
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %25

65:                                               ; preds = %25
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %21

69:                                               ; preds = %21
  %70 = load i64, i64* @FALSE, align 8
  %71 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %71, i64 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i64 %70, i64* %77, align 8
  br label %78

78:                                               ; preds = %69, %19
  ret void
}

declare dso_local i64 @port_group_compare_load_up(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
