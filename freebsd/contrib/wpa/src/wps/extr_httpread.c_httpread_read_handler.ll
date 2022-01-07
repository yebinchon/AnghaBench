; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_httpread.c_httpread_read_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_httpread.c_httpread_read_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpread = type { i32, i64, i32, i32, i8*, i32, i64, i64, i8*, i32, i32, i64, i32, i32, i64, i32, i32, i32 (%struct.httpread*, i32, i32)*, i32, i64, i64 }

@HTTPREAD_READBUF_SIZE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"httpread: Trying to read more data(%p)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"httpread failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"httpread - read\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"httpread premature eof(%p)\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"httpread premature eof(%p) %d/%d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"httpread ok eof(%p)\00", align 1
@HTTPREAD_HEADER_MAX_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"httpread: Too long header\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"httpread bad hdr(%p)\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"httpread no body hdr end(%p)\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"httpread zero content length(%p)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"SUBSCRIBE\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"UNSUBSCRIBE\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"httpread NO BODY for sp. type\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"httpread: body_nbytes=%d >= max_bytes=%d\00", align 1
@HTTPREAD_BODYBUF_DELTA = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [74 x i8] c"httpread: Unacceptable body length %d (body_alloc_nbytes=%u max_bytes=%u)\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"httpread: Failed to reallocate buffer (len=%d)\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"httpread: Unexpected chunk header value (not a hex digit)\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"httpread: Invalid chunk size %d\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"httpread end chunks(%p)\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"httpread: Invalid chunk end\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"httpread got content(%p)\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"httpread: Invalid ncopy=%d\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"httpread read/parse failure (%p)\00", align 1
@HTTPREAD_EVENT_ERROR = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [24 x i8] c"httpread: get more (%p)\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"httpread got file %d bytes type %d\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"httpread: body\00", align 1
@EVENT_TYPE_READ = common dso_local global i32 0, align 4
@httpread_timeout_handler = common dso_local global i32 0, align 4
@HTTPREAD_EVENT_FILE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @httpread_read_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @httpread_read_handler(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.httpread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.httpread*
  store %struct.httpread* %21, %struct.httpread** %7, align 8
  %22 = load i32, i32* @HTTPREAD_READBUF_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load %struct.httpread*, %struct.httpread** %7, align 8
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.httpread* %27)
  %29 = load %struct.httpread*, %struct.httpread** %7, align 8
  %30 = getelementptr inbounds %struct.httpread, %struct.httpread* %29, i32 0, i32 18
  %31 = load i32, i32* %30, align 8
  %32 = trunc i64 %23 to i32
  %33 = call i32 @read(i32 %31, i8* %25, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %674

41:                                               ; preds = %3
  %42 = load i32, i32* @MSG_MSGDUMP, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @wpa_hexdump_ascii(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %41
  %48 = load %struct.httpread*, %struct.httpread** %7, align 8
  %49 = getelementptr inbounds %struct.httpread, %struct.httpread* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = load %struct.httpread*, %struct.httpread** %7, align 8
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), %struct.httpread* %54)
  br label %674

56:                                               ; preds = %47
  %57 = load %struct.httpread*, %struct.httpread** %7, align 8
  %58 = getelementptr inbounds %struct.httpread, %struct.httpread* %57, i32 0, i32 19
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.httpread*, %struct.httpread** %7, align 8
  %63 = getelementptr inbounds %struct.httpread, %struct.httpread* %62, i32 0, i32 20
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61, %56
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load %struct.httpread*, %struct.httpread** %7, align 8
  %69 = load %struct.httpread*, %struct.httpread** %7, align 8
  %70 = getelementptr inbounds %struct.httpread, %struct.httpread* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.httpread*, %struct.httpread** %7, align 8
  %73 = getelementptr inbounds %struct.httpread, %struct.httpread* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), %struct.httpread* %68, i64 %71, i32 %74)
  br label %674

76:                                               ; preds = %61
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load %struct.httpread*, %struct.httpread** %7, align 8
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), %struct.httpread* %78)
  %80 = load %struct.httpread*, %struct.httpread** %7, align 8
  %81 = getelementptr inbounds %struct.httpread, %struct.httpread* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  br label %691

82:                                               ; preds = %41
  store i8* %25, i8** %9, align 8
  %83 = load %struct.httpread*, %struct.httpread** %7, align 8
  %84 = getelementptr inbounds %struct.httpread, %struct.httpread* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %186, label %87

87:                                               ; preds = %82
  %88 = load %struct.httpread*, %struct.httpread** %7, align 8
  %89 = getelementptr inbounds %struct.httpread, %struct.httpread* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.httpread*, %struct.httpread** %7, align 8
  %92 = getelementptr inbounds %struct.httpread, %struct.httpread* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %90, i64 %94
  store i8* %95, i8** %10, align 8
  br label %96

96:                                               ; preds = %153, %87
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %687

