; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"recvfrom(ctrl_iface): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Global ctrl_iface command: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"CTRL: sendto failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"IFNAME=\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"RELOG\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"FLUSH\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ADD \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"REMOVE \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ATTACH\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ATTACH \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"DETACH\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"DUP_NETWORK \00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"INTERFACES\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"TERMINATE\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"Unrecognized global ctrl_iface command ignored\00", align 1
@COOKIE_LEN = common dso_local global i32 0, align 4
@gcookie = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @hostapd_global_ctrl_iface_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_global_ctrl_iface_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_storage, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %7, align 8
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %18, i8** %9, align 8
  store i32 4, i32* %12, align 4
  store i32 4096, i32* %15, align 4
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %21 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %22 = call i32 @recvfrom(i32 %19, i8* %20, i32 255, i32 0, %struct.sockaddr* %21, i32* %12)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @MSG_ERROR, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i8* @strerror(i32 %27)
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %225

30:                                               ; preds = %3
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = call i8* @os_malloc(i32 4096)
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @sendto(i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5, i32 0, %struct.sockaddr* %43, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load i32, i32* @errno, align 4
  %50 = call i8* @strerror(i32 %49)
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %47, %41
  br label %225

53:                                               ; preds = %30
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @os_memcpy(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  store i32 3, i32* %14, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @os_strncmp(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 7
  %62 = call i8* @os_strchr(i8* %61, i8 signext 32)
  store i8* %62, i8** %16, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load i8*, i8** %16, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %16, align 8
  store i8 0, i8* %66, align 1
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 7
  %71 = load i8*, i8** %16, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @hostapd_global_ctrl_iface_ifname(i8* %68, i8* %70, i8* %71, i8* %72, i32 4096, %struct.sockaddr_storage* %11, i32 %73)
  store i32 %74, i32* %14, align 4
  br label %203

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75, %53
  %77 = load i8*, i8** %9, align 8
  %78 = call i64 @os_strcmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @os_memcpy(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  store i32 5, i32* %14, align 4
  br label %202

83:                                               ; preds = %76
  %84 = load i8*, i8** %9, align 8
  %85 = call i64 @os_strncmp(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = call i64 (...) @wpa_debug_reopen_file()
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 -1, i32* %14, align 4
  br label %91

91:                                               ; preds = %90, %87
  br label %201

92:                                               ; preds = %83
  %93 = load i8*, i8** %9, align 8
  %94 = call i64 @os_strcmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @hostapd_ctrl_iface_flush(i8* %97)
  br label %200

99:                                               ; preds = %92
  %100 = load i8*, i8** %9, align 8
  %101 = call i64 @os_strncmp(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = call i64 @hostapd_ctrl_iface_add(i8* %104, i8* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 -1, i32* %14, align 4
  br label %110

110:                                              ; preds = %109, %103
  br label %199

111:                                              ; preds = %99
  %112 = load i8*, i8** %9, align 8
  %113 = call i64 @os_strncmp(i8* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 7)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i8*, i8** %7, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 7
  %119 = call i64 @hostapd_ctrl_iface_remove(i8* %116, i8* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 -1, i32* %14, align 4
  br label %122

122:                                              ; preds = %121, %115
  br label %198

123:                                              ; preds = %111
  %124 = load i8*, i8** %9, align 8
  %125 = call i64 @os_strcmp(i8* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i64 @hostapd_global_ctrl_iface_attach(i8* %128, %struct.sockaddr_storage* %11, i32 %129, i8* null)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 -1, i32* %14, align 4
  br label %133

133:                                              ; preds = %132, %127
  br label %197

134:                                              ; preds = %123
  %135 = load i8*, i8** %9, align 8
  %136 = call i64 @os_strncmp(i8* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 7)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 7
  %143 = call i64 @hostapd_global_ctrl_iface_attach(i8* %139, %struct.sockaddr_storage* %11, i32 %140, i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i32 -1, i32* %14, align 4
  br label %146

146:                                              ; preds = %145, %138
  br label %196

147:                                              ; preds = %134
  %148 = load i8*, i8** %9, align 8
  %149 = call i64 @os_strcmp(i8* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i64 @hostapd_global_ctrl_iface_detach(i8* %152, %struct.sockaddr_storage* %11, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 -1, i32* %14, align 4
  br label %157

157:                                              ; preds = %156, %151
  br label %195

158:                                              ; preds = %147
  %159 = load i8*, i8** %9, align 8
  %160 = call i64 @os_strncmp(i8* %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 12)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %158
  %163 = load i8*, i8** %7, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 12
  %166 = call i32 @hostapd_global_ctrl_iface_dup_network(i8* %163, i8* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %162
  %169 = load i8*, i8** %13, align 8
  %170 = call i32 @os_snprintf(i8* %169, i32 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %170, i32* %14, align 4
  br label %172

171:                                              ; preds = %162
  store i32 -1, i32* %14, align 4
  br label %172

172:                                              ; preds = %171, %168
  br label %194

173:                                              ; preds = %158
  %174 = load i8*, i8** %9, align 8
  %175 = call i64 @os_strncmp(i8* %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 10)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i8*, i8** %7, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 10
  %181 = load i8*, i8** %13, align 8
  %182 = call i32 @hostapd_global_ctrl_iface_interfaces(i8* %178, i8* %180, i8* %181, i32 256)
  store i32 %182, i32* %14, align 4
  br label %193

183:                                              ; preds = %173
  %184 = load i8*, i8** %9, align 8
  %185 = call i64 @os_strcmp(i8* %184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = call i32 (...) @eloop_terminate()
  br label %192

189:                                              ; preds = %183
  %190 = load i32, i32* @MSG_DEBUG, align 4
  %191 = call i32 (i32, i8*, ...) @wpa_printf(i32 %190, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %192

192:                                              ; preds = %189, %187
  br label %193

193:                                              ; preds = %192, %177
  br label %194

194:                                              ; preds = %193, %172
  br label %195

195:                                              ; preds = %194, %157
  br label %196

196:                                              ; preds = %195, %146
  br label %197

197:                                              ; preds = %196, %133
  br label %198

198:                                              ; preds = %197, %122
  br label %199

199:                                              ; preds = %198, %110
  br label %200

200:                                              ; preds = %199, %96
  br label %201

201:                                              ; preds = %200, %91
  br label %202

202:                                              ; preds = %201, %80
  br label %203

203:                                              ; preds = %202, %65
  %204 = load i32, i32* %14, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i8*, i8** %13, align 8
  %208 = call i32 @os_memcpy(i8* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  store i32 5, i32* %14, align 4
  br label %209

209:                                              ; preds = %206, %203
  %210 = load i32, i32* %4, align 4
  %211 = load i8*, i8** %13, align 8
  %212 = load i32, i32* %14, align 4
  %213 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %214 = load i32, i32* %12, align 4
  %215 = call i64 @sendto(i32 %210, i8* %211, i32 %212, i32 0, %struct.sockaddr* %213, i32 %214)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %209
  %218 = load i32, i32* @MSG_DEBUG, align 4
  %219 = load i32, i32* @errno, align 4
  %220 = call i8* @strerror(i32 %219)
  %221 = call i32 (i32, i8*, ...) @wpa_printf(i32 %218, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %220)
  br label %222

222:                                              ; preds = %217, %209
  %223 = load i8*, i8** %13, align 8
  %224 = call i32 @os_free(i8* %223)
  br label %225

225:                                              ; preds = %222, %52, %25
  ret void
}

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i64 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @hostapd_global_ctrl_iface_ifname(i8*, i8*, i8*, i8*, i32, %struct.sockaddr_storage*, i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i64 @wpa_debug_reopen_file(...) #1

declare dso_local i32 @hostapd_ctrl_iface_flush(i8*) #1

declare dso_local i64 @hostapd_ctrl_iface_add(i8*, i8*) #1

declare dso_local i64 @hostapd_ctrl_iface_remove(i8*, i8*) #1

declare dso_local i64 @hostapd_global_ctrl_iface_attach(i8*, %struct.sockaddr_storage*, i32, i8*) #1

declare dso_local i64 @hostapd_global_ctrl_iface_detach(i8*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @hostapd_global_ctrl_iface_dup_network(i8*, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*) #1

declare dso_local i32 @hostapd_global_ctrl_iface_interfaces(i8*, i8*, i8*, i32) #1

declare dso_local i32 @eloop_terminate(...) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
