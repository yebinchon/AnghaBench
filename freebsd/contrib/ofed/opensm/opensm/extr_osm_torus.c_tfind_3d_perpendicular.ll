; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_tfind_3d_perpendicular.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_tfind_3d_perpendicular.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_switch = type { i32 }
%struct.t_switch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f_switch* (%struct.t_switch*, %struct.t_switch*, %struct.t_switch*, %struct.t_switch*)* @tfind_3d_perpendicular to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f_switch* @tfind_3d_perpendicular(%struct.t_switch* %0, %struct.t_switch* %1, %struct.t_switch* %2, %struct.t_switch* %3) #0 {
  %5 = alloca %struct.f_switch*, align 8
  %6 = alloca %struct.t_switch*, align 8
  %7 = alloca %struct.t_switch*, align 8
  %8 = alloca %struct.t_switch*, align 8
  %9 = alloca %struct.t_switch*, align 8
  store %struct.t_switch* %0, %struct.t_switch** %6, align 8
  store %struct.t_switch* %1, %struct.t_switch** %7, align 8
  store %struct.t_switch* %2, %struct.t_switch** %8, align 8
  store %struct.t_switch* %3, %struct.t_switch** %9, align 8
  %10 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %11 = icmp ne %struct.t_switch* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %14 = icmp ne %struct.t_switch* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %17 = icmp ne %struct.t_switch* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.t_switch*, %struct.t_switch** %9, align 8
  %20 = icmp ne %struct.t_switch* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %15, %12, %4
  store %struct.f_switch* null, %struct.f_switch** %5, align 8
  br label %36

22:                                               ; preds = %18
  %23 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %24 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %27 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.t_switch*, %struct.t_switch** %8, align 8
  %30 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.t_switch*, %struct.t_switch** %9, align 8
  %33 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.f_switch* @ffind_3d_perpendicular(i32 %25, i32 %28, i32 %31, i32 %34)
  store %struct.f_switch* %35, %struct.f_switch** %5, align 8
  br label %36

36:                                               ; preds = %22, %21
  %37 = load %struct.f_switch*, %struct.f_switch** %5, align 8
  ret %struct.f_switch* %37
}

declare dso_local %struct.f_switch* @ffind_3d_perpendicular(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
