; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_ffind_3d_perpendicular.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_ffind_3d_perpendicular.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_switch = type { i32, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, %struct.link*, i64 }
%struct.link = type { %struct.endpoint* }
%struct.endpoint = type { i64, i64, %struct.f_switch* }

@PASSTHRU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.f_switch* @ffind_3d_perpendicular(%struct.f_switch* %0, %struct.f_switch* %1, %struct.f_switch* %2, %struct.f_switch* %3) #0 {
  %5 = alloca %struct.f_switch*, align 8
  %6 = alloca %struct.f_switch*, align 8
  %7 = alloca %struct.f_switch*, align 8
  %8 = alloca %struct.f_switch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.link*, align 8
  %11 = alloca %struct.endpoint*, align 8
  %12 = alloca %struct.f_switch*, align 8
  store %struct.f_switch* %0, %struct.f_switch** %5, align 8
  store %struct.f_switch* %1, %struct.f_switch** %6, align 8
  store %struct.f_switch* %2, %struct.f_switch** %7, align 8
  store %struct.f_switch* %3, %struct.f_switch** %8, align 8
  store %struct.f_switch* null, %struct.f_switch** %12, align 8
  %13 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %14 = icmp ne %struct.f_switch* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %17 = icmp ne %struct.f_switch* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.f_switch*, %struct.f_switch** %7, align 8
  %20 = icmp ne %struct.f_switch* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.f_switch*, %struct.f_switch** %8, align 8
  %23 = icmp ne %struct.f_switch* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %18, %15, %4
  br label %137

25:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %133, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %29 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %136

32:                                               ; preds = %26
  %33 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %34 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %32
  %42 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %43 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %41
  %53 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %54 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 %57
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PASSTHRU, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %65, label %64

64:                                               ; preds = %52, %41, %32
  br label %133

65:                                               ; preds = %52
  %66 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %67 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %68, i64 %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load %struct.link*, %struct.link** %73, align 8
  store %struct.link* %74, %struct.link** %10, align 8
  %75 = load %struct.link*, %struct.link** %10, align 8
  %76 = getelementptr inbounds %struct.link, %struct.link* %75, i32 0, i32 0
  %77 = load %struct.endpoint*, %struct.endpoint** %76, align 8
  %78 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %77, i64 0
  %79 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %82 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %65
  %86 = load %struct.link*, %struct.link** %10, align 8
  %87 = getelementptr inbounds %struct.link, %struct.link* %86, i32 0, i32 0
  %88 = load %struct.endpoint*, %struct.endpoint** %87, align 8
  %89 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %88, i64 1
  store %struct.endpoint* %89, %struct.endpoint** %11, align 8
  br label %95

90:                                               ; preds = %65
  %91 = load %struct.link*, %struct.link** %10, align 8
  %92 = getelementptr inbounds %struct.link, %struct.link* %91, i32 0, i32 0
  %93 = load %struct.endpoint*, %struct.endpoint** %92, align 8
  %94 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %93, i64 0
  store %struct.endpoint* %94, %struct.endpoint** %11, align 8
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.endpoint*, %struct.endpoint** %11, align 8
  %97 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PASSTHRU, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.endpoint*, %struct.endpoint** %11, align 8
  %103 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %102, i32 0, i32 2
  %104 = load %struct.f_switch*, %struct.f_switch** %103, align 8
  %105 = icmp ne %struct.f_switch* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %101, %95
  br label %133

107:                                              ; preds = %101
  %108 = load %struct.endpoint*, %struct.endpoint** %11, align 8
  %109 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %108, i32 0, i32 2
  %110 = load %struct.f_switch*, %struct.f_switch** %109, align 8
  store %struct.f_switch* %110, %struct.f_switch** %12, align 8
  %111 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  %112 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.f_switch*, %struct.f_switch** %8, align 8
  %115 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %133

119:                                              ; preds = %107
  %120 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %121 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %122 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  %123 = call i64 @ffind_face_corner(%struct.f_switch* %120, %struct.f_switch* %121, %struct.f_switch* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.f_switch*, %struct.f_switch** %7, align 8
  %127 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %128 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  %129 = call i64 @ffind_face_corner(%struct.f_switch* %126, %struct.f_switch* %127, %struct.f_switch* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %137

132:                                              ; preds = %125, %119
  br label %133

133:                                              ; preds = %132, %118, %106, %64
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %26

136:                                              ; preds = %26
  store %struct.f_switch* null, %struct.f_switch** %12, align 8
  br label %137

137:                                              ; preds = %136, %131, %24
  %138 = load %struct.f_switch*, %struct.f_switch** %12, align 8
  ret %struct.f_switch* %138
}

declare dso_local i64 @ffind_face_corner(%struct.f_switch*, %struct.f_switch*, %struct.f_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
