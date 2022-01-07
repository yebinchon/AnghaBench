; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_next_hop_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_next_hop_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { %struct.t_switch**** }
%struct.t_switch = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32, %struct.t_switch*, %struct.t_switch*, i32*)* @next_hop_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_hop_path(%struct.torus* %0, i32 %1, %struct.t_switch* %2, %struct.t_switch* %3, i32* %4) #0 {
  %6 = alloca %struct.torus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.t_switch*, align 8
  %9 = alloca %struct.t_switch*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.t_switch*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.t_switch* %2, %struct.t_switch** %8, align 8
  store %struct.t_switch* %3, %struct.t_switch** %9, align 8
  store i32* %4, i32** %10, align 8
  store %struct.t_switch* null, %struct.t_switch** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %72 [
    i32 0, label %15
    i32 1, label %34
    i32 2, label %53
  ]

15:                                               ; preds = %5
  %16 = load %struct.torus*, %struct.torus** %6, align 8
  %17 = getelementptr inbounds %struct.torus, %struct.torus* %16, i32 0, i32 0
  %18 = load %struct.t_switch****, %struct.t_switch***** %17, align 8
  %19 = load %struct.t_switch*, %struct.t_switch** %9, align 8
  %20 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %18, i64 %21
  %23 = load %struct.t_switch***, %struct.t_switch**** %22, align 8
  %24 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %25 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %23, i64 %26
  %28 = load %struct.t_switch**, %struct.t_switch*** %27, align 8
  %29 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %30 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %28, i64 %31
  %33 = load %struct.t_switch*, %struct.t_switch** %32, align 8
  store %struct.t_switch* %33, %struct.t_switch** %11, align 8
  br label %73

34:                                               ; preds = %5
  %35 = load %struct.torus*, %struct.torus** %6, align 8
  %36 = getelementptr inbounds %struct.torus, %struct.torus* %35, i32 0, i32 0
  %37 = load %struct.t_switch****, %struct.t_switch***** %36, align 8
  %38 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %39 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %37, i64 %40
  %42 = load %struct.t_switch***, %struct.t_switch**** %41, align 8
  %43 = load %struct.t_switch*, %struct.t_switch** %9, align 8
  %44 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %42, i64 %45
  %47 = load %struct.t_switch**, %struct.t_switch*** %46, align 8
  %48 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %49 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %47, i64 %50
  %52 = load %struct.t_switch*, %struct.t_switch** %51, align 8
  store %struct.t_switch* %52, %struct.t_switch** %11, align 8
  br label %73

53:                                               ; preds = %5
  %54 = load %struct.torus*, %struct.torus** %6, align 8
  %55 = getelementptr inbounds %struct.torus, %struct.torus* %54, i32 0, i32 0
  %56 = load %struct.t_switch****, %struct.t_switch***** %55, align 8
  %57 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %58 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %56, i64 %59
  %61 = load %struct.t_switch***, %struct.t_switch**** %60, align 8
  %62 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %63 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %61, i64 %64
  %66 = load %struct.t_switch**, %struct.t_switch*** %65, align 8
  %67 = load %struct.t_switch*, %struct.t_switch** %9, align 8
  %68 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %66, i64 %69
  %71 = load %struct.t_switch*, %struct.t_switch** %70, align 8
  store %struct.t_switch* %71, %struct.t_switch** %11, align 8
  br label %73

72:                                               ; preds = %5
  br label %100

73:                                               ; preds = %53, %34, %15
  %74 = load %struct.t_switch*, %struct.t_switch** %11, align 8
  %75 = icmp ne %struct.t_switch* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load %struct.torus*, %struct.torus** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %80 = load %struct.t_switch*, %struct.t_switch** %11, align 8
  %81 = call i32 @ring_dir_path(%struct.torus* %77, i32 %78, %struct.t_switch* %79, %struct.t_switch* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %7, align 4
  %83 = mul i32 %82, 2
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, 1
  %89 = load i32*, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  br label %98

90:                                               ; preds = %76
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  br label %97

96:                                               ; preds = %90
  br label %100

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97, %86
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %73
  br label %100

100:                                              ; preds = %99, %96, %72
  %101 = load i32, i32* %12, align 4
  ret i32 %101
}

declare dso_local i32 @ring_dir_path(%struct.torus*, i32, %struct.t_switch*, %struct.t_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
