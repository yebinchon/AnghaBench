; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_ring_dir_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_ring_dir_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32, i32, i32 }
%struct.t_switch = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32, %struct.t_switch*, %struct.t_switch*)* @ring_dir_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_dir_path(%struct.torus* %0, i32 %1, %struct.t_switch* %2, %struct.t_switch* %3) #0 {
  %5 = alloca %struct.torus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.t_switch*, align 8
  %8 = alloca %struct.t_switch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.t_switch*, align 8
  store %struct.torus* %0, %struct.torus** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.t_switch* %2, %struct.t_switch** %7, align 8
  store %struct.t_switch* %3, %struct.t_switch** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %45 [
    i32 0, label %12
    i32 1, label %23
    i32 2, label %34
  ]

12:                                               ; preds = %4
  %13 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %14 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %17 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.torus*, %struct.torus** %5, align 8
  %20 = getelementptr inbounds %struct.torus, %struct.torus* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ring_dir_idx(i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %9, align 4
  br label %46

23:                                               ; preds = %4
  %24 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %25 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %28 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.torus*, %struct.torus** %5, align 8
  %31 = getelementptr inbounds %struct.torus, %struct.torus* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ring_dir_idx(i32 %26, i32 %29, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %46

34:                                               ; preds = %4
  %35 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %36 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %39 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.torus*, %struct.torus** %5, align 8
  %42 = getelementptr inbounds %struct.torus, %struct.torus* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ring_dir_idx(i32 %37, i32 %40, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %46

45:                                               ; preds = %4
  br label %46

46:                                               ; preds = %45, %34, %23, %12
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %83

50:                                               ; preds = %46
  %51 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  store %struct.t_switch* %51, %struct.t_switch** %10, align 8
  br label %52

52:                                               ; preds = %64, %50
  %53 = load %struct.t_switch*, %struct.t_switch** %10, align 8
  %54 = icmp ne %struct.t_switch* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.t_switch*, %struct.t_switch** %10, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.t_switch* @ring_next_sw(%struct.t_switch* %56, i32 %57, i32 %58)
  store %struct.t_switch* %59, %struct.t_switch** %10, align 8
  %60 = load %struct.t_switch*, %struct.t_switch** %10, align 8
  %61 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %62 = icmp eq %struct.t_switch* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %83

64:                                               ; preds = %55
  br label %52

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, -1
  store i32 %67, i32* %9, align 4
  %68 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  store %struct.t_switch* %68, %struct.t_switch** %10, align 8
  br label %69

69:                                               ; preds = %81, %65
  %70 = load %struct.t_switch*, %struct.t_switch** %10, align 8
  %71 = icmp ne %struct.t_switch* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.t_switch*, %struct.t_switch** %10, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.t_switch* @ring_next_sw(%struct.t_switch* %73, i32 %74, i32 %75)
  store %struct.t_switch* %76, %struct.t_switch** %10, align 8
  %77 = load %struct.t_switch*, %struct.t_switch** %10, align 8
  %78 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %79 = icmp eq %struct.t_switch* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %83

81:                                               ; preds = %72
  br label %69

82:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %80, %63, %49
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @ring_dir_idx(i32, i32, i32) #1

declare dso_local %struct.t_switch* @ring_next_sw(%struct.t_switch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