100:                                              ; preds = %96
  %101 = load %struct.httpread*, %struct.httpread** %7, align 8
  %102 = getelementptr inbounds %struct.httpread, %struct.httpread* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @HTTPREAD_HEADER_MAX_SIZE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = call i32 (i32, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %674

109:                                              ; preds = %100
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  %112 = load i8, i8* %110, align 1
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %10, align 8
  store i8 %112, i8* %113, align 1
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %8, align 4
  %117 = load %struct.httpread*, %struct.httpread** %7, align 8
  %118 = getelementptr inbounds %struct.httpread, %struct.httpread* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load %struct.httpread*, %struct.httpread** %7, align 8
  %122 = getelementptr inbounds %struct.httpread, %struct.httpread* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = icmp sge i32 %123, 4
  br i1 %124, label %125, label %153

125:                                              ; preds = %109
  %126 = load i8*, i8** %10, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 -1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 10
  br i1 %130, label %131, label %153

131:                                              ; preds = %125
  %132 = load i8*, i8** %10, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 -2
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 13
  br i1 %136, label %137, label %153

137:                                              ; preds = %131
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 -3
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = load i8*, i8** %10, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 -4
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 13
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.httpread*, %struct.httpread** %7, align 8
  %151 = getelementptr inbounds %struct.httpread, %struct.httpread* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load i8*, i8** %10, align 8
  store i8 0, i8* %152, align 1
  br label %154

153:                                              ; preds = %143, %137, %131, %125, %109
  br label %96

154:                                              ; preds = %149
  %155 = load %struct.httpread*, %struct.httpread** %7, align 8
  %156 = call i64 @httpread_hdr_analyze(%struct.httpread* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32, i32* @MSG_DEBUG, align 4
  %160 = load %struct.httpread*, %struct.httpread** %7, align 8
  %161 = call i32 (i32, i8*, ...) @wpa_printf(i32 %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), %struct.httpread* %160)
  br label %674

162:                                              ; preds = %154
  %163 = load %struct.httpread*, %struct.httpread** %7, align 8
  %164 = getelementptr inbounds %struct.httpread, %struct.httpread* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* @MSG_DEBUG, align 4
  %169 = load %struct.httpread*, %struct.httpread** %7, align 8
  %170 = call i32 (i32, i8*, ...) @wpa_printf(i32 %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), %struct.httpread* %169)
  br label %691

171:                                              ; preds = %162
  %172 = load %struct.httpread*, %struct.httpread** %7, align 8
  %173 = getelementptr inbounds %struct.httpread, %struct.httpread* %172, i32 0, i32 20
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %171
  %177 = load %struct.httpread*, %struct.httpread** %7, align 8
  %178 = getelementptr inbounds %struct.httpread, %struct.httpread* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* @MSG_DEBUG, align 4
  %183 = load %struct.httpread*, %struct.httpread** %7, align 8
  %184 = call i32 (i32, i8*, ...) @wpa_printf(i32 %182, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), %struct.httpread* %183)
  br label %691

185:                                              ; preds = %176, %171
  br label %186

186:                                              ; preds = %185, %82
  %187 = load %struct.httpread*, %struct.httpread** %7, align 8
  %188 = getelementptr inbounds %struct.httpread, %struct.httpread* %187, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @os_strncasecmp(i8* %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 9)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %210

