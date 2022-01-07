; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_find_f_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_find_f_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.fabric = type { i32, %struct.link** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.link* (%struct.fabric*, i64, i32, i64, i32)* @find_f_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.link* @find_f_link(%struct.fabric* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.link*, align 8
  %7 = alloca %struct.fabric*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.link*, align 8
  store %struct.fabric* %0, %struct.fabric** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.fabric*, %struct.fabric** %7, align 8
  %15 = getelementptr inbounds %struct.fabric, %struct.fabric* %14, i32 0, i32 1
  %16 = load %struct.link**, %struct.link*** %15, align 8
  %17 = icmp ne %struct.link** %16, null
  br i1 %17, label %18, label %111

18:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %107, %18
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.fabric*, %struct.fabric** %7, align 8
  %22 = getelementptr inbounds %struct.fabric, %struct.fabric* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %110

25:                                               ; preds = %19
  %26 = load %struct.fabric*, %struct.fabric** %7, align 8
  %27 = getelementptr inbounds %struct.fabric, %struct.fabric* %26, i32 0, i32 1
  %28 = load %struct.link**, %struct.link*** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.link*, %struct.link** %28, i64 %30
  %32 = load %struct.link*, %struct.link** %31, align 8
  store %struct.link* %32, %struct.link** %13, align 8
  %33 = load %struct.link*, %struct.link** %13, align 8
  %34 = getelementptr inbounds %struct.link, %struct.link* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %25
  %42 = load %struct.link*, %struct.link** %13, align 8
  %43 = getelementptr inbounds %struct.link, %struct.link* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %41
  %51 = load %struct.link*, %struct.link** %13, align 8
  %52 = getelementptr inbounds %struct.link, %struct.link* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load %struct.link*, %struct.link** %13, align 8
  %61 = getelementptr inbounds %struct.link, %struct.link* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %104, label %68

68:                                               ; preds = %59, %50, %41, %25
  %69 = load %struct.link*, %struct.link** %13, align 8
  %70 = getelementptr inbounds %struct.link, %struct.link* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %68
  %78 = load %struct.link*, %struct.link** %13, align 8
  %79 = getelementptr inbounds %struct.link, %struct.link* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %77
  %87 = load %struct.link*, %struct.link** %13, align 8
  %88 = getelementptr inbounds %struct.link, %struct.link* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %86
  %96 = load %struct.link*, %struct.link** %13, align 8
  %97 = getelementptr inbounds %struct.link, %struct.link* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %95, %59
  %105 = load %struct.link*, %struct.link** %13, align 8
  store %struct.link* %105, %struct.link** %6, align 8
  br label %112

106:                                              ; preds = %95, %86, %77, %68
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %19

110:                                              ; preds = %19
  br label %111

111:                                              ; preds = %110, %5
  store %struct.link* null, %struct.link** %6, align 8
  br label %112

112:                                              ; preds = %111, %104
  %113 = load %struct.link*, %struct.link** %6, align 8
  ret %struct.link* %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
