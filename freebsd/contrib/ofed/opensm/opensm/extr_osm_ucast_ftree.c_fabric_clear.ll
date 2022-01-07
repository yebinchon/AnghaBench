; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_ftree.c_fabric_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_ftree.c_fabric_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_11__*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @fabric_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fabric_clear(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = icmp ne %struct.TYPE_15__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %164

14:                                               ; preds = %1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 13
  %17 = call i64 @cl_qmap_head(i32* %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %4, align 8
  br label %19

19:                                               ; preds = %26, %14
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 13
  %23 = call i64 @cl_qmap_end(i32* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_14__*
  %25 = icmp ne %struct.TYPE_14__* %20, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %3, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = call i64 @cl_qmap_next(i32* %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %4, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = call i32 @hca_destroy(%struct.TYPE_14__* %32)
  br label %19

34:                                               ; preds = %19
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 13
  %37 = call i32 @cl_qmap_remove_all(i32* %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 12
  %40 = call i64 @cl_qmap_head(i32* %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %6, align 8
  br label %42

42:                                               ; preds = %49, %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 12
  %46 = call i64 @cl_qmap_end(i32* %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_13__*
  %48 = icmp ne %struct.TYPE_13__* %43, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %5, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = call i64 @cl_qmap_next(i32* %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %6, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = call i32 @sw_destroy(%struct.TYPE_13__* %55)
  br label %42

57:                                               ; preds = %42
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 12
  %60 = call i32 @cl_qmap_remove_all(i32* %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 11
  %63 = call i64 @cl_qmap_head(i32* %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %8, align 8
  br label %65

65:                                               ; preds = %72, %57
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 11
  %69 = call i64 @cl_qmap_end(i32* %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_12__*
  %71 = icmp ne %struct.TYPE_12__* %66, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %7, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = call i64 @cl_qmap_next(i32* %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %8, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = call i32 @sw_tbl_element_destroy(%struct.TYPE_12__* %78)
  br label %65

80:                                               ; preds = %65
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 11
  %83 = call i32 @cl_qmap_remove_all(i32* %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 10
  %86 = call i64 @cl_qmap_head(i32* %85)
  %87 = inttoptr i64 %86 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %10, align 8
  br label %88

88:                                               ; preds = %95, %80
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 10
  %92 = call i64 @cl_qmap_end(i32* %91)
  %93 = inttoptr i64 %92 to %struct.TYPE_11__*
  %94 = icmp ne %struct.TYPE_11__* %89, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %9, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = call i64 @cl_qmap_next(i32* %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %10, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %102 = call i32 @free(%struct.TYPE_11__* %101)
  br label %88

103:                                              ; preds = %88
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 10
  %106 = call i32 @cl_qmap_remove_all(i32* %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 9
  %109 = call i64 @cl_qmap_head(i32* %108)
  %110 = inttoptr i64 %109 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %110, %struct.TYPE_11__** %10, align 8
  br label %111

111:                                              ; preds = %118, %103
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 9
  %115 = call i64 @cl_qmap_end(i32* %114)
  %116 = inttoptr i64 %115 to %struct.TYPE_11__*
  %117 = icmp ne %struct.TYPE_11__* %112, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %9, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = call i64 @cl_qmap_next(i32* %121)
  %123 = inttoptr i64 %122 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %10, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %125 = call i32 @free(%struct.TYPE_11__* %124)
  br label %111

126:                                              ; preds = %111
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 9
  %129 = call i32 @cl_qmap_remove_all(i32* %128)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %126
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = icmp ne %struct.TYPE_11__* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = call i32 @free(%struct.TYPE_11__* %142)
  br label %144

144:                                              ; preds = %139, %134, %126
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 8
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 7
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 6
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 5
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 3
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %160, align 8
  %161 = load i32, i32* @FALSE, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %144, %13
  ret void
}

declare dso_local i64 @cl_qmap_head(i32*) #1

declare dso_local i64 @cl_qmap_end(i32*) #1

declare dso_local i64 @cl_qmap_next(i32*) #1

declare dso_local i32 @hca_destroy(%struct.TYPE_14__*) #1

declare dso_local i32 @cl_qmap_remove_all(i32*) #1

declare dso_local i32 @sw_destroy(%struct.TYPE_13__*) #1

declare dso_local i32 @sw_tbl_element_destroy(%struct.TYPE_12__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