192:                                              ; preds = %186
  %193 = load %struct.httpread*, %struct.httpread** %7, align 8
  %194 = getelementptr inbounds %struct.httpread, %struct.httpread* %193, i32 0, i32 4
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @os_strncasecmp(i8* %195, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 11)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %192
  %199 = load %struct.httpread*, %struct.httpread** %7, align 8
  %200 = getelementptr inbounds %struct.httpread, %struct.httpread* %199, i32 0, i32 4
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @os_strncasecmp(i8* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %198
  %205 = load %struct.httpread*, %struct.httpread** %7, align 8
  %206 = getelementptr inbounds %struct.httpread, %struct.httpread* %205, i32 0, i32 4
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @os_strncasecmp(i8* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %221, label %210

210:                                              ; preds = %204, %198, %192, %186
  %211 = load %struct.httpread*, %struct.httpread** %7, align 8
  %212 = getelementptr inbounds %struct.httpread, %struct.httpread* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %210
  %216 = load i32, i32* @MSG_DEBUG, align 4
  %217 = call i32 (i32, i8*, ...) @wpa_printf(i32 %216, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %210
  %219 = load %struct.httpread*, %struct.httpread** %7, align 8
  %220 = getelementptr inbounds %struct.httpread, %struct.httpread* %219, i32 0, i32 3
  store i32 1, i32* %220, align 4
  br label %691

221:                                              ; preds = %204
  %222 = load i32, i32* %8, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  br label %687

225:                                              ; preds = %221
  %226 = load %struct.httpread*, %struct.httpread** %7, align 8
  %227 = getelementptr inbounds %struct.httpread, %struct.httpread* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %603, label %230

230:                                              ; preds = %225
  %231 = load %struct.httpread*, %struct.httpread** %7, align 8
  %232 = getelementptr inbounds %struct.httpread, %struct.httpread* %231, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.httpread*, %struct.httpread** %7, align 8
  %235 = getelementptr inbounds %struct.httpread, %struct.httpread* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %236, %238
  %240 = add nsw i64 %239, 1
  %241 = icmp slt i64 %233, %240
  br i1 %241, label %242, label %329

242:                                              ; preds = %230
  %243 = load %struct.httpread*, %struct.httpread** %7, align 8
  %244 = getelementptr inbounds %struct.httpread, %struct.httpread* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.httpread*, %struct.httpread** %7, align 8
  %247 = getelementptr inbounds %struct.httpread, %struct.httpread* %246, i32 0, i32 6
  %248 = load i64, i64* %247, align 8
  %249 = icmp sge i64 %245, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %242
  %251 = load i32, i32* @MSG_DEBUG, align 4
  %252 = load %struct.httpread*, %struct.httpread** %7, align 8
  %253 = getelementptr inbounds %struct.httpread, %struct.httpread* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.httpread*, %struct.httpread** %7, align 8
  %256 = getelementptr inbounds %struct.httpread, %struct.httpread* %255, i32 0, i32 6
  %257 = load i64, i64* %256, align 8
  %258 = call i32 (i32, i8*, ...) @wpa_printf(i32 %251, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i64 %254, i64 %257)
  br label %674

259:                                              ; preds = %242
  %260 = load %struct.httpread*, %struct.httpread** %7, align 8
  %261 = getelementptr inbounds %struct.httpread, %struct.httpread* %260, i32 0, i32 7
  %262 = load i64, i64* %261, align 8
  %263 = load i32, i32* @HTTPREAD_BODYBUF_DELTA, align 4
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %262, %264
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %15, align 4
  %267 = load %struct.httpread*, %struct.httpread** %7, align 8
  %268 = getelementptr inbounds %struct.httpread, %struct.httpread* %267, i32 0, i32 20
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %259
  %272 = load i32, i32* %15, align 4
  %273 = load %struct.httpread*, %struct.httpread** %7, align 8
  %274 = getelementptr inbounds %struct.httpread, %struct.httpread* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, 1
  %277 = icmp slt i32 %272, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %271
  %279 = load %struct.httpread*, %struct.httpread** %7, align 8
  %280 = getelementptr inbounds %struct.httpread, %struct.httpread* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %15, align 4
  br label %283

283:                                              ; preds = %278, %271, %259
  %284 = load i32, i32* %15, align 4
  %285 = sext i32 %284 to i64
  %286 = load %struct.httpread*, %struct.httpread** %7, align 8
  %287 = getelementptr inbounds %struct.httpread, %struct.httpread* %286, i32 0, i32 7
  %288 = load i64, i64* %287, align 8
  %289 = icmp slt i64 %285, %288
  br i1 %289, label %300, label %290

290:                                              ; preds = %283
  %291 = load i32, i32* %15, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.httpread*, %struct.httpread** %7, align 8
  %294 = getelementptr inbounds %struct.httpread, %struct.httpread* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* @HTTPREAD_BODYBUF_DELTA, align 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %295, %297
  %299 = icmp sgt i64 %292, %298
  br i1 %299, label %300, label %310

300:                                              ; preds = %290, %283
  %301 = load i32, i32* @MSG_DEBUG, align 4
  %302 = load i32, i32* %15, align 4
  %303 = load %struct.httpread*, %struct.httpread** %7, align 8
  %304 = getelementptr inbounds %struct.httpread, %struct.httpread* %303, i32 0, i32 7
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.httpread*, %struct.httpread** %7, align 8
  %307 = getelementptr inbounds %struct.httpread, %struct.httpread* %306, i32 0, i32 6
  %308 = load i64, i64* %307, align 8
  %309 = call i32 (i32, i8*, ...) @wpa_printf(i32 %301, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.16, i64 0, i64 0), i32 %302, i64 %305, i64 %308)
  br label %674

310:                                              ; preds = %290
  %311 = load %struct.httpread*, %struct.httpread** %7, align 8
  %312 = getelementptr inbounds %struct.httpread, %struct.httpread* %311, i32 0, i32 8
  %313 = load i8*, i8** %312, align 8
  %314 = load i32, i32* %15, align 4
  %315 = call i8* @os_realloc(i8* %313, i32 %314)
  store i8* %315, i8** %14, align 8
  %316 = icmp eq i8* %315, null
  br i1 %316, label %317, label %321

317:                                              ; preds = %310
  %318 = load i32, i32* @MSG_DEBUG, align 4
  %319 = load i32, i32* %15, align 4
  %320 = call i32 (i32, i8*, ...) @wpa_printf(i32 %318, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i32 %319)
  br label %674

321:                                              ; preds = %310
  %322 = load i8*, i8** %14, align 8
  %323 = load %struct.httpread*, %struct.httpread** %7, align 8
  %324 = getelementptr inbounds %struct.httpread, %struct.httpread* %323, i32 0, i32 8
  store i8* %322, i8** %324, align 8
  %325 = load i32, i32* %15, align 4
  %326 = sext i32 %325 to i64
  %327 = load %struct.httpread*, %struct.httpread** %7, align 8
  %328 = getelementptr inbounds %struct.httpread, %struct.httpread* %327, i32 0, i32 7
  store i64 %326, i64* %328, align 8
  br label %329

329:                                              ; preds = %321, %230
  %330 = load %struct.httpread*, %struct.httpread** %7, align 8
  %331 = getelementptr inbounds %struct.httpread, %struct.httpread* %330, i32 0, i32 8
  %332 = load i8*, i8** %331, align 8
  %333 = load %struct.httpread*, %struct.httpread** %7, align 8
  %334 = getelementptr inbounds %struct.httpread, %struct.httpread* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds i8, i8* %332, i64 %335
  store i8* %336, i8** %11, align 8
  br label %337

337:                                              ; preds = %580, %536, %329
  %338 = load %struct.httpread*, %struct.httpread** %7, align 8
  %339 = getelementptr inbounds %struct.httpread, %struct.httpread* %338, i32 0, i32 19
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %427

342:                                              ; preds = %337
  %343 = load %struct.httpread*, %struct.httpread** %7, align 8
  %344 = getelementptr inbounds %struct.httpread, %struct.httpread* %343, i32 0, i32 9
  %345 = load i32, i32* %344, align 8
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %427

347:                                              ; preds = %342
  %348 = load %struct.httpread*, %struct.httpread** %7, align 8
  %349 = getelementptr inbounds %struct.httpread, %struct.httpread* %348, i32 0, i32 8
  %350 = load i8*, i8** %349, align 8
  %351 = load %struct.httpread*, %struct.httpread** %7, align 8
  %352 = getelementptr inbounds %struct.httpread, %struct.httpread* %351, i32 0, i32 10
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %350, i64 %354
  store i8* %355, i8** %17, align 8
  %356 = load i8*, i8** %11, align 8
  %357 = load i8*, i8** %17, align 8
  %358 = ptrtoint i8* %356 to i64
  %359 = ptrtoint i8* %357 to i64
  %360 = sub i64 %358, %359
  %361 = icmp sge i64 %360, 2
  br i1 %361, label %362, label %426

362:                                              ; preds = %347
  %363 = load i8*, i8** %11, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 -2
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i32
  %367 = icmp eq i32 %366, 13
  br i1 %367, label %368, label %426

368:                                              ; preds = %362
  %369 = load i8*, i8** %11, align 8
  %370 = getelementptr inbounds i8, i8* %369, i64 -1
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp eq i32 %372, 10
  br i1 %373, label %374, label %426

374:                                              ; preds = %368
  %375 = load i8*, i8** %17, align 8
  %376 = load i8, i8* %375, align 1
  %377 = call i32 @isxdigit(i8 signext %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %374
  %380 = load i32, i32* @MSG_DEBUG, align 4
  %381 = call i32 (i32, i8*, ...) @wpa_printf(i32 %380, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0))
  br label %674

382:                                              ; preds = %374
  %383 = load i8*, i8** %17, align 8
  %384 = call i64 @strtoul(i8* %383, i32* null, i32 16)
  %385 = load %struct.httpread*, %struct.httpread** %7, align 8
  %386 = getelementptr inbounds %struct.httpread, %struct.httpread* %385, i32 0, i32 11
  store i64 %384, i64* %386, align 8
  %387 = load %struct.httpread*, %struct.httpread** %7, align 8
  %388 = getelementptr inbounds %struct.httpread, %struct.httpread* %387, i32 0, i32 11
  %389 = load i64, i64* %388, align 8
  %390 = icmp slt i64 %389, 0
  br i1 %390, label %399, label %391

391:                                              ; preds = %382
  %392 = load %struct.httpread*, %struct.httpread** %7, align 8
  %393 = getelementptr inbounds %struct.httpread, %struct.httpread* %392, i32 0, i32 11
  %394 = load i64, i64* %393, align 8
  %395 = load %struct.httpread*, %struct.httpread** %7, align 8
  %396 = getelementptr inbounds %struct.httpread, %struct.httpread* %395, i32 0, i32 6
  %397 = load i64, i64* %396, align 8
  %398 = icmp sgt i64 %394, %397
  br i1 %398, label %399, label %405

399:                                              ; preds = %391, %382
  %400 = load i32, i32* @MSG_DEBUG, align 4
  %401 = load %struct.httpread*, %struct.httpread** %7, align 8
  %402 = getelementptr inbounds %struct.httpread, %struct.httpread* %401, i32 0, i32 11
  %403 = load i64, i64* %402, align 8
  %404 = call i32 (i32, i8*, ...) @wpa_printf(i32 %400, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i64 %403)
  br label %674

405:                                              ; preds = %391
  %406 = load %struct.httpread*, %struct.httpread** %7, align 8
  %407 = getelementptr inbounds %struct.httpread, %struct.httpread* %406, i32 0, i32 10
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %408 to i64
  %410 = load %struct.httpread*, %struct.httpread** %7, align 8
  %411 = getelementptr inbounds %struct.httpread, %struct.httpread* %410, i32 0, i32 1
  store i64 %409, i64* %411, align 8
  %412 = load i8*, i8** %17, align 8
  store i8* %412, i8** %11, align 8
  %413 = load %struct.httpread*, %struct.httpread** %7, align 8
  %414 = getelementptr inbounds %struct.httpread, %struct.httpread* %413, i32 0, i32 11
  %415 = load i64, i64* %414, align 8
  %416 = icmp eq i64 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %405
  %418 = load %struct.httpread*, %struct.httpread** %7, align 8
  %419 = getelementptr inbounds %struct.httpread, %struct.httpread* %418, i32 0, i32 12
  store i32 1, i32* %419, align 8
  %420 = load i32, i32* @MSG_DEBUG, align 4
  %421 = load %struct.httpread*, %struct.httpread** %7, align 8
  %422 = call i32 (i32, i8*, ...) @wpa_printf(i32 %420, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), %struct.httpread* %421)
  br label %602

423:                                              ; preds = %405
  %424 = load %struct.httpread*, %struct.httpread** %7, align 8
  %425 = getelementptr inbounds %struct.httpread, %struct.httpread* %424, i32 0, i32 9
  store i32 1, i32* %425, align 8
  br label %426

426:                                              ; preds = %423, %368, %362, %347
  br label %502

427:                                              ; preds = %342, %337
  %428 = load %struct.httpread*, %struct.httpread** %7, align 8
  %429 = getelementptr inbounds %struct.httpread, %struct.httpread* %428, i32 0, i32 19
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %480

432:                                              ; preds = %427
  %433 = load %struct.httpread*, %struct.httpread** %7, align 8
  %434 = getelementptr inbounds %struct.httpread, %struct.httpread* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = load %struct.httpread*, %struct.httpread** %7, align 8
  %437 = getelementptr inbounds %struct.httpread, %struct.httpread* %436, i32 0, i32 10
  %438 = load i32, i32* %437, align 4
  %439 = sext i32 %438 to i64
  %440 = sub nsw i64 %435, %439
  %441 = load %struct.httpread*, %struct.httpread** %7, align 8
  %442 = getelementptr inbounds %struct.httpread, %struct.httpread* %441, i32 0, i32 11
  %443 = load i64, i64* %442, align 8
  %444 = add nsw i64 %443, 2
  %445 = icmp eq i64 %440, %444
  br i1 %445, label %446, label %479

446:                                              ; preds = %432
  %447 = load i8*, i8** %11, align 8
  %448 = getelementptr inbounds i8, i8* %447, i64 -1
  %449 = load i8, i8* %448, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp eq i32 %450, 10
  br i1 %451, label %452, label %459

452:                                              ; preds = %446
  %453 = load i8*, i8** %11, align 8
  %454 = getelementptr inbounds i8, i8* %453, i64 -2
  %455 = load i8, i8* %454, align 1
  %456 = sext i8 %455 to i32
  %457 = icmp eq i32 %456, 13
  br i1 %457, label %458, label %459

458:                                              ; preds = %452
  br label %462

459:                                              ; preds = %452, %446
  %460 = load i32, i32* @MSG_DEBUG, align 4
  %461 = call i32 (i32, i8*, ...) @wpa_printf(i32 %460, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  br label %674

462:                                              ; preds = %458
  %463 = load %struct.httpread*, %struct.httpread** %7, align 8
  %464 = getelementptr inbounds %struct.httpread, %struct.httpread* %463, i32 0, i32 1
  %465 = load i64, i64* %464, align 8
  %466 = sub nsw i64 %465, 2
  store i64 %466, i64* %464, align 8
  %467 = load i8*, i8** %11, align 8
  %468 = getelementptr inbounds i8, i8* %467, i64 -2
  store i8* %468, i8** %11, align 8
  %469 = load %struct.httpread*, %struct.httpread** %7, align 8
  %470 = getelementptr inbounds %struct.httpread, %struct.httpread* %469, i32 0, i32 1
  %471 = load i64, i64* %470, align 8
  %472 = trunc i64 %471 to i32
  %473 = load %struct.httpread*, %struct.httpread** %7, align 8
  %474 = getelementptr inbounds %struct.httpread, %struct.httpread* %473, i32 0, i32 10
  store i32 %472, i32* %474, align 4
  %475 = load %struct.httpread*, %struct.httpread** %7, align 8
  %476 = getelementptr inbounds %struct.httpread, %struct.httpread* %475, i32 0, i32 9
  store i32 0, i32* %476, align 8
  %477 = load %struct.httpread*, %struct.httpread** %7, align 8
  %478 = getelementptr inbounds %struct.httpread, %struct.httpread* %477, i32 0, i32 11
  store i64 0, i64* %478, align 8
  br label %479

479:                                              ; preds = %462, %432
  br label %501

480:                                              ; preds = %427
  %481 = load %struct.httpread*, %struct.httpread** %7, align 8
  %482 = getelementptr inbounds %struct.httpread, %struct.httpread* %481, i32 0, i32 20
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %500

485:                                              ; preds = %480
  %486 = load %struct.httpread*, %struct.httpread** %7, align 8
  %487 = getelementptr inbounds %struct.httpread, %struct.httpread* %486, i32 0, i32 1
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.httpread*, %struct.httpread** %7, align 8
  %490 = getelementptr inbounds %struct.httpread, %struct.httpread* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 8
  %492 = sext i32 %491 to i64
  %493 = icmp sge i64 %488, %492
  br i1 %493, label %494, label %500

494:                                              ; preds = %485
  %495 = load %struct.httpread*, %struct.httpread** %7, align 8
  %496 = getelementptr inbounds %struct.httpread, %struct.httpread* %495, i32 0, i32 3
  store i32 1, i32* %496, align 4
  %497 = load i32, i32* @MSG_DEBUG, align 4
  %498 = load %struct.httpread*, %struct.httpread** %7, align 8
  %499 = call i32 (i32, i8*, ...) @wpa_printf(i32 %497, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), %struct.httpread* %498)
  br label %691

500:                                              ; preds = %485, %480
  br label %501

501:                                              ; preds = %500, %479
  br label %502

502:                                              ; preds = %501, %426
  %503 = load i32, i32* %8, align 4
  %504 = icmp sle i32 %503, 0
  br i1 %504, label %505, label %506

505:                                              ; preds = %502
  br label %602

506:                                              ; preds = %502
  %507 = load %struct.httpread*, %struct.httpread** %7, align 8
  %508 = getelementptr inbounds %struct.httpread, %struct.httpread* %507, i32 0, i32 19
  %509 = load i64, i64* %508, align 8
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %531

511:                                              ; preds = %506
  %512 = load %struct.httpread*, %struct.httpread** %7, align 8
  %513 = getelementptr inbounds %struct.httpread, %struct.httpread* %512, i32 0, i32 9
  %514 = load i32, i32* %513, align 8
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %531

516:                                              ; preds = %511
  %517 = load %struct.httpread*, %struct.httpread** %7, align 8
  %518 = getelementptr inbounds %struct.httpread, %struct.httpread* %517, i32 0, i32 10
  %519 = load i32, i32* %518, align 4
  %520 = sext i32 %519 to i64
  %521 = load %struct.httpread*, %struct.httpread** %7, align 8
  %522 = getelementptr inbounds %struct.httpread, %struct.httpread* %521, i32 0, i32 11
  %523 = load i64, i64* %522, align 8
  %524 = add nsw i64 %520, %523
  %525 = add nsw i64 %524, 2
  %526 = load %struct.httpread*, %struct.httpread** %7, align 8
  %527 = getelementptr inbounds %struct.httpread, %struct.httpread* %526, i32 0, i32 1
  %528 = load i64, i64* %527, align 8
  %529 = sub nsw i64 %525, %528
  %530 = trunc i64 %529 to i32
  store i32 %530, i32* %16, align 4
  br label %567

531:                                              ; preds = %511, %506
  %532 = load %struct.httpread*, %struct.httpread** %7, align 8
  %533 = getelementptr inbounds %struct.httpread, %struct.httpread* %532, i32 0, i32 19
  %534 = load i64, i64* %533, align 8
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %548

536:                                              ; preds = %531
  %537 = load i8*, i8** %9, align 8
  %538 = getelementptr inbounds i8, i8* %537, i32 1
  store i8* %538, i8** %9, align 8
  %539 = load i8, i8* %537, align 1
  %540 = load i8*, i8** %11, align 8
  %541 = getelementptr inbounds i8, i8* %540, i32 1
  store i8* %541, i8** %11, align 8
  store i8 %539, i8* %540, align 1
  %542 = load i32, i32* %8, align 4
  %543 = add nsw i32 %542, -1
  store i32 %543, i32* %8, align 4
  %544 = load %struct.httpread*, %struct.httpread** %7, align 8
  %545 = getelementptr inbounds %struct.httpread, %struct.httpread* %544, i32 0, i32 1
  %546 = load i64, i64* %545, align 8
  %547 = add nsw i64 %546, 1
  store i64 %547, i64* %545, align 8
  br label %337

548:                                              ; preds = %531
  %549 = load %struct.httpread*, %struct.httpread** %7, align 8
  %550 = getelementptr inbounds %struct.httpread, %struct.httpread* %549, i32 0, i32 20
  %551 = load i64, i64* %550, align 8
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %563

553:                                              ; preds = %548
  %554 = load %struct.httpread*, %struct.httpread** %7, align 8
  %555 = getelementptr inbounds %struct.httpread, %struct.httpread* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 8
  %557 = sext i32 %556 to i64
  %558 = load %struct.httpread*, %struct.httpread** %7, align 8
  %559 = getelementptr inbounds %struct.httpread, %struct.httpread* %558, i32 0, i32 1
  %560 = load i64, i64* %559, align 8
  %561 = sub nsw i64 %557, %560
  %562 = trunc i64 %561 to i32
  store i32 %562, i32* %16, align 4
  br label %565

563:                                              ; preds = %548
  %564 = load i32, i32* %8, align 4
  store i32 %564, i32* %16, align 4
  br label %565

565:                                              ; preds = %563, %553
  br label %566

566:                                              ; preds = %565
  br label %567

567:                                              ; preds = %566, %516
  %568 = load i32, i32* %16, align 4
  %569 = icmp slt i32 %568, 0
  br i1 %569, label %570, label %574

570:                                              ; preds = %567
  %571 = load i32, i32* @MSG_DEBUG, align 4
  %572 = load i32, i32* %16, align 4
  %573 = call i32 (i32, i8*, ...) @wpa_printf(i32 %571, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i32 %572)
  br label %674

574:                                              ; preds = %567
  %575 = load i32, i32* %16, align 4
  %576 = load i32, i32* %8, align 4
  %577 = icmp sgt i32 %575, %576
  br i1 %577, label %578, label %580

578:                                              ; preds = %574
  %579 = load i32, i32* %8, align 4
  store i32 %579, i32* %16, align 4
  br label %580

580:                                              ; preds = %578, %574
  %581 = load i8*, i8** %11, align 8
  %582 = load i8*, i8** %9, align 8
  %583 = load i32, i32* %16, align 4
  %584 = call i32 @os_memcpy(i8* %581, i8* %582, i32 %583)
  %585 = load i32, i32* %16, align 4
  %586 = load i8*, i8** %11, align 8
  %587 = sext i32 %585 to i64
  %588 = getelementptr inbounds i8, i8* %586, i64 %587
  store i8* %588, i8** %11, align 8
  %589 = load i32, i32* %16, align 4
  %590 = sext i32 %589 to i64
  %591 = load %struct.httpread*, %struct.httpread** %7, align 8
  %592 = getelementptr inbounds %struct.httpread, %struct.httpread* %591, i32 0, i32 1
  %593 = load i64, i64* %592, align 8
  %594 = add nsw i64 %593, %590
  store i64 %594, i64* %592, align 8
  %595 = load i32, i32* %16, align 4
  %596 = load i8*, i8** %9, align 8
  %597 = sext i32 %595 to i64
  %598 = getelementptr inbounds i8, i8* %596, i64 %597
  store i8* %598, i8** %9, align 8
  %599 = load i32, i32* %16, align 4
  %600 = load i32, i32* %8, align 4
  %601 = sub nsw i32 %600, %599
  store i32 %601, i32* %8, align 4
  br label %337

602:                                              ; preds = %505, %417
  br label %603

603:                                              ; preds = %602, %225
  %604 = load %struct.httpread*, %struct.httpread** %7, align 8
  %605 = getelementptr inbounds %struct.httpread, %struct.httpread* %604, i32 0, i32 19
  %606 = load i64, i64* %605, align 8
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %673

608:                                              ; preds = %603
  %609 = load %struct.httpread*, %struct.httpread** %7, align 8
  %610 = getelementptr inbounds %struct.httpread, %struct.httpread* %609, i32 0, i32 12
  %611 = load i32, i32* %610, align 8
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %673

613:                                              ; preds = %608
  br label %614

614:                                              ; preds = %671, %613
  %615 = load i32, i32* %8, align 4
  %616 = icmp sle i32 %615, 0
  br i1 %616, label %617, label %618

617:                                              ; preds = %614
  br label %672

618:                                              ; preds = %614
  %619 = load i8*, i8** %9, align 8
  %620 = getelementptr inbounds i8, i8* %619, i32 1
  store i8* %620, i8** %9, align 8
  %621 = load i8, i8* %619, align 1
  %622 = sext i8 %621 to i32
  store i32 %622, i32* %18, align 4
  %623 = load i32, i32* %8, align 4
  %624 = add nsw i32 %623, -1
  store i32 %624, i32* %8, align 4
  %625 = load %struct.httpread*, %struct.httpread** %7, align 8
  %626 = getelementptr inbounds %struct.httpread, %struct.httpread* %625, i32 0, i32 13
  %627 = load i32, i32* %626, align 4
  switch i32 %627, label %671 [
    i32 130, label %628
    i32 131, label %638
    i32 129, label %654
    i32 128, label %661
  ]

628:                                              ; preds = %618
  %629 = load i32, i32* %18, align 4
  %630 = icmp eq i32 %629, 13
  br i1 %630, label %631, label %634

631:                                              ; preds = %628
  %632 = load %struct.httpread*, %struct.httpread** %7, align 8
  %633 = getelementptr inbounds %struct.httpread, %struct.httpread* %632, i32 0, i32 13
  store i32 131, i32* %633, align 4
  br label %637

634:                                              ; preds = %628
  %635 = load %struct.httpread*, %struct.httpread** %7, align 8
  %636 = getelementptr inbounds %struct.httpread, %struct.httpread* %635, i32 0, i32 13
  store i32 129, i32* %636, align 4
  br label %637

637:                                              ; preds = %634, %631
  br label %671

638:                                              ; preds = %618
  %639 = load i32, i32* %18, align 4
  %640 = icmp eq i32 %639, 10
  br i1 %640, label %641, label %651

641:                                              ; preds = %638
  %642 = load %struct.httpread*, %struct.httpread** %7, align 8
  %643 = getelementptr inbounds %struct.httpread, %struct.httpread* %642, i32 0, i32 13
  store i32 130, i32* %643, align 4
  %644 = load %struct.httpread*, %struct.httpread** %7, align 8
  %645 = getelementptr inbounds %struct.httpread, %struct.httpread* %644, i32 0, i32 12
  store i32 0, i32* %645, align 8
  %646 = load i32, i32* @MSG_DEBUG, align 4
  %647 = load %struct.httpread*, %struct.httpread** %7, align 8
  %648 = call i32 (i32, i8*, ...) @wpa_printf(i32 %646, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), %struct.httpread* %647)
  %649 = load %struct.httpread*, %struct.httpread** %7, align 8
  %650 = getelementptr inbounds %struct.httpread, %struct.httpread* %649, i32 0, i32 3
  store i32 1, i32* %650, align 4
  br label %691

