; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_get_ip_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_get_ip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { %struct.ifaddrs*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hv_kvp_ipaddr_value = type { i64, i32, i64 }
%struct.sockaddr_in6 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@HV_KVP_OP_ENUMERATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"getifaddrs failed\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@HV_KVP_OP_GET_IP_INFO = common dso_local global i32 0, align 4
@ADDR_FAMILY_IPV4 = common dso_local global i32 0, align 4
@ADDR_FAMILY_IPV6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i64)* @kvp_get_ip_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_get_ip_info(i32 %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ifaddrs*, align 8
  %13 = alloca %struct.ifaddrs*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.hv_kvp_ipaddr_value*, align 8
  %20 = alloca [5 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store %struct.hv_kvp_ipaddr_value* null, %struct.hv_kvp_ipaddr_value** %19, align 8
  store i32* null, i32** %23, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @HV_KVP_OP_ENUMERATE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i8*, i8** %10, align 8
  store i8* %31, i8** %17, align 8
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %18, align 8
  br label %42

33:                                               ; preds = %5
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to %struct.hv_kvp_ipaddr_value*
  store %struct.hv_kvp_ipaddr_value* %35, %struct.hv_kvp_ipaddr_value** %19, align 8
  %36 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %19, align 8
  %37 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %17, align 8
  store i64 8, i64* %18, align 8
  %40 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %19, align 8
  %41 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %40, i32 0, i32 1
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %33, %30
  %43 = call i64 @getifaddrs(%struct.ifaddrs** %12)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %17, align 8
  %47 = load i64, i64* %18, align 8
  %48 = call i32 @strlcpy(i8* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %6, align 4
  br label %252

50:                                               ; preds = %42
  %51 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  store %struct.ifaddrs* %51, %struct.ifaddrs** %13, align 8
  br label %52

52:                                               ; preds = %243, %111, %91, %76, %60, %50
  %53 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %54 = icmp ne %struct.ifaddrs* %53, null
  br i1 %54, label %55, label %247

55:                                               ; preds = %52
  %56 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %57 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp eq %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %62 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %61, i32 0, i32 0
  %63 = load %struct.ifaddrs*, %struct.ifaddrs** %62, align 8
  store %struct.ifaddrs* %63, %struct.ifaddrs** %13, align 8
  br label %52

64:                                               ; preds = %55
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %69 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = call i64 @strncmp(i32 %70, i8* %71, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %78 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %77, i32 0, i32 0
  %79 = load %struct.ifaddrs*, %struct.ifaddrs** %78, align 8
  store %struct.ifaddrs* %79, %struct.ifaddrs** %13, align 8
  br label %52

80:                                               ; preds = %67, %64
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %85 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %93 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %92, i32 0, i32 0
  %94 = load %struct.ifaddrs*, %struct.ifaddrs** %93, align 8
  store %struct.ifaddrs* %94, %struct.ifaddrs** %13, align 8
  br label %52

95:                                               ; preds = %83, %80
  %96 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %97 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @AF_INET, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %105 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AF_INET6, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %113 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %112, i32 0, i32 0
  %114 = load %struct.ifaddrs*, %struct.ifaddrs** %113, align 8
  store %struct.ifaddrs* %114, %struct.ifaddrs** %13, align 8
  br label %52

115:                                              ; preds = %103, %95
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @HV_KVP_OP_GET_IP_INFO, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %227

119:                                              ; preds = %115
  %120 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %121 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AF_INET, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %119
  %128 = load i32, i32* @ADDR_FAMILY_IPV4, align 4
  %129 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %19, align 8
  %130 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %134 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* @AF_INET, align 4
  %137 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %19, align 8
  %138 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = load i64, i64* %11, align 8
  %142 = call i32 @kvp_process_ip_address(%struct.TYPE_4__* %135, i32 %136, i8* %140, i64 %141, i32* %15)
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %127
  br label %228

146:                                              ; preds = %127
  br label %223

147:                                              ; preds = %119
  %148 = load i32, i32* @ADDR_FAMILY_IPV6, align 4
  %149 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %19, align 8
  %150 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  store i32 0, i32* %21, align 4
  %153 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %19, align 8
  %154 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i8*
  store i8* %156, i8** %24, align 8
  store i64 8, i64* %25, align 8
  %157 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %158 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %157, i32 0, i32 2
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = ptrtoint %struct.TYPE_4__* %159 to i64
  %161 = inttoptr i64 %160 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %161, %struct.sockaddr_in6** %26, align 8
  %162 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %26, align 8
  %163 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to i32*
  store i32* %166, i32** %23, align 8
  store i32 0, i32* %22, align 4
  br label %167

167:                                              ; preds = %180, %147
  %168 = load i32, i32* %22, align 4
  %169 = icmp slt i32 %168, 4
  br i1 %169, label %170, label %183

170:                                              ; preds = %167
  %171 = load i32*, i32** %23, align 8
  %172 = load i32, i32* %22, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = call i64 @hweight32(i32* %174)
  %176 = load i32, i32* %21, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %21, align 4
  br label %180

180:                                              ; preds = %170
  %181 = load i32, i32* %22, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %22, align 4
  br label %167

183:                                              ; preds = %167
  %184 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %185 = load i32, i32* %21, align 4
  %186 = call i32 @snprintf(i8* %184, i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  %187 = load i64, i64* %11, align 8
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = sub i64 %187, %189
  %191 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %192 = call i64 @strlen(i8* %191)
  %193 = add i64 %192, 1
  %194 = icmp ult i64 %190, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %183
  br label %228

196:                                              ; preds = %183
  %197 = load i32, i32* %15, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load i8*, i8** %24, align 8
  %201 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %202 = load i64, i64* %25, align 8
  %203 = call i32 @strlcpy(i8* %200, i8* %201, i64 %202)
  br label %209

204:                                              ; preds = %196
  %205 = load i8*, i8** %24, align 8
  %206 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %207 = load i64, i64* %25, align 8
  %208 = call i32 @strlcat(i8* %205, i8* %206, i64 %207)
  br label %209

209:                                              ; preds = %204, %199
  %210 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %19, align 8
  %211 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = load i64, i64* %25, align 8
  %215 = call i32 @strlcat(i8* %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %214)
  %216 = load i8*, i8** %24, align 8
  %217 = call i64 @strlen(i8* %216)
  %218 = add i64 %217, 1
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = add i64 %220, %218
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %15, align 4
  br label %223

223:                                              ; preds = %209, %146
  %224 = load i8*, i8** %8, align 8
  %225 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %19, align 8
  %226 = call i32 @kvp_get_ipconfig_info(i8* %224, %struct.hv_kvp_ipaddr_value* %225)
  br label %227

227:                                              ; preds = %223, %115
  br label %228

228:                                              ; preds = %227, %195, %145
  %229 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %230 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %229, i32 0, i32 1
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %233 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %232, i32 0, i32 1
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i8*, i8** %17, align 8
  %238 = load i64, i64* %11, align 8
  %239 = call i32 @kvp_process_ip_address(%struct.TYPE_4__* %231, i32 %236, i8* %237, i64 %238, i32* %14)
  store i32 %239, i32* %16, align 4
  %240 = load i32, i32* %16, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %228
  br label %248

243:                                              ; preds = %228
  %244 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %245 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %244, i32 0, i32 0
  %246 = load %struct.ifaddrs*, %struct.ifaddrs** %245, align 8
  store %struct.ifaddrs* %246, %struct.ifaddrs** %13, align 8
  br label %52

247:                                              ; preds = %52
  br label %248

248:                                              ; preds = %247, %242
  %249 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %250 = call i32 @freeifaddrs(%struct.ifaddrs* %249)
  %251 = load i32, i32* %16, align 4
  store i32 %251, i32* %6, align 4
  br label %252

252:                                              ; preds = %248, %45
  %253 = load i32, i32* %6, align 4
  ret i32 %253
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i64 @strncmp(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @kvp_process_ip_address(%struct.TYPE_4__*, i32, i8*, i64, i32*) #1

declare dso_local i64 @hweight32(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @kvp_get_ipconfig_info(i8*, %struct.hv_kvp_ipaddr_value*) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
