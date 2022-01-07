; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_invite_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_invite_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.wpa_global*, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32*, i32*, i32*, %struct.wpa_ssid*, i32, %struct.wpa_supplicant*, i64, i64, i64, i64, i64 }
%struct.wpa_global = type { i32*, i64, i32*, %struct.wpa_supplicant*, %struct.wpa_supplicant* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wpa_ssid = type { i64, i32, i32, i32, i64 }

@P2P_MAX_PREF_CHANNELS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"P2P: Interface '%s' not found\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"P2P: No current SSID to use for invitation\00", align 1
@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@P2P_INVITE_ROLE_ACTIVE_GO = common dso_local global i32 0, align 4
@P2P_INVITE_ROLE_CLIENT = common dso_local global i32 0, align 4
@WPA_ASSOCIATED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"P2P: Not associated - cannot invite to current group\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_invite_group(%struct.wpa_supplicant* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wpa_global*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.wpa_ssid*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 1
  %25 = load %struct.wpa_global*, %struct.wpa_global** %24, align 8
  store %struct.wpa_global* %25, %struct.wpa_global** %10, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load i32, i32* @P2P_MAX_PREF_CHANNELS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %19, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 15
  store i64 0, i64* %31, align 8
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 14
  store i64 0, i64* %33, align 8
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 13
  store i64 0, i64* %35, align 8
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 12
  store i64 0, i64* %37, align 8
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 11
  store i64 0, i64* %39, align 8
  %40 = load %struct.wpa_global*, %struct.wpa_global** %10, align 8
  %41 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %40, i32 0, i32 4
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %41, align 8
  store %struct.wpa_supplicant* %42, %struct.wpa_supplicant** %6, align 8
  br label %43

43:                                               ; preds = %55, %4
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %45 = icmp ne %struct.wpa_supplicant* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @os_strcmp(i32 %49, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %59

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 10
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %57, align 8
  store %struct.wpa_supplicant* %58, %struct.wpa_supplicant** %6, align 8
  br label %43

59:                                               ; preds = %53, %43
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %61 = icmp eq %struct.wpa_supplicant* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %64)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %222

66:                                               ; preds = %59
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 8
  %69 = load %struct.wpa_ssid*, %struct.wpa_ssid** %68, align 8
  store %struct.wpa_ssid* %69, %struct.wpa_ssid** %13, align 8
  %70 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  %71 = icmp eq %struct.wpa_ssid* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %222

75:                                               ; preds = %66
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %77, i32 0, i32 1
  %79 = load %struct.wpa_global*, %struct.wpa_global** %78, align 8
  %80 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %79, i32 0, i32 3
  store %struct.wpa_supplicant* %76, %struct.wpa_supplicant** %80, align 8
  %81 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  %82 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %75
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %87 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  %91 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  %94 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @wpas_p2p_get_persistent(%struct.TYPE_4__* %88, i32* %89, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %85, %75
  %99 = phi i1 [ false, %75 ], [ %97, %85 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %14, align 4
  %101 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  %102 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %98
  %107 = load i32, i32* @P2P_INVITE_ROLE_ACTIVE_GO, align 4
  store i32 %107, i32* %11, align 4
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %109 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %108, i32 0, i32 7
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %12, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %115 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %114, i32 0, i32 1
  %116 = load %struct.wpa_global*, %struct.wpa_global** %115, align 8
  %117 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %9, align 8
  br label %119

119:                                              ; preds = %113, %106
  %120 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  %121 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %15, align 4
  br label %167

123:                                              ; preds = %98
  %124 = load i32, i32* @P2P_INVITE_ROLE_CLIENT, align 4
  store i32 %124, i32* %11, align 4
  %125 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %126 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @WPA_ASSOCIATED, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %222

133:                                              ; preds = %123
  %134 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %135 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %134, i32 0, i32 6
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %12, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %141 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @is_zero_ether_addr(i32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %139
  %146 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %147 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  store i32* %148, i32** %9, align 8
  br label %149

149:                                              ; preds = %145, %139, %133
  %150 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %151 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %150, i32 0, i32 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = icmp ne %struct.TYPE_3__* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %156 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %155, i32 0, i32 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  br label %165

160:                                              ; preds = %149
  %161 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %162 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  br label %165

165:                                              ; preds = %160, %154
  %166 = phi i32 [ %159, %154 ], [ %164, %160 ]
  store i32 %166, i32* %15, align 4
  br label %167

167:                                              ; preds = %165, %119
  %168 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %169 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store i32 -1, i32* %171, align 4
  %172 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %173 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %172, i32 0, i32 1
  %174 = load %struct.wpa_global*, %struct.wpa_global** %173, align 8
  %175 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %167
  %179 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %180 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %179, i32 0, i32 1
  %181 = load %struct.wpa_global*, %struct.wpa_global** %180, align 8
  %182 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %178, %167
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %222

186:                                              ; preds = %178
  %187 = load i32, i32* @P2P_MAX_PREF_CHANNELS, align 4
  store i32 %187, i32* %21, align 4
  %188 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* @P2P_INVITE_ROLE_ACTIVE_GO, align 4
  %192 = icmp eq i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @wpas_p2p_setup_freqs(%struct.wpa_supplicant* %188, i32 %189, i32* %16, i32* %17, i32 %193, i32* %29, i32* %21)
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %18, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %186
  %198 = load i32, i32* %18, align 4
  store i32 %198, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %222

199:                                              ; preds = %186
  %200 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %201 = load i32, i32* %16, align 4
  %202 = call i32 @wpas_p2p_set_own_freq_preference(%struct.wpa_supplicant* %200, i32 %201)
  %203 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %204 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %203, i32 0, i32 1
  %205 = load %struct.wpa_global*, %struct.wpa_global** %204, align 8
  %206 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  %212 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  %215 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %16, align 4
  %218 = load i32*, i32** %9, align 8
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %17, align 4
  %221 = call i32 @p2p_invite(i32* %207, i32* %208, i32 %209, i32* %210, i32 %213, i32 %216, i32 %217, i32* %218, i32 %219, i32 %220, i32 -1)
  store i32 %221, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %222

222:                                              ; preds = %199, %197, %185, %130, %72, %62
  %223 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strcmp(i32, i8*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @wpas_p2p_get_persistent(%struct.TYPE_4__*, i32*, i32, i32) #2

declare dso_local i32 @is_zero_ether_addr(i32*) #2

declare dso_local i32 @wpas_p2p_setup_freqs(%struct.wpa_supplicant*, i32, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @wpas_p2p_set_own_freq_preference(%struct.wpa_supplicant*, i32) #2

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