651:                                              ; preds = %638
  %652 = load %struct.httpread*, %struct.httpread** %7, align 8
  %653 = getelementptr inbounds %struct.httpread, %struct.httpread* %652, i32 0, i32 13
  store i32 129, i32* %653, align 4
  br label %671

654:                                              ; preds = %618
  %655 = load i32, i32* %18, align 4
  %656 = icmp eq i32 %655, 13
  br i1 %656, label %657, label %660

657:                                              ; preds = %654
  %658 = load %struct.httpread*, %struct.httpread** %7, align 8
  %659 = getelementptr inbounds %struct.httpread, %struct.httpread* %658, i32 0, i32 13
  store i32 128, i32* %659, align 4
  br label %660

660:                                              ; preds = %657, %654
  br label %671

661:                                              ; preds = %618
  %662 = load i32, i32* %18, align 4
  %663 = icmp eq i32 %662, 10
  br i1 %663, label %664, label %667

664:                                              ; preds = %661
  %665 = load %struct.httpread*, %struct.httpread** %7, align 8
  %666 = getelementptr inbounds %struct.httpread, %struct.httpread* %665, i32 0, i32 13
  store i32 130, i32* %666, align 4
  br label %670

667:                                              ; preds = %661
  %668 = load %struct.httpread*, %struct.httpread** %7, align 8
  %669 = getelementptr inbounds %struct.httpread, %struct.httpread* %668, i32 0, i32 13
  store i32 129, i32* %669, align 4
  br label %670

