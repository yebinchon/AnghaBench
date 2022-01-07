; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_key_mgmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_key_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_capa = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"WPA-PSK WPA-EAP IEEE8021X WPA-NONE NONE\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NONE IEEE8021X\00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_WPA = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_WPA2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" WPA-EAP\00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c" WPA-PSK\00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c" WPA-NONE\00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_DPP = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_SUITE_B_192 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.wpa_driver_capa*, i8*, i64)* @ctrl_iface_get_capability_key_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_iface_get_capability_key_mgmt(i32 %0, i8* %1, %struct.wpa_driver_capa* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_driver_capa*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.wpa_driver_capa* %2, %struct.wpa_driver_capa** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = load i64, i64* %11, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %14, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %188

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @os_strlcpy(i8* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %188

34:                                               ; preds = %26
  %35 = load i64, i64* %15, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %188

37:                                               ; preds = %5
  %38 = load i8*, i8** %13, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @os_snprintf(i8* %38, i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %12, align 4
  %46 = load i8*, i8** %14, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @os_snprintf_error(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %37
  %56 = load i8*, i8** %13, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %6, align 4
  br label %188

62:                                               ; preds = %37
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %13, align 8
  %67 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %9, align 8
  %68 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA, align 4
  %71 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %105

75:                                               ; preds = %62
  %76 = load i8*, i8** %13, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @os_snprintf(i8* %76, i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %83, i32* %12, align 4
  %84 = load i8*, i8** %14, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %12, align 4
  %91 = call i64 @os_snprintf_error(i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %75
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %6, align 4
  br label %188

100:                                              ; preds = %75
  %101 = load i32, i32* %12, align 4
  %102 = load i8*, i8** %13, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %13, align 8
  br label %105

105:                                              ; preds = %100, %62
  %106 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %9, align 8
  %107 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK, align 4
  %110 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %144

114:                                              ; preds = %105
  %115 = load i8*, i8** %13, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @os_snprintf(i8* %115, i32 %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %122, i32* %12, align 4
  %123 = load i8*, i8** %14, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* %12, align 4
  %130 = call i64 @os_snprintf_error(i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %114
  %133 = load i8*, i8** %13, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %6, align 4
  br label %188

139:                                              ; preds = %114
  %140 = load i32, i32* %12, align 4
  %141 = load i8*, i8** %13, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %13, align 8
  br label %144

144:                                              ; preds = %139, %105
  %145 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %9, align 8
  %146 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %181

151:                                              ; preds = %144
  %152 = load i8*, i8** %13, align 8
  %153 = load i8*, i8** %14, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  %159 = call i32 @os_snprintf(i8* %152, i32 %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %159, i32* %12, align 4
  %160 = load i8*, i8** %14, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* %12, align 4
  %167 = call i64 @os_snprintf_error(i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %151
  %170 = load i8*, i8** %13, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = ptrtoint i8* %170 to i64
  %173 = ptrtoint i8* %171 to i64
  %174 = sub i64 %172, %173
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %6, align 4
  br label %188

176:                                              ; preds = %151
  %177 = load i32, i32* %12, align 4
  %178 = load i8*, i8** %13, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8* %180, i8** %13, align 8
  br label %181

181:                                              ; preds = %176, %144
  %182 = load i8*, i8** %13, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %181, %169, %132, %93, %55, %34, %33, %25
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i64 @os_strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
