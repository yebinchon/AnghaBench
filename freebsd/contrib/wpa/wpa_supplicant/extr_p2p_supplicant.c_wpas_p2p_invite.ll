; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_invite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_invite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32*, i64, i32*, i32 }
%struct.TYPE_6__ = type { i32*, i64, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.wpa_ssid = type { i64, i32, i32, i32, i32* }

@P2P_MAX_PREF_CHANNELS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@P2P_INVITE_ROLE_GO = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"P2P: Missing peer address in invitation command\00", align 1
@WPA_IF_P2P_GO = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"P2P: Failed to allocate a new interface for the group\00", align 1
@P2P_INVITE_ROLE_CLIENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [103 x i8] c"P2P: Ignore own channel preference %d MHz for invitation due to p2p_ignore_shared_freq=1 configuration\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_invite(%struct.wpa_supplicant* %0, i32* %1, %struct.wpa_ssid* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpa_supplicant*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.wpa_ssid*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %13, align 8
  store i32* %1, i32** %14, align 8
  store %struct.wpa_ssid* %2, %struct.wpa_ssid** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32* null, i32** %25, align 8
  store i32 0, i32* %26, align 4
  %33 = load i32, i32* %22, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %28, align 4
  %36 = load i32, i32* @P2P_MAX_PREF_CHANNELS, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %29, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %30, align 8
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 7
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %11
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @os_memcpy(i32 %49, i32* %50, i32 %51)
  br label %59

53:                                               ; preds = %11
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 13
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @os_memset(i32 %56, i32 0, i32 %57)
  br label %59

59:                                               ; preds = %53, %46
  %60 = load i32, i32* %17, align 4
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %62 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %69 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %76 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %23, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %83 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %21, align 4
  %85 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %86 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %89 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.wpa_ssid*, %struct.wpa_ssid** %15, align 8
  %91 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %135

95:                                               ; preds = %59
  %96 = load i32, i32* @P2P_INVITE_ROLE_GO, align 4
  store i32 %96, i32* %24, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %32, align 4
  br label %229

102:                                              ; preds = %95
  %103 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %104 = call i64 @wpas_p2p_create_iface(%struct.wpa_supplicant* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %108 = load i32, i32* @WPA_IF_P2P_GO, align 4
  %109 = call i64 @wpas_p2p_add_group_interface(%struct.wpa_supplicant* %107, i32 %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @MSG_ERROR, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %32, align 4
  br label %229

114:                                              ; preds = %106
  %115 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %116 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %115, i32 0, i32 12
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %25, align 8
  br label %134

118:                                              ; preds = %102
  %119 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %120 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %119, i32 0, i32 11
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %125 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %124, i32 0, i32 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %25, align 8
  br label %133

129:                                              ; preds = %118
  %130 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %131 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %130, i32 0, i32 10
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %25, align 8
  br label %133

133:                                              ; preds = %129, %123
  br label %134

134:                                              ; preds = %133, %114
  br label %140

135:                                              ; preds = %59
  %136 = load i32, i32* @P2P_INVITE_ROLE_CLIENT, align 4
  store i32 %136, i32* %24, align 4
  %137 = load %struct.wpa_ssid*, %struct.wpa_ssid** %15, align 8
  %138 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %14, align 8
  br label %140

140:                                              ; preds = %135, %134
  %141 = load %struct.wpa_ssid*, %struct.wpa_ssid** %15, align 8
  %142 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %145 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %144, i32 0, i32 9
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* @P2P_MAX_PREF_CHANNELS, align 4
  store i32 %146, i32* %31, align 4
  %147 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* @P2P_INVITE_ROLE_GO, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @wpas_p2p_setup_freqs(%struct.wpa_supplicant* %147, i32 %148, i32* %26, i32* %22, i32 %152, i32* %39, i32* %31)
  store i32 %153, i32* %27, align 4
  %154 = load i32, i32* %27, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %140
  %157 = load i32, i32* %27, align 4
  store i32 %157, i32* %12, align 4
  store i32 1, i32* %32, align 4
  br label %229

158:                                              ; preds = %140
  %159 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %160 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %159, i32 0, i32 7
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %158
  %166 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %167 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %166, i32 0, i32 7
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %165, %158
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %32, align 4
  br label %229

173:                                              ; preds = %165
  %174 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %175 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %174, i32 0, i32 7
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %31, align 4
  %180 = call i32 @p2p_set_own_pref_freq_list(i32* %178, i32* %39, i32 %179)
  %181 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %182 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %181, i32 0, i32 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %173
  %190 = load i32, i32* %28, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %189
  %193 = load i32, i32* %22, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %192
  %196 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %197 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = icmp sgt i32 %198, 1
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %202 = call i64 @wpas_p2p_num_unused_channels(%struct.wpa_supplicant* %201)
  %203 = icmp sgt i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %200
  %205 = load i32, i32* @MSG_DEBUG, align 4
  %206 = load i32, i32* %22, align 4
  %207 = call i32 (i32, i8*, ...) @wpa_printf(i32 %205, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 %206)
  store i32 0, i32* %22, align 4
  br label %208

208:                                              ; preds = %204, %200, %195, %192, %189, %173
  %209 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %210 = call i32 @wpas_p2p_stop_find_oper(%struct.wpa_supplicant* %209)
  %211 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %212 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %211, i32 0, i32 7
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32*, i32** %14, align 8
  %217 = load i32, i32* %24, align 4
  %218 = load i32*, i32** %25, align 8
  %219 = load %struct.wpa_ssid*, %struct.wpa_ssid** %15, align 8
  %220 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.wpa_ssid*, %struct.wpa_ssid** %15, align 8
  %223 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %26, align 4
  %226 = load i32*, i32** %16, align 8
  %227 = load i32, i32* %22, align 4
  %228 = call i32 @p2p_invite(i32* %215, i32* %216, i32 %217, i32* %218, i32 %221, i32 %224, i32 %225, i32* %226, i32 1, i32 %227, i32 -1)
  store i32 %228, i32* %12, align 4
  store i32 1, i32* %32, align 4
  br label %229

229:                                              ; preds = %208, %172, %156, %111, %99
  %230 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %230)
  %231 = load i32, i32* %12, align 4
  ret i32 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #2

declare dso_local i32 @os_memset(i32, i32, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @wpas_p2p_create_iface(%struct.wpa_supplicant*) #2

declare dso_local i64 @wpas_p2p_add_group_interface(%struct.wpa_supplicant*, i32) #2

declare dso_local i32 @wpas_p2p_setup_freqs(%struct.wpa_supplicant*, i32, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @p2p_set_own_pref_freq_list(i32*, i32*, i32) #2

declare dso_local i64 @wpas_p2p_num_unused_channels(%struct.wpa_supplicant*) #2

declare dso_local i32 @wpas_p2p_stop_find_oper(%struct.wpa_supplicant*) #2

declare dso_local i32 @p2p_invite(i32*, i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