670:                                              ; preds = %667, %664
  br label %671

671:                                              ; preds = %618, %670, %660, %651, %637
  br label %614

672:                                              ; preds = %617
  br label %673

673:                                              ; preds = %672, %608, %603
  br label %687

674:                                              ; preds = %570, %459, %399, %379, %317, %300, %250, %158, %106, %66, %52, %36
  %675 = load i32, i32* @MSG_DEBUG, align 4
  %676 = load %struct.httpread*, %struct.httpread** %7, align 8
  %677 = call i32 (i32, i8*, ...) @wpa_printf(i32 %675, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), %struct.httpread* %676)
  %678 = load %struct.httpread*, %struct.httpread** %7, align 8
  %679 = getelementptr inbounds %struct.httpread, %struct.httpread* %678, i32 0, i32 17
  %680 = load i32 (%struct.httpread*, i32, i32)*, i32 (%struct.httpread*, i32, i32)** %679, align 8
  %681 = load %struct.httpread*, %struct.httpread** %7, align 8
  %682 = load %struct.httpread*, %struct.httpread** %7, align 8
  %683 = getelementptr inbounds %struct.httpread, %struct.httpread* %682, i32 0, i32 16
  %684 = load i32, i32* %683, align 4
  %685 = load i32, i32* @HTTPREAD_EVENT_ERROR, align 4
  %686 = call i32 %680(%struct.httpread* %681, i32 %684, i32 %685)
  store i32 1, i32* %19, align 4
  br label %741

