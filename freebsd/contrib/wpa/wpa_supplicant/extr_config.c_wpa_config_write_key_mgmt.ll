; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_key_mgmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_key_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i32 }
%struct.wpa_ssid = type { i32 }

@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%sWPA-PSK\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%sWPA-EAP\00", align 1
@WPA_KEY_MGMT_IEEE8021X_NO_WPA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%sIEEE8021X\00", align 1
@WPA_KEY_MGMT_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%sNONE\00", align 1
@WPA_KEY_MGMT_WPA_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"%sWPA-NONE\00", align 1
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
@WPA_KEY_MGMT_IEEE8021X_SUITE_B = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OSEN = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_WPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parse_data*, %struct.wpa_ssid*)* @wpa_config_write_key_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpa_config_write_key_mgmt(%struct.parse_data* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parse_data*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.parse_data* %0, %struct.parse_data** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %10 = call i8* @os_zalloc(i32 100)
  store i8* %10, i8** %6, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %220

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 100
  store i8* %16, i8** %8, align 8
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %14
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp eq i8* %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %36 = call i32 @os_snprintf(i8* %24, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @os_snprintf_error(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %23
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %3, align 8
  br label %220

50:                                               ; preds = %23
  %51 = load i32, i32* %9, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %50, %14
  %56 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %55
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = icmp eq i8* %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %75 = call i32 @os_snprintf(i8* %63, i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @os_snprintf_error(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %62
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 -1
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %6, align 8
  store i8* %88, i8** %3, align 8
  br label %220

89:                                               ; preds = %62
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %7, align 8
  br label %94

94:                                               ; preds = %89, %55
  %95 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %96 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_NO_WPA, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %133

101:                                              ; preds = %94
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = load i8*, i8** %7, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = icmp eq i8* %109, %110
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %114 = call i32 @os_snprintf(i8* %102, i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* %9, align 4
  %122 = call i64 @os_snprintf_error(i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %101
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 -1
  store i8 0, i8* %126, align 1
  %127 = load i8*, i8** %6, align 8
  store i8* %127, i8** %3, align 8
  br label %220

128:                                              ; preds = %101
  %129 = load i32, i32* %9, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %7, align 8
  br label %133

133:                                              ; preds = %128, %94
  %134 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %135 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @WPA_KEY_MGMT_NONE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %172

140:                                              ; preds = %133
  %141 = load i8*, i8** %7, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = ptrtoint i8* %142 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = trunc i64 %146 to i32
  %148 = load i8*, i8** %7, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = icmp eq i8* %148, %149
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %153 = call i32 @os_snprintf(i8* %141, i32 %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %152)
  store i32 %153, i32* %9, align 4
  %154 = load i8*, i8** %8, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* %9, align 4
  %161 = call i64 @os_snprintf_error(i32 %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %140
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 -1
  store i8 0, i8* %165, align 1
  %166 = load i8*, i8** %6, align 8
  store i8* %166, i8** %3, align 8
  br label %220

167:                                              ; preds = %140
  %168 = load i32, i32* %9, align 4
  %169 = load i8*, i8** %7, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %7, align 8
  br label %172

172:                                              ; preds = %167, %133
  %173 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %174 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @WPA_KEY_MGMT_WPA_NONE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %211

179:                                              ; preds = %172
  %180 = load i8*, i8** %7, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = ptrtoint i8* %181 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = trunc i64 %185 to i32
  %187 = load i8*, i8** %7, align 8
  %188 = load i8*, i8** %6, align 8
  %189 = icmp eq i8* %187, %188
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %192 = call i32 @os_snprintf(i8* %180, i32 %186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %191)
  store i32 %192, i32* %9, align 4
  %193 = load i8*, i8** %8, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = ptrtoint i8* %193 to i64
  %196 = ptrtoint i8* %194 to i64
  %197 = sub i64 %195, %196
  %198 = trunc i64 %197 to i32
  %199 = load i32, i32* %9, align 4
  %200 = call i64 @os_snprintf_error(i32 %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %179
  %203 = load i8*, i8** %8, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 -1
  store i8 0, i8* %204, align 1
  %205 = load i8*, i8** %6, align 8
  store i8* %205, i8** %3, align 8
  br label %220

206:                                              ; preds = %179
  %207 = load i32, i32* %9, align 4
  %208 = load i8*, i8** %7, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  store i8* %210, i8** %7, align 8
  br label %211

211:                                              ; preds = %206, %172
  %212 = load i8*, i8** %7, align 8
  %213 = load i8*, i8** %6, align 8
  %214 = icmp eq i8* %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i8*, i8** %6, align 8
  %217 = call i32 @os_free(i8* %216)
  store i8* null, i8** %6, align 8
  br label %218

218:                                              ; preds = %215, %211
  %219 = load i8*, i8** %6, align 8
  store i8* %219, i8** %3, align 8
  br label %220

220:                                              ; preds = %218, %202, %163, %124, %85, %46, %13
  %221 = load i8*, i8** %3, align 8
  ret i8* %221
}

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
