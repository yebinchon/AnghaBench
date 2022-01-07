; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_free_pending_msgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_free_pending_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_pending_message = type { i32, %struct.upnp_pending_message* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_free_pending_msgs(%struct.upnp_pending_message* %0) #0 {
  %2 = alloca %struct.upnp_pending_message*, align 8
  %3 = alloca %struct.upnp_pending_message*, align 8
  %4 = alloca %struct.upnp_pending_message*, align 8
  store %struct.upnp_pending_message* %0, %struct.upnp_pending_message** %2, align 8
  %5 = load %struct.upnp_pending_message*, %struct.upnp_pending_message** %2, align 8
  store %struct.upnp_pending_message* %5, %struct.upnp_pending_message** %3, align 8
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.upnp_pending_message*, %struct.upnp_pending_message** %3, align 8
  %8 = icmp ne %struct.upnp_pending_message* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.upnp_pending_message*, %struct.upnp_pending_message** %3, align 8
  store %struct.upnp_pending_message* %10, %struct.upnp_pending_message** %4, align 8
  %11 = load %struct.upnp_pending_message*, %struct.upnp_pending_message** %3, align 8
  %12 = getelementptr inbounds %struct.upnp_pending_message, %struct.upnp_pending_message* %11, i32 0, i32 1
  %13 = load %struct.upnp_pending_message*, %struct.upnp_pending_message** %12, align 8
  store %struct.upnp_pending_message* %13, %struct.upnp_pending_message** %3, align 8
  %14 = load %struct.upnp_pending_message*, %struct.upnp_pending_message** %4, align 8
  %15 = getelementptr inbounds %struct.upnp_pending_message, %struct.upnp_pending_message* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @wpabuf_free(i32 %16)
  %18 = load %struct.upnp_pending_message*, %struct.upnp_pending_message** %4, align 8
  %19 = call i32 @os_free(%struct.upnp_pending_message* %18)
  br label %6

20:                                               ; preds = %6
  ret void
}

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @os_free(%struct.upnp_pending_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
