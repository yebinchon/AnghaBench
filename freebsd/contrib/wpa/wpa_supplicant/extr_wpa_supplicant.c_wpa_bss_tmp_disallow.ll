; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_bss_tmp_disallow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_bss_tmp_disallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_bss_tmp_disallowed = type { i32, i32, i32 }

@wpa_bss_tmp_disallow_timeout = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to allocate memory for temp disallow BSS\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_bss_tmp_disallow(%struct.wpa_supplicant* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_bss_tmp_disallowed*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call %struct.wpa_bss_tmp_disallowed* @wpas_get_disallowed_bss(%struct.wpa_supplicant* %10, i32* %11)
  store %struct.wpa_bss_tmp_disallowed* %12, %struct.wpa_bss_tmp_disallowed** %9, align 8
  %13 = load %struct.wpa_bss_tmp_disallowed*, %struct.wpa_bss_tmp_disallowed** %9, align 8
  %14 = icmp ne %struct.wpa_bss_tmp_disallowed* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* @wpa_bss_tmp_disallow_timeout, align 4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %18 = load %struct.wpa_bss_tmp_disallowed*, %struct.wpa_bss_tmp_disallowed** %9, align 8
  %19 = call i32 @eloop_cancel_timeout(i32 %16, %struct.wpa_supplicant* %17, %struct.wpa_bss_tmp_disallowed* %18)
  br label %41

20:                                               ; preds = %4
  %21 = call %struct.wpa_bss_tmp_disallowed* @os_malloc(i32 12)
  store %struct.wpa_bss_tmp_disallowed* %21, %struct.wpa_bss_tmp_disallowed** %9, align 8
  %22 = load %struct.wpa_bss_tmp_disallowed*, %struct.wpa_bss_tmp_disallowed** %9, align 8
  %23 = icmp ne %struct.wpa_bss_tmp_disallowed* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %50

27:                                               ; preds = %20
  %28 = load %struct.wpa_bss_tmp_disallowed*, %struct.wpa_bss_tmp_disallowed** %9, align 8
  %29 = getelementptr inbounds %struct.wpa_bss_tmp_disallowed, %struct.wpa_bss_tmp_disallowed* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @os_memcpy(i32 %30, i32* %31, i32 %32)
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 0
  %36 = load %struct.wpa_bss_tmp_disallowed*, %struct.wpa_bss_tmp_disallowed** %9, align 8
  %37 = getelementptr inbounds %struct.wpa_bss_tmp_disallowed, %struct.wpa_bss_tmp_disallowed* %36, i32 0, i32 1
  %38 = call i32 @dl_list_add(i32* %35, i32* %37)
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %40 = call i32 @wpa_set_driver_tmp_disallow_list(%struct.wpa_supplicant* %39)
  br label %41

41:                                               ; preds = %27, %15
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.wpa_bss_tmp_disallowed*, %struct.wpa_bss_tmp_disallowed** %9, align 8
  %44 = getelementptr inbounds %struct.wpa_bss_tmp_disallowed, %struct.wpa_bss_tmp_disallowed* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @wpa_bss_tmp_disallow_timeout, align 4
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %48 = load %struct.wpa_bss_tmp_disallowed*, %struct.wpa_bss_tmp_disallowed** %9, align 8
  %49 = call i32 @eloop_register_timeout(i32 %45, i32 0, i32 %46, %struct.wpa_supplicant* %47, %struct.wpa_bss_tmp_disallowed* %48)
  br label %50

50:                                               ; preds = %41, %24
  ret void
}

declare dso_local %struct.wpa_bss_tmp_disallowed* @wpas_get_disallowed_bss(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, %struct.wpa_bss_tmp_disallowed*) #1

declare dso_local %struct.wpa_bss_tmp_disallowed* @os_malloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @wpa_set_driver_tmp_disallow_list(%struct.wpa_supplicant*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, %struct.wpa_bss_tmp_disallowed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