687:                                              ; preds = %673, %224, %99
  %688 = load i32, i32* @MSG_DEBUG, align 4
  %689 = load %struct.httpread*, %struct.httpread** %7, align 8
  %690 = call i32 (i32, i8*, ...) @wpa_printf(i32 %688, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), %struct.httpread* %689)
  store i32 1, i32* %19, align 4
  br label %741

691:                                              ; preds = %641, %494, %218, %181, %167, %76
  %692 = load i32, i32* @MSG_DEBUG, align 4
  %693 = load %struct.httpread*, %struct.httpread** %7, align 8
  %694 = getelementptr inbounds %struct.httpread, %struct.httpread* %693, i32 0, i32 1
  %695 = load i64, i64* %694, align 8
  %696 = load %struct.httpread*, %struct.httpread** %7, align 8
  %697 = getelementptr inbounds %struct.httpread, %struct.httpread* %696, i32 0, i32 14
  %698 = load i64, i64* %697, align 8
  %699 = call i32 (i32, i8*, ...) @wpa_printf(i32 %692, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i64 %695, i64 %698)
  %700 = load i32, i32* @MSG_MSGDUMP, align 4
  %701 = load %struct.httpread*, %struct.httpread** %7, align 8
  %702 = getelementptr inbounds %struct.httpread, %struct.httpread* %701, i32 0, i32 8
  %703 = load i8*, i8** %702, align 8
  %704 = load %struct.httpread*, %struct.httpread** %7, align 8
  %705 = getelementptr inbounds %struct.httpread, %struct.httpread* %704, i32 0, i32 1
  %706 = load i64, i64* %705, align 8
  %707 = trunc i64 %706 to i32
  %708 = call i32 @wpa_hexdump_ascii(i32 %700, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* %703, i32 %707)
  %709 = load %struct.httpread*, %struct.httpread** %7, align 8
  %710 = getelementptr inbounds %struct.httpread, %struct.httpread* %709, i32 0, i32 8
  %711 = load i8*, i8** %710, align 8
  %712 = icmp ne i8* %711, null
  br i1 %712, label %713, label %721

