; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_install_tswitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_install_tswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { %struct.t_switch**** }
%struct.t_switch = type { i32, i32, i32 }
%struct.f_switch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32, i32, i32, %struct.f_switch*)* @install_tswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_tswitch(%struct.torus* %0, i32 %1, i32 %2, i32 %3, %struct.f_switch* %4) #0 {
  %6 = alloca %struct.torus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.f_switch*, align 8
  %11 = alloca %struct.t_switch**, align 8
  store %struct.torus* %0, %struct.torus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.f_switch* %4, %struct.f_switch** %10, align 8
  %12 = load %struct.torus*, %struct.torus** %6, align 8
  %13 = getelementptr inbounds %struct.torus, %struct.torus* %12, i32 0, i32 0
  %14 = load %struct.t_switch****, %struct.t_switch***** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.t_switch***, %struct.t_switch**** %14, i64 %16
  %18 = load %struct.t_switch***, %struct.t_switch**** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.t_switch**, %struct.t_switch*** %18, i64 %20
  %22 = load %struct.t_switch**, %struct.t_switch*** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.t_switch*, %struct.t_switch** %22, i64 %24
  store %struct.t_switch** %25, %struct.t_switch*** %11, align 8
  %26 = load %struct.t_switch**, %struct.t_switch*** %11, align 8
  %27 = load %struct.t_switch*, %struct.t_switch** %26, align 8
  %28 = icmp ne %struct.t_switch* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = load %struct.torus*, %struct.torus** %6, align 8
  %31 = load %struct.f_switch*, %struct.f_switch** %10, align 8
  %32 = call %struct.t_switch* @alloc_tswitch(%struct.torus* %30, %struct.f_switch* %31)
  %33 = load %struct.t_switch**, %struct.t_switch*** %11, align 8
  store %struct.t_switch* %32, %struct.t_switch** %33, align 8
  br label %34

34:                                               ; preds = %29, %5
  %35 = load %struct.t_switch**, %struct.t_switch*** %11, align 8
  %36 = load %struct.t_switch*, %struct.t_switch** %35, align 8
  %37 = icmp ne %struct.t_switch* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.t_switch**, %struct.t_switch*** %11, align 8
  %41 = load %struct.t_switch*, %struct.t_switch** %40, align 8
  %42 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.t_switch**, %struct.t_switch*** %11, align 8
  %45 = load %struct.t_switch*, %struct.t_switch** %44, align 8
  %46 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.t_switch**, %struct.t_switch*** %11, align 8
  %49 = load %struct.t_switch*, %struct.t_switch** %48, align 8
  %50 = getelementptr inbounds %struct.t_switch, %struct.t_switch* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %38, %34
  %52 = load %struct.t_switch**, %struct.t_switch*** %11, align 8
  %53 = load %struct.t_switch*, %struct.t_switch** %52, align 8
  %54 = icmp ne %struct.t_switch* %53, null
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  ret i32 %57
}

declare dso_local %struct.t_switch* @alloc_tswitch(%struct.torus*, %struct.f_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
