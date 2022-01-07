; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_next_hop_y.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_next_hop_y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i64*** }
%struct.t_switch = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, %struct.t_switch*, %struct.t_switch*, i32*)* @next_hop_y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_hop_y(%struct.torus* %0, %struct.t_switch* %1, %struct.t_switch* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.torus*, align 8
  %7 = alloca %struct.t_switch*, align 8
  %8 = alloca %struct.t_switch*, align 8
  %9 = alloca i32*, align 8
  store %struct.torus* %0, %struct.torus** %6, align 8
  store %struct.t_switch* %1, %struct.t_switch** %7, align 8
  store %struct.t_switch* %2, %struct.t_switch** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.torus*, %struct.torus** %6, align 8
  %11 = getelementptr inbounds %struct.torus, %struct.torus* %10, i32 0, i32 0
  %12 = load i64***, i64**** %11, align 8
  %13 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %14 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i64**, i64*** %12, i64 %15
  %17 = load i64**, i64*** %16, align 8
  %18 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %19 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64*, i64** %17, i64 %20
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %24 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load %struct.torus*, %struct.torus** %6, align 8
  %31 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %32 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @next_hop_path(%struct.torus* %30, i32 1, %struct.t_switch* %31, %struct.t_switch* %32, i32* %33)
  store i32 %34, i32* %5, align 4
  br label %41

35:                                               ; preds = %4
  %36 = load %struct.torus*, %struct.torus** %6, align 8
  %37 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %38 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @next_hop_idx(%struct.torus* %36, i32 1, %struct.t_switch* %37, %struct.t_switch* %38, i32* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @next_hop_path(%struct.torus*, i32, %struct.t_switch*, %struct.t_switch*, i32*) #1

declare dso_local i32 @next_hop_idx(%struct.torus*, i32, %struct.t_switch*, %struct.t_switch*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