713:                                              ; preds = %691
  %714 = load %struct.httpread*, %struct.httpread** %7, align 8
  %715 = getelementptr inbounds %struct.httpread, %struct.httpread* %714, i32 0, i32 8
  %716 = load i8*, i8** %715, align 8
  %717 = load %struct.httpread*, %struct.httpread** %7, align 8
  %718 = getelementptr inbounds %struct.httpread, %struct.httpread* %717, i32 0, i32 1
  %719 = load i64, i64* %718, align 8
  %720 = getelementptr inbounds i8, i8* %716, i64 %719
  store i8 0, i8* %720, align 1
  br label %721

721:                                              ; preds = %713, %691
  %722 = load %struct.httpread*, %struct.httpread** %7, align 8
  %723 = getelementptr inbounds %struct.httpread, %struct.httpread* %722, i32 0, i32 15
  store i32 1, i32* %723, align 8
  %724 = load %struct.httpread*, %struct.httpread** %7, align 8
  %725 = getelementptr inbounds %struct.httpread, %struct.httpread* %724, i32 0, i32 18
  %726 = load i32, i32* %725, align 8
  %727 = load i32, i32* @EVENT_TYPE_READ, align 4
  %728 = call i32 @eloop_unregister_sock(i32 %726, i32 %727)
  %729 = load i32, i32* @httpread_timeout_handler, align 4
  %730 = load %struct.httpread*, %struct.httpread** %7, align 8
  %731 = call i32 @eloop_cancel_timeout(i32 %729, i32* null, %struct.httpread* %730)
  %732 = load %struct.httpread*, %struct.httpread** %7, align 8
  %733 = getelementptr inbounds %struct.httpread, %struct.httpread* %732, i32 0, i32 17
  %734 = load i32 (%struct.httpread*, i32, i32)*, i32 (%struct.httpread*, i32, i32)** %733, align 8
  %735 = load %struct.httpread*, %struct.httpread** %7, align 8
  %736 = load %struct.httpread*, %struct.httpread** %7, align 8
  %737 = getelementptr inbounds %struct.httpread, %struct.httpread* %736, i32 0, i32 16
  %738 = load i32, i32* %737, align 4
  %739 = load i32, i32* @HTTPREAD_EVENT_FILE_READY, align 4
  %740 = call i32 %734(%struct.httpread* %735, i32 %738, i32 %739)
  store i32 0, i32* %19, align 4
  br label %741

741:                                              ; preds = %721, %687, %674
  %742 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %742)
  %743 = load i32, i32* %19, align 4
  switch i32 %743, label %745 [
    i32 0, label %744
    i32 1, label %744
  ]

744:                                              ; preds = %741, %741
  ret void

745:                                              ; preds = %741
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i32) #2

declare dso_local i64 @httpread_hdr_analyze(%struct.httpread*) #2

declare dso_local i32 @os_strncasecmp(i8*, i8*, i32) #2

declare dso_local i8* @os_realloc(i8*, i32) #2

declare dso_local i32 @isxdigit(i8 signext) #2

declare dso_local i64 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #2

declare dso_local i32 @eloop_unregister_sock(i32, i32) #2

declare dso_local i32 @eloop_cancel_timeout(i32, i32*, %struct.httpread*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
