; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_ffind_2d_perpendicular.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_ffind_2d_perpendicular.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_switch = type { i32, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, %struct.link*, i64 }
%struct.link = type { %struct.endpoint* }
%struct.endpoint = type { i64, i64, %struct.f_switch* }

@PASSTHRU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.f_switch* @ffind_2d_perpendicular(%struct.f_switch* %0, %struct.f_switch* %1, %struct.f_switch* %2) #0 {
  %4 = alloca %struct.f_switch*, align 8
  %5 = alloca %struct.f_switch*, align 8
  %6 = alloca %struct.f_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.link*, align 8
  %9 = alloca %struct.endpoint*, align 8
  %10 = alloca %struct.f_switch*, align 8
  store %struct.f_switch* %0, %struct.f_switch** %4, align 8
  store %struct.f_switch* %1, %struct.f_switch** %5, align 8
  store %struct.f_switch* %2, %struct.f_switch** %6, align 8
  store %struct.f_switch* null, %struct.f_switch** %10, align 8
  %11 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %12 = icmp ne %struct.f_switch* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %15 = icmp ne %struct.f_switch* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %18 = icmp ne %struct.f_switch* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %3
  br label %126

20:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %122, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %24 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %125

27:                                               ; preds = %21
  %28 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %29 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %27
  %37 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %38 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %36
  %48 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %49 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PASSTHRU, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %60, label %59

59:                                               ; preds = %47, %36, %27
  br label %122

60:                                               ; preds = %47
  %61 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %62 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.link*, %struct.link** %68, align 8
  store %struct.link* %69, %struct.link** %8, align 8
  %70 = load %struct.link*, %struct.link** %8, align 8
  %71 = getelementptr inbounds %struct.link, %struct.link* %70, i32 0, i32 0
  %72 = load %struct.endpoint*, %struct.endpoint** %71, align 8
  %73 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %72, i64 0
  %74 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %77 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %60
  %81 = load %struct.link*, %struct.link** %8, align 8
  %82 = getelementptr inbounds %struct.link, %struct.link* %81, i32 0, i32 0
  %83 = load %struct.endpoint*, %struct.endpoint** %82, align 8
  %84 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %83, i64 1
  store %struct.endpoint* %84, %struct.endpoint** %9, align 8
  br label %90

85:                                               ; preds = %60
  %86 = load %struct.link*, %struct.link** %8, align 8
  %87 = getelementptr inbounds %struct.link, %struct.link* %86, i32 0, i32 0
  %88 = load %struct.endpoint*, %struct.endpoint** %87, align 8
  %89 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %88, i64 0
  store %struct.endpoint* %89, %struct.endpoint** %9, align 8
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.endpoint*, %struct.endpoint** %9, align 8
  %92 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PASSTHRU, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.endpoint*, %struct.endpoint** %9, align 8
  %98 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %97, i32 0, i32 2
  %99 = load %struct.f_switch*, %struct.f_switch** %98, align 8
  %100 = icmp ne %struct.f_switch* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96, %90
  br label %122

102:                                              ; preds = %96
  %103 = load %struct.endpoint*, %struct.endpoint** %9, align 8
  %104 = getelementptr inbounds %struct.endpoint, %struct.endpoint* %103, i32 0, i32 2
  %105 = load %struct.f_switch*, %struct.f_switch** %104, align 8
  store %struct.f_switch* %105, %struct.f_switch** %10, align 8
  %106 = load %struct.f_switch*, %struct.f_switch** %10, align 8
  %107 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.f_switch*, %struct.f_switch** %6, align 8
  %110 = getelementptr inbounds %struct.f_switch, %struct.f_switch* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %122

114:                                              ; preds = %102
  %115 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  %116 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  %117 = load %struct.f_switch*, %struct.f_switch** %10, align 8
  %118 = call i64 @ffind_face_corner(%struct.f_switch* %115, %struct.f_switch* %116, %struct.f_switch* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %126

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %113, %101, %59
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %21

125:                                              ; preds = %21
  store %struct.f_switch* null, %struct.f_switch** %10, align 8
  br label %126

126:                                              ; preds = %125, %120, %19
  %127 = load %struct.f_switch*, %struct.f_switch** %10, align 8
  ret %struct.f_switch* %127
}

declare dso_local i64 @ffind_face_corner(%struct.f_switch*, %struct.f_switch*, %struct.f_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
