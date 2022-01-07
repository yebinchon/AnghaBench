; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_mesh_rsn_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_mesh_rsn_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_rsn = type { i64, i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mesh_rsn*)* @mesh_rsn_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_rsn_deinit(%struct.mesh_rsn* %0) #0 {
  %2 = alloca %struct.mesh_rsn*, align 8
  store %struct.mesh_rsn* %0, %struct.mesh_rsn** %2, align 8
  %3 = load %struct.mesh_rsn*, %struct.mesh_rsn** %2, align 8
  %4 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @os_memset(i32 %5, i32 0, i32 4)
  %7 = load %struct.mesh_rsn*, %struct.mesh_rsn** %2, align 8
  %8 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.mesh_rsn*, %struct.mesh_rsn** %2, align 8
  %10 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @os_memset(i32 %11, i32 0, i32 4)
  %13 = load %struct.mesh_rsn*, %struct.mesh_rsn** %2, align 8
  %14 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.mesh_rsn*, %struct.mesh_rsn** %2, align 8
  %16 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.mesh_rsn*, %struct.mesh_rsn** %2, align 8
  %21 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @wpa_deinit(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @wpa_deinit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
