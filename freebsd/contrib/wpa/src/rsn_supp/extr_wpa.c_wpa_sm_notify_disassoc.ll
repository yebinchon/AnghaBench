; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_notify_disassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_notify_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i64, i64, i64, i64, i32 }

@wpa_sm_start_preauth = common dso_local global i32 0, align 4
@wpa_sm_rekey_ptk = common dso_local global i32 0, align 4
@WPA_4WAY_HANDSHAKE = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_notify_disassoc(%struct.wpa_sm* %0) #0 {
  %2 = alloca %struct.wpa_sm*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %2, align 8
  %3 = load i32, i32* @wpa_sm_start_preauth, align 4
  %4 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %5 = call i32 @eloop_cancel_timeout(i32 %3, %struct.wpa_sm* %4, i32* null)
  %6 = load i32, i32* @wpa_sm_rekey_ptk, align 4
  %7 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %8 = call i32 @eloop_cancel_timeout(i32 %6, %struct.wpa_sm* %7, i32* null)
  %9 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %10 = call i32 @rsn_preauth_deinit(%struct.wpa_sm* %9)
  %11 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %12 = call i32 @pmksa_cache_clear_current(%struct.wpa_sm* %11)
  %13 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %14 = call i64 @wpa_sm_get_state(%struct.wpa_sm* %13)
  %15 = load i64, i64* @WPA_4WAY_HANDSHAKE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %19 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %24 = call i32 @wpa_sm_drop_sa(%struct.wpa_sm* %23)
  %25 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %26 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %28 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i32 @os_memset(i32 %29, i32 0, i32 %30)
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_sm*, i32*) #1

declare dso_local i32 @rsn_preauth_deinit(%struct.wpa_sm*) #1

declare dso_local i32 @pmksa_cache_clear_current(%struct.wpa_sm*) #1

declare dso_local i64 @wpa_sm_get_state(%struct.wpa_sm*) #1

declare dso_local i32 @wpa_sm_drop_sa(%struct.wpa_sm*) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
