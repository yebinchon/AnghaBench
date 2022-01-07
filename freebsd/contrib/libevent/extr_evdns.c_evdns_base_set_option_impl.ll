; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_base_set_option_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_base_set_option_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ndots:\00", align 1
@DNS_OPTION_SEARCH = common dso_local global i32 0, align 4
@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Setting ndots to %d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"timeout:\00", align 1
@DNS_OPTION_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Setting timeout to %s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"getaddrinfo-allow-skew:\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Setting getaddrinfo-allow-skew to %s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"max-timeouts:\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Setting maximum allowed timeouts to %d\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"max-inflight:\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Setting maximum inflight requests to %d\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"attempts:\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Setting retries to %d\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"randomize-case:\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"bind-to:\00", align 1
@DNS_OPTION_NAMESERVERS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"initial-probe-timeout:\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Setting initial probe timeout to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdns_base*, i8*, i8*, i32)* @evdns_base_set_option_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_base_set_option_impl(%struct.evdns_base* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evdns_base*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.timeval, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %20 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @str_matches_option(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = call i8* @strtoint(i8* %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %255

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @DNS_OPTION_SEARCH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %255

37:                                               ; preds = %31
  %38 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32, i8*, ...) @log(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %42 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %41, i32 0, i32 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = call %struct.TYPE_2__* (...) @search_state_new()
  %47 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %48 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %47, i32 0, i32 8
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %48, align 8
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %51 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %50, i32 0, i32 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %255

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %58 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %57, i32 0, i32 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  br label %254

61:                                               ; preds = %4
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @str_matches_option(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @evdns_strtotimeval(i8* %66, %struct.timeval* %11)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 -1, i32* %5, align 4
  br label %255

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @DNS_OPTION_MISC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %255

76:                                               ; preds = %70
  %77 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i32, i8*, ...) @log(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %81 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %80, i32 0, i32 7
  %82 = call i32 @memcpy(i32* %81, %struct.timeval* %11, i32 4)
  br label %253

83:                                               ; preds = %61
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @str_matches_option(i8* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @evdns_strtotimeval(i8* %88, %struct.timeval* %12)
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 -1, i32* %5, align 4
  br label %255

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @DNS_OPTION_MISC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  store i32 0, i32* %5, align 4
  br label %255

98:                                               ; preds = %92
  %99 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 (i32, i8*, ...) @log(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  %102 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %103 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %102, i32 0, i32 6
  %104 = call i32 @memcpy(i32* %103, %struct.timeval* %12, i32 4)
  br label %252

105:                                              ; preds = %83
  %106 = load i8*, i8** %7, align 8
  %107 = call i64 @str_matches_option(i8* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @strtoint_clipped(i8* %110, i32 1, i32 255)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 -1, i32* %5, align 4
  br label %255

115:                                              ; preds = %109
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @DNS_OPTION_MISC, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %255

121:                                              ; preds = %115
  %122 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 (i32, i8*, ...) @log(i32 %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %127 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %251

128:                                              ; preds = %105
  %129 = load i8*, i8** %7, align 8
  %130 = call i64 @str_matches_option(i8* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @strtoint_clipped(i8* %133, i32 1, i32 65000)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 -1, i32* %5, align 4
  br label %255

138:                                              ; preds = %132
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @DNS_OPTION_MISC, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %255

144:                                              ; preds = %138
  %145 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 (i32, i8*, ...) @log(i32 %145, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %146)
  %148 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @evdns_base_set_max_requests_inflight(%struct.evdns_base* %148, i32 %149)
  br label %250

151:                                              ; preds = %128
  %152 = load i8*, i8** %7, align 8
  %153 = call i64 @str_matches_option(i8* %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %179

155:                                              ; preds = %151
  %156 = load i8*, i8** %8, align 8
  %157 = call i8* @strtoint(i8* %156)
  %158 = ptrtoint i8* %157 to i32
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store i32 -1, i32* %5, align 4
  br label %255

162:                                              ; preds = %155
  %163 = load i32, i32* %15, align 4
  %164 = icmp sgt i32 %163, 255
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 255, i32* %15, align 4
  br label %166

166:                                              ; preds = %165, %162
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @DNS_OPTION_MISC, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  store i32 0, i32* %5, align 4
  br label %255

172:                                              ; preds = %166
  %173 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %174 = load i32, i32* %15, align 4
  %175 = call i32 (i32, i8*, ...) @log(i32 %173, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %15, align 4
  %177 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %178 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  br label %249

179:                                              ; preds = %151
  %180 = load i8*, i8** %7, align 8
  %181 = call i64 @str_matches_option(i8* %180, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %179
  %184 = load i8*, i8** %8, align 8
  %185 = call i8* @strtoint(i8* %184)
  %186 = ptrtoint i8* %185 to i32
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @DNS_OPTION_MISC, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %183
  store i32 0, i32* %5, align 4
  br label %255

192:                                              ; preds = %183
  %193 = load i32, i32* %16, align 4
  %194 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %195 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  br label %248

196:                                              ; preds = %179
  %197 = load i8*, i8** %7, align 8
  %198 = call i64 @str_matches_option(i8* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %196
  store i32 4, i32* %17, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @DNS_OPTION_NAMESERVERS, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %200
  store i32 0, i32* %5, align 4
  br label %255

206:                                              ; preds = %200
  %207 = load i8*, i8** %8, align 8
  %208 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %209 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %208, i32 0, i32 5
  %210 = bitcast i32* %209 to %struct.sockaddr*
  %211 = call i64 @evutil_parse_sockaddr_port(i8* %207, %struct.sockaddr* %210, i32* %17)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %206
  store i32 -1, i32* %5, align 4
  br label %255

214:                                              ; preds = %206
  %215 = load i32, i32* %17, align 4
  %216 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %217 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 4
  br label %247

218:                                              ; preds = %196
  %219 = load i8*, i8** %7, align 8
  %220 = call i64 @str_matches_option(i8* %219, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %246

222:                                              ; preds = %218
  %223 = load i8*, i8** %8, align 8
  %224 = call i32 @evdns_strtotimeval(i8* %223, %struct.timeval* %18)
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 -1, i32* %5, align 4
  br label %255

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %229, 3600
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  store i32 3600, i32* %232, align 4
  br label %233

233:                                              ; preds = %231, %227
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* @DNS_OPTION_MISC, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %233
  store i32 0, i32* %5, align 4
  br label %255

239:                                              ; preds = %233
  %240 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %241 = load i8*, i8** %8, align 8
  %242 = call i32 (i32, i8*, ...) @log(i32 %240, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i8* %241)
  %243 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %244 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %243, i32 0, i32 4
  %245 = call i32 @memcpy(i32* %244, %struct.timeval* %18, i32 4)
  br label %246

246:                                              ; preds = %239, %218
  br label %247

247:                                              ; preds = %246, %214
  br label %248

248:                                              ; preds = %247, %192
  br label %249

249:                                              ; preds = %248, %172
  br label %250

250:                                              ; preds = %249, %144
  br label %251

251:                                              ; preds = %250, %121
  br label %252

252:                                              ; preds = %251, %98
  br label %253

253:                                              ; preds = %252, %76
  br label %254

254:                                              ; preds = %253, %55
  store i32 0, i32* %5, align 4
  br label %255

255:                                              ; preds = %254, %238, %226, %213, %205, %191, %171, %161, %143, %137, %120, %114, %97, %91, %75, %69, %54, %36, %30
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i64 @str_matches_option(i8*, i8*) #1

declare dso_local i8* @strtoint(i8*) #1

declare dso_local i32 @log(i32, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @search_state_new(...) #1

declare dso_local i32 @evdns_strtotimeval(i8*, %struct.timeval*) #1

declare dso_local i32 @memcpy(i32*, %struct.timeval*, i32) #1

declare dso_local i32 @strtoint_clipped(i8*, i32, i32) #1

declare dso_local i32 @evdns_base_set_max_requests_inflight(%struct.evdns_base*, i32) #1

declare dso_local i64 @evutil_parse_sockaddr_port(i8*, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
