; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_remove_stale_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_remove_stale_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { i64, i64, i32, i32*, i32, i32*, i32* }

@ETH_ALEN = common dso_local global i64 0, align 8
@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"P2P: Remove stale persistent group id=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*, i64)* @wpas_remove_stale_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_remove_stale_groups(i8* %0, i32* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wpa_supplicant*, align 8
  %12 = alloca %struct.wpa_ssid*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %16, %struct.wpa_supplicant** %11, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %136, %65, %5
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.wpa_ssid* @wpas_p2p_get_persistent(%struct.wpa_supplicant* %18, i32* %19, i32* null, i32 0)
  store %struct.wpa_ssid* %20, %struct.wpa_ssid** %12, align 8
  %21 = icmp ne %struct.wpa_ssid* %20, null
  br i1 %21, label %22, label %141

22:                                               ; preds = %17
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %22
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %33 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %40 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @ETH_ALEN, align 8
  %43 = call i64 @os_memcmp(i32* %38, i32* %41, i64 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %48 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @os_memcmp(i32* %46, i32* %49, i64 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %141

54:                                               ; preds = %45, %37, %31, %28, %25, %22
  %55 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %56 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %62 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp sle i32 %63, 1
  br i1 %64, label %65, label %82

65:                                               ; preds = %60, %54
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %69 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @wpa_dbg(%struct.wpa_supplicant* %66, i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %73 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %74 = call i32 @wpas_notify_persistent_group_removed(%struct.wpa_supplicant* %72, %struct.wpa_ssid* %73)
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %76 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %79 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @wpa_config_remove_network(i32 %77, i32 %80)
  store i32 1, i32* %13, align 4
  br label %17

82:                                               ; preds = %60
  store i64 0, i64* %14, align 8
  br label %83

83:                                               ; preds = %133, %82
  %84 = load i64, i64* %14, align 8
  %85 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %86 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %84, %88
  br i1 %89, label %90, label %136

90:                                               ; preds = %83
  %91 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %92 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %14, align 8
  %95 = mul i64 %94, 2
  %96 = load i64, i64* @ETH_ALEN, align 8
  %97 = mul i64 %95, %96
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32*, i32** %7, align 8
  %100 = load i64, i64* @ETH_ALEN, align 8
  %101 = call i64 @os_memcmp(i32* %98, i32* %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %133

104:                                              ; preds = %90
  %105 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %106 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %14, align 8
  %109 = mul i64 %108, 2
  %110 = load i64, i64* @ETH_ALEN, align 8
  %111 = mul i64 %109, %110
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %114 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = add i64 %116, 1
  %118 = mul i64 %117, 2
  %119 = load i64, i64* @ETH_ALEN, align 8
  %120 = mul i64 %118, %119
  %121 = getelementptr inbounds i32, i32* %115, i64 %120
  %122 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %123 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %14, align 8
  %127 = sub i64 %125, %126
  %128 = sub i64 %127, 1
  %129 = mul i64 %128, 2
  %130 = load i64, i64* @ETH_ALEN, align 8
  %131 = mul i64 %129, %130
  %132 = call i32 @os_memmove(i32* %112, i32* %121, i64 %131)
  br label %136

133:                                              ; preds = %103
  %134 = load i64, i64* %14, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %14, align 8
  br label %83

136:                                              ; preds = %104, %83
  %137 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %138 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %138, align 8
  store i32 1, i32* %13, align 4
  br label %17

141:                                              ; preds = %53, %17
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %146 = call i32 @p2p_config_write(%struct.wpa_supplicant* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %149 = icmp ne %struct.wpa_ssid* %148, null
  %150 = zext i1 %149 to i32
  ret i32 %150
}

declare dso_local %struct.wpa_ssid* @wpas_p2p_get_persistent(%struct.wpa_supplicant*, i32*, i32*, i32) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, i32) #1

declare dso_local i32 @wpas_notify_persistent_group_removed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_config_remove_network(i32, i32) #1

declare dso_local i32 @os_memmove(i32*, i32*, i64) #1

declare dso_local i32 @p2p_config_write(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
