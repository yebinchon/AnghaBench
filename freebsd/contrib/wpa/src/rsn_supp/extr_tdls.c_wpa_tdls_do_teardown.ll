; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_do_teardown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_do_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32 }
%struct.wpa_tdls_peer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, %struct.wpa_tdls_peer*, i32)* @wpa_tdls_do_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_tdls_do_teardown(%struct.wpa_sm* %0, %struct.wpa_tdls_peer* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca %struct.wpa_tdls_peer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_peer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %9 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @wpa_tdls_send_teardown(%struct.wpa_sm* %8, i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %15 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %16 = call i32 @wpa_tdls_disable_peer_link(%struct.wpa_sm* %14, %struct.wpa_tdls_peer* %15)
  %17 = load i32, i32* %7, align 4
  ret i32 %17
}

declare dso_local i32 @wpa_tdls_send_teardown(%struct.wpa_sm*, i32, i32) #1

declare dso_local i32 @wpa_tdls_disable_peer_link(%struct.wpa_sm*, %struct.wpa_tdls_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
