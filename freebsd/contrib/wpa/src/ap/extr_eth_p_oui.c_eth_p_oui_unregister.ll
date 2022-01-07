; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_eth_p_oui.c_eth_p_oui_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_eth_p_oui.c_eth_p_oui_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth_p_oui_ctx = type { i32, i32, i32, %struct.eth_p_oui_ctx* }
%struct.eth_p_oui_iface = type { i32, i32, i32, %struct.eth_p_oui_iface* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eth_p_oui_unregister(%struct.eth_p_oui_ctx* %0) #0 {
  %2 = alloca %struct.eth_p_oui_ctx*, align 8
  %3 = alloca %struct.eth_p_oui_iface*, align 8
  store %struct.eth_p_oui_ctx* %0, %struct.eth_p_oui_ctx** %2, align 8
  %4 = load %struct.eth_p_oui_ctx*, %struct.eth_p_oui_ctx** %2, align 8
  %5 = icmp ne %struct.eth_p_oui_ctx* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  %8 = load %struct.eth_p_oui_ctx*, %struct.eth_p_oui_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.eth_p_oui_ctx, %struct.eth_p_oui_ctx* %8, i32 0, i32 3
  %10 = load %struct.eth_p_oui_ctx*, %struct.eth_p_oui_ctx** %9, align 8
  %11 = bitcast %struct.eth_p_oui_ctx* %10 to %struct.eth_p_oui_iface*
  store %struct.eth_p_oui_iface* %11, %struct.eth_p_oui_iface** %3, align 8
  %12 = load %struct.eth_p_oui_ctx*, %struct.eth_p_oui_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.eth_p_oui_ctx, %struct.eth_p_oui_ctx* %12, i32 0, i32 1
  %14 = call i32 @dl_list_del(i32* %13)
  %15 = load %struct.eth_p_oui_ctx*, %struct.eth_p_oui_ctx** %2, align 8
  %16 = bitcast %struct.eth_p_oui_ctx* %15 to %struct.eth_p_oui_iface*
  %17 = call i32 @os_free(%struct.eth_p_oui_iface* %16)
  %18 = load %struct.eth_p_oui_iface*, %struct.eth_p_oui_iface** %3, align 8
  %19 = getelementptr inbounds %struct.eth_p_oui_iface, %struct.eth_p_oui_iface* %18, i32 0, i32 2
  %20 = call i64 @dl_list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %7
  %23 = load %struct.eth_p_oui_iface*, %struct.eth_p_oui_iface** %3, align 8
  %24 = getelementptr inbounds %struct.eth_p_oui_iface, %struct.eth_p_oui_iface* %23, i32 0, i32 1
  %25 = call i32 @dl_list_del(i32* %24)
  %26 = load %struct.eth_p_oui_iface*, %struct.eth_p_oui_iface** %3, align 8
  %27 = getelementptr inbounds %struct.eth_p_oui_iface, %struct.eth_p_oui_iface* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @l2_packet_deinit(i32 %28)
  %30 = load %struct.eth_p_oui_iface*, %struct.eth_p_oui_iface** %3, align 8
  %31 = call i32 @os_free(%struct.eth_p_oui_iface* %30)
  br label %32

32:                                               ; preds = %6, %22, %7
  ret void
}

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i32 @os_free(%struct.eth_p_oui_iface*) #1

declare dso_local i64 @dl_list_empty(i32*) #1

declare dso_local i32 @l2_packet_deinit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
