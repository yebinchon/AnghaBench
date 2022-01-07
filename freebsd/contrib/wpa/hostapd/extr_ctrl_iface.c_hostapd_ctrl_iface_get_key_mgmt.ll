; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_get_key_mgmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_get_key_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"WPA-PSK \00", align 1
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"WPA-EAP \00", align 1
@WPA_KEY_MGMT_IEEE8021X_SUITE_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"WPA-EAP-SUITE-B \00", align 1
@WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"WPA-EAP-SUITE-B-192 \00", align 1
@WPA_KEY_MGMT_DPP = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_IEEE8021X = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_IEEE8021X_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_SAE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*, i64)* @hostapd_ctrl_iface_get_key_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_get_key_mgmt(%struct.hostapd_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %14, i8** %10, align 8
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @WPA_ASSERT(i32 %19)
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %3
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @os_snprintf(i8* %30, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @os_snprintf_error(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %29
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %198

54:                                               ; preds = %29
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %9, align 8
  br label %59

59:                                               ; preds = %54, %3
  %60 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %61 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %59
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @os_snprintf(i8* %69, i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %76, i32* %8, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @os_snprintf_error(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %68
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %198

93:                                               ; preds = %68
  %94 = load i32, i32* %8, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %9, align 8
  br label %98

98:                                               ; preds = %93, %59
  %99 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %100 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SUITE_B, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %137

107:                                              ; preds = %98
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = call i32 @os_snprintf(i8* %108, i32 %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %115, i32* %8, align 4
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* %8, align 4
  %123 = call i64 @os_snprintf_error(i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %107
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %4, align 4
  br label %198

132:                                              ; preds = %107
  %133 = load i32, i32* %8, align 4
  %134 = load i8*, i8** %9, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %9, align 8
  br label %137

137:                                              ; preds = %132, %98
  %138 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %139 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SUITE_B_192, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %176

146:                                              ; preds = %137
  %147 = load i8*, i8** %9, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = trunc i64 %152 to i32
  %154 = call i32 @os_snprintf(i8* %147, i32 %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %154, i32* %8, align 4
  %155 = load i8*, i8** %10, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  %161 = load i32, i32* %8, align 4
  %162 = call i64 @os_snprintf_error(i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %146
  %165 = load i8*, i8** %9, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %4, align 4
  br label %198

171:                                              ; preds = %146
  %172 = load i32, i32* %8, align 4
  %173 = load i8*, i8** %9, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8* %175, i8** %9, align 8
  br label %176

176:                                              ; preds = %171, %137
  %177 = load i8*, i8** %9, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = icmp ugt i8* %177, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %176
  %181 = load i8*, i8** %9, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 -1
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 32
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 -1
  store i8 0, i8* %188, align 1
  %189 = load i8*, i8** %9, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 -1
  store i8* %190, i8** %9, align 8
  br label %191

191:                                              ; preds = %186, %180, %176
  %192 = load i8*, i8** %9, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %191, %164, %125, %86, %47
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @WPA_ASSERT(i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
