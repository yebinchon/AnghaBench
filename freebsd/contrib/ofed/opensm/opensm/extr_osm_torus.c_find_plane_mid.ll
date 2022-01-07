; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_find_plane_mid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_find_plane_mid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_switch = type { i32 }
%struct.torus = type { i32, i32, %struct.t_switch**** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.t_switch* (%struct.torus*, i32)* @find_plane_mid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.t_switch* @find_plane_mid(%struct.torus* %0, i32 %1) #0 {
  %3 = alloca %struct.t_switch*, align 8
  %4 = alloca %struct.torus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.t_switch****, align 8
  store %struct.torus* %0, %struct.torus** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.torus*, %struct.torus** %4, align 8
  %14 = getelementptr inbounds %struct.torus, %struct.torus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %8, align 4
  %17 = load %struct.torus*, %struct.torus** %4, align 8
  %18 = getelementptr inbounds %struct.torus, %struct.torus* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %11, align 4
  %21 = load %struct.torus*, %struct.torus** %4, align 8
  %22 = getelementptr inbounds %struct.torus, %struct.torus* %21, i32 0, i32 2
  %23 = load %struct.t_switch****, %struct.t_switch***** %22, align 8
  store %struct.t_switch**** %23, %struct.t_switch***** %12, align 8
  %24 = load %struct.torus*, %struct.torus** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @good_xy_ring(%struct.torus* %24, i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %2
  %31 = load %struct.t_switch****, %struct.t_switch***** %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %31, i64 %33
  %35 = load %struct.t_switch***, %struct.t_switch**** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %35, i64 %37
  %39 = load %struct.t_switch**, %struct.t_switch*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %39, i64 %41
  %43 = load %struct.t_switch*, %struct.t_switch** %42, align 8
  store %struct.t_switch* %43, %struct.t_switch** %3, align 8
  br label %132

44:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %126, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp sle i32 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %131

55:                                               ; preds = %53
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load %struct.torus*, %struct.torus** %4, align 8
  %60 = getelementptr inbounds %struct.torus, %struct.torus* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @canonicalize(i32 %58, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load %struct.torus*, %struct.torus** %4, align 8
  %67 = getelementptr inbounds %struct.torus, %struct.torus* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @canonicalize(i32 %65, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.torus*, %struct.torus** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @good_xy_ring(%struct.torus* %70, i32 %71, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %55
  %77 = load %struct.t_switch****, %struct.t_switch***** %12, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %77, i64 %79
  %81 = load %struct.t_switch***, %struct.t_switch**** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %81, i64 %83
  %85 = load %struct.t_switch**, %struct.t_switch*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %85, i64 %87
  %89 = load %struct.t_switch*, %struct.t_switch** %88, align 8
  store %struct.t_switch* %89, %struct.t_switch** %3, align 8
  br label %132

90:                                               ; preds = %55
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %91, %92
  %94 = load %struct.torus*, %struct.torus** %4, align 8
  %95 = getelementptr inbounds %struct.torus, %struct.torus* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @canonicalize(i32 %93, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %98, %99
  %101 = load %struct.torus*, %struct.torus** %4, align 8
  %102 = getelementptr inbounds %struct.torus, %struct.torus* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @canonicalize(i32 %100, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.torus*, %struct.torus** %4, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i64 @good_xy_ring(%struct.torus* %105, i32 %106, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %90
  %112 = load %struct.t_switch****, %struct.t_switch***** %12, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %112, i64 %114
  %116 = load %struct.t_switch***, %struct.t_switch**** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %116, i64 %118
  %120 = load %struct.t_switch**, %struct.t_switch*** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %120, i64 %122
  %124 = load %struct.t_switch*, %struct.t_switch** %123, align 8
  store %struct.t_switch* %124, %struct.t_switch** %3, align 8
  br label %132

125:                                              ; preds = %90
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %45

131:                                              ; preds = %53
  store %struct.t_switch* null, %struct.t_switch** %3, align 8
  br label %132

132:                                              ; preds = %131, %111, %76, %30
  %133 = load %struct.t_switch*, %struct.t_switch** %3, align 8
  ret %struct.t_switch* %133
}

declare dso_local i64 @good_xy_ring(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @canonicalize(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
