; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_preauth_test.c_test_eapol_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_preauth_test.c_test_eapol_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @test_eapol_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_eapol_clean(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @rsn_preauth_deinit(i32 %5)
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pmksa_candidate_free(i32 %9)
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wpa_sm_deinit(i32 %13)
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @scard_deinit(i32 %17)
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @wpa_supplicant_ctrl_iface_deinit(i32* %26)
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @wpa_config_free(i32 %33)
  ret void
}

declare dso_local i32 @rsn_preauth_deinit(i32) #1

declare dso_local i32 @pmksa_candidate_free(i32) #1

declare dso_local i32 @wpa_sm_deinit(i32) #1

declare dso_local i32 @scard_deinit(i32) #1

declare dso_local i32 @wpa_supplicant_ctrl_iface_deinit(i32*) #1

declare dso_local i32 @wpa_config_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
