; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_add_cand_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_add_cand_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.wpa_bss**, i32, %struct.wpa_ssid* }
%struct.wpa_bss = type { i32 }
%struct.wpa_ssid = type { i32 }
%struct.wpabuf = type { i32 }
%struct.os_reltime = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"WNM: Add candidate list to BSS Transition Management Response frame\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"WNM: BSS Transition Management Response candidate list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpabuf**)* @wnm_add_cand_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wnm_add_cand_list(%struct.wpa_supplicant* %0, %struct.wpabuf** %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpabuf**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.os_reltime, align 4
  %8 = alloca %struct.wpa_ssid*, align 8
  %9 = alloca %struct.wpa_bss*, align 8
  %10 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpabuf** %1, %struct.wpabuf*** %4, align 8
  store i32 255, i32* %6, align 4
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 3
  %13 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  store %struct.wpa_ssid* %13, %struct.wpa_ssid** %8, align 8
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %15 = icmp ne %struct.wpa_ssid* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %80

17:                                               ; preds = %2
  %18 = call i32 @os_get_reltime(%struct.os_reltime* %7)
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 2
  %21 = call i64 @os_reltime_expired(%struct.os_reltime* %7, i32* %20, i32 10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %80

24:                                               ; preds = %17
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %72, %24
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi i1 [ false, %27 ], [ %35, %33 ]
  br i1 %37, label %38, label %75

38:                                               ; preds = %36
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 1
  %41 = load %struct.wpa_bss**, %struct.wpa_bss*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.wpa_bss*, %struct.wpa_bss** %41, i64 %43
  %45 = load %struct.wpa_bss*, %struct.wpa_bss** %44, align 8
  store %struct.wpa_bss* %45, %struct.wpa_bss** %9, align 8
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %49 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %50 = call i64 @wpa_scan_res_match(%struct.wpa_supplicant* %46, i32 %47, %struct.wpa_bss* %48, %struct.wpa_ssid* %49, i32 1, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %38
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %54 = load %struct.wpa_bss*, %struct.wpa_bss** %9, align 8
  %55 = load %struct.wpabuf**, %struct.wpabuf*** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* %6, align 4
  %58 = call i32 @wnm_nei_rep_add_bss(%struct.wpa_supplicant* %53, %struct.wpa_bss* %54, %struct.wpabuf** %55, i32 %56)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, -2
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %72

62:                                               ; preds = %52
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %75

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %75

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %38
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i32, i32* %5, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %27

75:                                               ; preds = %69, %65, %36
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = load %struct.wpabuf**, %struct.wpabuf*** %4, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %77, align 8
  %79 = call i32 @wpa_hexdump_buf(i32 %76, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.wpabuf* %78)
  br label %80

80:                                               ; preds = %75, %23, %16
  ret void
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i64 @os_reltime_expired(%struct.os_reltime*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wpa_scan_res_match(%struct.wpa_supplicant*, i32, %struct.wpa_bss*, %struct.wpa_ssid*, i32, i32) #1

declare dso_local i32 @wnm_nei_rep_add_bss(%struct.wpa_supplicant*, %struct.wpa_bss*, %struct.wpabuf**, i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
