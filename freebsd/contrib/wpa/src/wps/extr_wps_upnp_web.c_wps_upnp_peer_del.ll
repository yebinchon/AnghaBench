; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_wps_upnp_peer_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_wps_upnp_peer_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_peer = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upnp_wps_peer*)* @wps_upnp_peer_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_upnp_peer_del(%struct.upnp_wps_peer* %0) #0 {
  %2 = alloca %struct.upnp_wps_peer*, align 8
  store %struct.upnp_wps_peer* %0, %struct.upnp_wps_peer** %2, align 8
  %3 = load %struct.upnp_wps_peer*, %struct.upnp_wps_peer** %2, align 8
  %4 = getelementptr inbounds %struct.upnp_wps_peer, %struct.upnp_wps_peer* %3, i32 0, i32 1
  %5 = call i32 @dl_list_del(i32* %4)
  %6 = load %struct.upnp_wps_peer*, %struct.upnp_wps_peer** %2, align 8
  %7 = getelementptr inbounds %struct.upnp_wps_peer, %struct.upnp_wps_peer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.upnp_wps_peer*, %struct.upnp_wps_peer** %2, align 8
  %12 = getelementptr inbounds %struct.upnp_wps_peer, %struct.upnp_wps_peer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @wps_deinit(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.upnp_wps_peer*, %struct.upnp_wps_peer** %2, align 8
  %17 = call i32 @os_free(%struct.upnp_wps_peer* %16)
  ret void
}

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i32 @wps_deinit(i64) #1

declare dso_local i32 @os_free(%struct.upnp_wps_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
