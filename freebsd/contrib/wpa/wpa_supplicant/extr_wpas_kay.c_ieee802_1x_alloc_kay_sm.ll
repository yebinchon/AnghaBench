; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_kay.c_ieee802_1x_alloc_kay_sm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_kay.c_ieee802_1x_alloc_kay_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.ieee802_1x_kay*, i32, i32 }
%struct.ieee802_1x_kay = type { i32 }
%struct.wpa_ssid = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee802_1x_kay_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.wpa_supplicant* }

@SHOULD_SECURE = common dso_local global i32 0, align 4
@SHOULD_ENCRYPT = common dso_local global i32 0, align 4
@DO_NOT_SECURE = common dso_local global i32 0, align 4
@wpas_macsec_init = common dso_local global i32 0, align 4
@wpas_macsec_deinit = common dso_local global i32 0, align 4
@wpas_macsec_get_capability = common dso_local global i32 0, align 4
@wpas_enable_protect_frames = common dso_local global i32 0, align 4
@wpas_enable_encrypt = common dso_local global i32 0, align 4
@wpas_set_replay_protect = common dso_local global i32 0, align 4
@wpas_set_current_cipher_suite = common dso_local global i32 0, align 4
@wpas_enable_controlled_port = common dso_local global i32 0, align 4
@wpas_get_receive_lowest_pn = common dso_local global i32 0, align 4
@wpas_get_transmit_next_pn = common dso_local global i32 0, align 4
@wpas_set_transmit_next_pn = common dso_local global i32 0, align 4
@wpas_set_receive_lowest_pn = common dso_local global i32 0, align 4
@wpas_create_receive_sc = common dso_local global i32 0, align 4
@wpas_delete_receive_sc = common dso_local global i32 0, align 4
@wpas_create_receive_sa = common dso_local global i32 0, align 4
@wpas_delete_receive_sa = common dso_local global i32 0, align 4
@wpas_enable_receive_sa = common dso_local global i32 0, align 4
@wpas_disable_receive_sa = common dso_local global i32 0, align 4
@wpas_create_transmit_sc = common dso_local global i32 0, align 4
@wpas_delete_transmit_sc = common dso_local global i32 0, align 4
@wpas_create_transmit_sa = common dso_local global i32 0, align 4
@wpas_delete_transmit_sa = common dso_local global i32 0, align 4
@wpas_enable_transmit_sa = common dso_local global i32 0, align 4
@wpas_disable_transmit_sa = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_1x_alloc_kay_sm(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.ieee802_1x_kay_ctx*, align 8
  %7 = alloca %struct.ieee802_1x_kay*, align 8
  %8 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  store %struct.ieee802_1x_kay* null, %struct.ieee802_1x_kay** %7, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %10 = call i32 @ieee802_1x_dealloc_kay_sm(%struct.wpa_supplicant* %9)
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %12 = icmp ne %struct.wpa_ssid* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %145

19:                                               ; preds = %13
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @SHOULD_SECURE, align 4
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @SHOULD_ENCRYPT, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %29
  br label %36

34:                                               ; preds = %19
  %35 = load i32, i32* @DO_NOT_SECURE, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = call %struct.ieee802_1x_kay_ctx* @os_zalloc(i32 104)
  store %struct.ieee802_1x_kay_ctx* %37, %struct.ieee802_1x_kay_ctx** %6, align 8
  %38 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %39 = icmp ne %struct.ieee802_1x_kay_ctx* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %145

41:                                               ; preds = %36
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %43 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %43, i32 0, i32 24
  store %struct.wpa_supplicant* %42, %struct.wpa_supplicant** %44, align 8
  %45 = load i32, i32* @wpas_macsec_init, align 4
  %46 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %46, i32 0, i32 23
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @wpas_macsec_deinit, align 4
  %49 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %49, i32 0, i32 22
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @wpas_macsec_get_capability, align 4
  %52 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %52, i32 0, i32 21
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @wpas_enable_protect_frames, align 4
  %55 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %55, i32 0, i32 20
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @wpas_enable_encrypt, align 4
  %58 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %58, i32 0, i32 19
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @wpas_set_replay_protect, align 4
  %61 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %61, i32 0, i32 18
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @wpas_set_current_cipher_suite, align 4
  %64 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %64, i32 0, i32 17
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @wpas_enable_controlled_port, align 4
  %67 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %67, i32 0, i32 16
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @wpas_get_receive_lowest_pn, align 4
  %70 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %70, i32 0, i32 15
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @wpas_get_transmit_next_pn, align 4
  %73 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %74 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %73, i32 0, i32 14
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @wpas_set_transmit_next_pn, align 4
  %76 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %77 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %76, i32 0, i32 13
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @wpas_set_receive_lowest_pn, align 4
  %79 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %79, i32 0, i32 12
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @wpas_create_receive_sc, align 4
  %82 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %82, i32 0, i32 11
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @wpas_delete_receive_sc, align 4
  %85 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %86 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @wpas_create_receive_sa, align 4
  %88 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %89 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @wpas_delete_receive_sa, align 4
  %91 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %92 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @wpas_enable_receive_sa, align 4
  %94 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %95 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @wpas_disable_receive_sa, align 4
  %97 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %98 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @wpas_create_transmit_sc, align 4
  %100 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %101 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @wpas_delete_transmit_sc, align 4
  %103 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %104 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @wpas_create_transmit_sa, align 4
  %106 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %107 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @wpas_delete_transmit_sa, align 4
  %109 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @wpas_enable_transmit_sa, align 4
  %112 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %113 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @wpas_disable_transmit_sa, align 4
  %115 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %116 = getelementptr inbounds %struct.ieee802_1x_kay_ctx, %struct.ieee802_1x_kay_ctx* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ieee802_1x_kay_ctx*, %struct.ieee802_1x_kay_ctx** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %120 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %123 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %126 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %129 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %132 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %135 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call %struct.ieee802_1x_kay* @ieee802_1x_kay_init(%struct.ieee802_1x_kay_ctx* %117, i32 %118, i32 %121, i32 %124, i32 %127, i32 %130, i32 %133, i32 %136)
  store %struct.ieee802_1x_kay* %137, %struct.ieee802_1x_kay** %7, align 8
  %138 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %139 = icmp eq %struct.ieee802_1x_kay* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %145

141:                                              ; preds = %41
  %142 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %7, align 8
  %143 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %144 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %143, i32 0, i32 0
  store %struct.ieee802_1x_kay* %142, %struct.ieee802_1x_kay** %144, align 8
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %141, %140, %40, %18
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @ieee802_1x_dealloc_kay_sm(%struct.wpa_supplicant*) #1

declare dso_local %struct.ieee802_1x_kay_ctx* @os_zalloc(i32) #1

declare dso_local %struct.ieee802_1x_kay* @ieee802_1x_kay_init(%struct.ieee802_1x_kay_ctx*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
