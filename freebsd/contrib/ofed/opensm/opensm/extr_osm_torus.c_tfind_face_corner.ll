; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_tfind_face_corner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_tfind_face_corner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_switch = type { i32 }
%struct.t_switch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f_switch* (%struct.t_switch*, %struct.t_switch*, %struct.t_switch*)* @tfind_face_corner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f_switch* @tfind_face_corner(%struct.t_switch* %0, %struct.t_switch* %1, %struct.t_switch* %2) #0 {
  %4 = alloca %struct.f_switch*, align 8
  %5 = alloca %struct.t_switch*, align 8
  %6 = alloca %struct.t_switch*, align 8
  %7 = alloca %struct.t_switch*, align 8
  store %struct.t_switch* %0, %struct.t_switch** %5, align 8
  store %struct.t_switch* %1, %struct.t_switch** %6, align 8
  store %struct.t_switch* %2, %struct.t_switch** %7, align 8
  %8 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %9 = icmp ne %struct.t_switch* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %12 = icmp ne %struct.t_switch* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %15 = icmp ne %struct.t_switch* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10, %3
  store %struct.f_switch* null, %struct.f_switch** %4, align 8
  br label %28

17:                                               ; preds = %13
  %18 = load %struct.t_switch*, %struct.t_switch** %5, align 8
  %19 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.t_switch*, %struct.t_switch** %6, align 8
  %22 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.t_switch*, %struct.t_switch** %7, align 8
  %25 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.f_switch* @ffind_face_corner(i32 %20, i32 %23, i32 %26)
  store %struct.f_switch* %27, %struct.f_switch** %4, align 8
  br label %28

28:                                               ; preds = %17, %16
  %29 = load %struct.f_switch*, %struct.f_switch** %4, align 8
  ret %struct.f_switch* %29
}

declare dso_local %struct.f_switch* @ffind_face_corner(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
