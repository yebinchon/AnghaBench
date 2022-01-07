; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_set_security_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_set_security_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_bss_config = type { i64, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_6__, i64, i64, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@SECURITY_WPA = common dso_local global i32 0, align 4
@SECURITY_WPA_PSK = common dso_local global i32 0, align 4
@WPA_CIPHER_NONE = common dso_local global i8* null, align 8
@SECURITY_IEEE_802_1X = common dso_local global i32 0, align 4
@WPA_CIPHER_WEP104 = common dso_local global i32 0, align 4
@WPA_CIPHER_WEP40 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_NO_WPA = common dso_local global i8* null, align 8
@SECURITY_STATIC_WEP = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_NONE = common dso_local global i8* null, align 8
@SECURITY_OSEN = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i8* null, align 8
@SECURITY_PLAINTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_set_security_params(%struct.hostapd_bss_config* %0, i32 %1) #0 {
  %3 = alloca %struct.hostapd_bss_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hostapd_bss_config* %0, %struct.hostapd_bss_config** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %8 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %13 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %12, i32 0, i32 14
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %16 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %22 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %27 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %30 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %20, %14
  %32 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %33 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %38 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %41 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  br label %55

42:                                               ; preds = %31
  %43 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %44 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %47 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %50 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wpa_select_ap_group_cipher(i32 %45, i32 %48, i32 %51)
  %53 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %54 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %42, %36
  %56 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %57 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %56, i32 0, i32 13
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %62 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 600, i32 86400
  %68 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %69 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %60, %55
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %75 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %74, i32 0, i32 12
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %80 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %79, i32 0, i32 12
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  store i32 %78, i32* %82, align 4
  %83 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %84 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %83, i32 0, i32 12
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %89 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %88, i32 0, i32 12
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %73, %70
  %93 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %94 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %99 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %98, i32 0, i32 11
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* @SECURITY_WPA, align 4
  %104 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %105 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  br label %284

107:                                              ; preds = %97, %92
  %108 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %109 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @SECURITY_WPA_PSK, align 4
  %114 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %115 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %114, i32 0, i32 9
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  br label %283

117:                                              ; preds = %107
  %118 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %119 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %118, i32 0, i32 11
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %196

122:                                              ; preds = %117
  %123 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* @SECURITY_IEEE_802_1X, align 4
  %126 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %127 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %126, i32 0, i32 9
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %130 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %133 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %132, i32 0, i32 9
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 8
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %122
  %139 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %140 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %145 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = icmp sge i32 %146, 13
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @WPA_CIPHER_WEP104, align 4
  br label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @WPA_CIPHER_WEP40, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  store i32 %153, i32* %5, align 4
  br label %179

154:                                              ; preds = %138, %122
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %154
  %158 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %159 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %158, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %157
  %165 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %166 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %165, i32 0, i32 9
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp sge i32 %171, 13
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i32, i32* @WPA_CIPHER_WEP104, align 4
  store i32 %174, i32* %5, align 4
  br label %177

175:                                              ; preds = %164
  %176 = load i32, i32* @WPA_CIPHER_WEP40, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %175, %173
  br label %178

178:                                              ; preds = %177, %157, %154
  br label %179

179:                                              ; preds = %178, %152
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %182 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* %5, align 4
  %184 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %185 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* %5, align 4
  %187 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %188 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %4, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %179
  %192 = load i8*, i8** @WPA_KEY_MGMT_IEEE8021X_NO_WPA, align 8
  %193 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %194 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %193, i32 0, i32 8
  store i8* %192, i8** %194, align 8
  br label %195

195:                                              ; preds = %191, %179
  br label %282

196:                                              ; preds = %117
  %197 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %198 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %197, i32 0, i32 9
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %236

203:                                              ; preds = %196
  %204 = load i32, i32* @WPA_CIPHER_WEP40, align 4
  store i32 %204, i32* %6, align 4
  %205 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %206 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %205, i32 0, i32 9
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp sge i32 %211, 13
  br i1 %212, label %213, label %215

213:                                              ; preds = %203
  %214 = load i32, i32* @WPA_CIPHER_WEP104, align 4
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %213, %203
  %216 = load i32, i32* @SECURITY_STATIC_WEP, align 4
  %217 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %218 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %217, i32 0, i32 9
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  store i32 %216, i32* %219, align 8
  %220 = load i32, i32* %6, align 4
  %221 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %222 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %225 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %228 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* %4, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %215
  %232 = load i8*, i8** @WPA_KEY_MGMT_NONE, align 8
  %233 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %234 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %233, i32 0, i32 8
  store i8* %232, i8** %234, align 8
  br label %235

235:                                              ; preds = %231, %215
  br label %281

236:                                              ; preds = %196
  %237 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %238 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %237, i32 0, i32 10
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %256

241:                                              ; preds = %236
  %242 = load i32, i32* @SECURITY_OSEN, align 4
  %243 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %244 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %243, i32 0, i32 9
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  store i32 %242, i32* %245, align 8
  %246 = load i8*, i8** @WPA_CIPHER_CCMP, align 8
  %247 = ptrtoint i8* %246 to i32
  %248 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %249 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 8
  %250 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %251 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %250, i32 0, i32 3
  store i32 0, i32* %251, align 8
  %252 = load i8*, i8** @WPA_CIPHER_CCMP, align 8
  %253 = ptrtoint i8* %252 to i32
  %254 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %255 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %254, i32 0, i32 2
  store i32 %253, i32* %255, align 4
  br label %280

256:                                              ; preds = %236
  %257 = load i32, i32* @SECURITY_PLAINTEXT, align 4
  %258 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %259 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %258, i32 0, i32 9
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  store i32 %257, i32* %260, align 8
  %261 = load i32, i32* %4, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %279

263:                                              ; preds = %256
  %264 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %265 = ptrtoint i8* %264 to i32
  %266 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %267 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 8
  %268 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %269 = ptrtoint i8* %268 to i32
  %270 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %271 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %270, i32 0, i32 3
  store i32 %269, i32* %271, align 8
  %272 = load i8*, i8** @WPA_CIPHER_NONE, align 8
  %273 = ptrtoint i8* %272 to i32
  %274 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %275 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 4
  %276 = load i8*, i8** @WPA_KEY_MGMT_NONE, align 8
  %277 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %278 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %277, i32 0, i32 8
  store i8* %276, i8** %278, align 8
  br label %279

279:                                              ; preds = %263, %256
  br label %280

280:                                              ; preds = %279, %241
  br label %281

281:                                              ; preds = %280, %235
  br label %282

282:                                              ; preds = %281, %195
  br label %283

283:                                              ; preds = %282, %112
  br label %284

284:                                              ; preds = %283, %102
  ret void
}

declare dso_local i32 @wpa_select_ap_group_cipher(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
