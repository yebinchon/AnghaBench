; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_probe_send_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_probe_send_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.module_env = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.sockaddr_storage = type { i64 }
%struct.timeval = type { i32, i32 }
%struct.auth_master = type { i32, i64, i64 }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s: failed lookup, cannot probe to master %s\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AUTH_PROBE_TIMEOUT = common dso_local global i32 0, align 4
@auth_xfer_probe_udp_callback = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot create udp cp for probe %s to %s\00", align 1
@auth_xfer_probe_timer_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to send soa probe for %s to %s\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"auth zone %s soa probe sent to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, %struct.module_env*, i32)* @xfr_probe_send_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfr_probe_send_probe(%struct.auth_xfer* %0, %struct.module_env* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_xfer*, align 8
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca %struct.auth_master*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca [256 x i8], align 16
  %15 = alloca [256 x i8], align 16
  %16 = alloca [256 x i8], align 16
  %17 = alloca [256 x i8], align 16
  %18 = alloca [256 x i8], align 16
  %19 = alloca [256 x i8], align 16
  store %struct.auth_xfer* %0, %struct.auth_xfer** %5, align 8
  store %struct.module_env* %1, %struct.module_env** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %21 = call %struct.auth_master* @xfr_probe_current_master(%struct.auth_xfer* %20)
  store %struct.auth_master* %21, %struct.auth_master** %11, align 8
  store i8* null, i8** %12, align 8
  %22 = load %struct.auth_master*, %struct.auth_master** %11, align 8
  %23 = icmp ne %struct.auth_master* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %340

25:                                               ; preds = %3
  %26 = load %struct.auth_master*, %struct.auth_master** %11, align 8
  %27 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %340

31:                                               ; preds = %25
  %32 = load %struct.auth_master*, %struct.auth_master** %11, align 8
  %33 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %340

37:                                               ; preds = %31
  %38 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %39 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %46 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %53 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @memmove(%struct.sockaddr_storage* %8, i32* %57, i32 %58)
  br label %133

60:                                               ; preds = %37
  %61 = load %struct.auth_master*, %struct.auth_master** %11, align 8
  %62 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @authextstrtoaddr(i32 %63, %struct.sockaddr_storage* %8, i32* %9, i8** %12)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %60
  %67 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %68 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %71 = call i32 @dname_str(i32 %69, i8* %70)
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %73 = load %struct.auth_master*, %struct.auth_master** %11, align 8
  %74 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %72, i32 %75)
  store i32 0, i32* %4, align 4
  br label %340

77:                                               ; preds = %60
  %78 = load i8*, i8** %12, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %132

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AF_INET, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %80
  %86 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  %87 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @ntohs(i8* %88)
  %90 = load %struct.module_env*, %struct.module_env** %6, align 8
  %91 = getelementptr inbounds %struct.module_env, %struct.module_env* %90, i32 0, i32 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %89, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %85
  %97 = load %struct.module_env*, %struct.module_env** %6, align 8
  %98 = getelementptr inbounds %struct.module_env, %struct.module_env* %97, i32 0, i32 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @htons(i32 %101)
  %103 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  %104 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %131

105:                                              ; preds = %85, %80
  %106 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AF_INET6, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %105
  %111 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  %112 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @ntohs(i8* %113)
  %115 = load %struct.module_env*, %struct.module_env** %6, align 8
  %116 = getelementptr inbounds %struct.module_env, %struct.module_env* %115, i32 0, i32 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %114, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %110
  %122 = load %struct.module_env*, %struct.module_env** %6, align 8
  %123 = getelementptr inbounds %struct.module_env, %struct.module_env* %122, i32 0, i32 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @htons(i32 %126)
  %128 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  %129 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %121, %110, %105
  br label %131

131:                                              ; preds = %130, %96
  br label %132

132:                                              ; preds = %131, %77
  br label %133

133:                                              ; preds = %132, %44
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @AUTH_PROBE_TIMEOUT, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load %struct.module_env*, %struct.module_env** %6, align 8
  %139 = getelementptr inbounds %struct.module_env, %struct.module_env* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ub_random(i32 %140)
  %142 = and i32 %141, 65535
  %143 = sext i32 %142 to i64
  %144 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %145 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  store i64 %143, i64* %147, align 8
  br label %148

148:                                              ; preds = %137, %133
  %149 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %150 = load %struct.module_env*, %struct.module_env** %6, align 8
  %151 = getelementptr inbounds %struct.module_env, %struct.module_env* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %154 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @xfr_create_soa_probe_packet(%struct.auth_xfer* %149, i32 %152, i64 %157)
  %159 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %160 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %198

165:                                              ; preds = %148
  %166 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %167 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load i32, i32* %9, align 4
  %174 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %8, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %172, %165
  %177 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %178 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %177, i32 0, i32 0
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %198, label %183

183:                                              ; preds = %176
  %184 = load i32, i32* %9, align 4
  %185 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %8, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %183, %172
  %188 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %189 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %188, i32 0, i32 0
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @comm_point_delete(i32* %192)
  %194 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %195 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %194, i32 0, i32 0
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  store i32* null, i32** %197, align 8
  br label %198

198:                                              ; preds = %187, %183, %176, %148
  %199 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %200 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %251, label %205

205:                                              ; preds = %198
  %206 = load i32, i32* %9, align 4
  %207 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %8, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %211 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %210, i32 0, i32 0
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  store i32 1, i32* %213, align 8
  br label %219

214:                                              ; preds = %205
  %215 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %216 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %215, i32 0, i32 0
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  store i32 0, i32* %218, align 8
  br label %219

219:                                              ; preds = %214, %209
  %220 = load %struct.module_env*, %struct.module_env** %6, align 8
  %221 = getelementptr inbounds %struct.module_env, %struct.module_env* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @auth_xfer_probe_udp_callback, align 4
  %224 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %225 = load i32, i32* %9, align 4
  %226 = call i32* @outnet_comm_point_for_udp(i32 %222, i32 %223, %struct.auth_xfer* %224, %struct.sockaddr_storage* %8, i32 %225)
  %227 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %228 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %227, i32 0, i32 0
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 3
  store i32* %226, i32** %230, align 8
  %231 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %232 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %231, i32 0, i32 0
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %250, label %237

237:                                              ; preds = %219
  %238 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %239 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %242 = call i32 @dname_str(i32 %240, i8* %241)
  %243 = load i32, i32* %9, align 4
  %244 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %245 = call i32 @addr_to_str(%struct.sockaddr_storage* %8, i32 %243, i8* %244, i32 256)
  %246 = load i64, i64* @VERB_ALGO, align 8
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %248 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %249 = call i32 @verbose(i64 %246, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %247, i8* %248)
  store i32 0, i32* %4, align 4
  br label %340

250:                                              ; preds = %219
  br label %251

251:                                              ; preds = %250, %198
  %252 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %253 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %252, i32 0, i32 0
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %278, label %258

258:                                              ; preds = %251
  %259 = load %struct.module_env*, %struct.module_env** %6, align 8
  %260 = getelementptr inbounds %struct.module_env, %struct.module_env* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @auth_xfer_probe_timer_callback, align 4
  %263 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %264 = call i64 @comm_timer_create(i32 %261, i32 %262, %struct.auth_xfer* %263)
  %265 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %266 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %265, i32 0, i32 0
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 2
  store i64 %264, i64* %268, align 8
  %269 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %270 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %269, i32 0, i32 0
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %258
  %276 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %340

277:                                              ; preds = %258
  br label %278

278:                                              ; preds = %277, %251
  %279 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %280 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %279, i32 0, i32 0
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.module_env*, %struct.module_env** %6, align 8
  %285 = getelementptr inbounds %struct.module_env, %struct.module_env* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %288 = load i32, i32* %9, align 4
  %289 = call i32 @comm_point_send_udp_msg(i32* %283, i32 %286, %struct.sockaddr* %287, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %304, label %291

291:                                              ; preds = %278
  %292 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %293 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %296 = call i32 @dname_str(i32 %294, i8* %295)
  %297 = load i32, i32* %9, align 4
  %298 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %299 = call i32 @addr_to_str(%struct.sockaddr_storage* %8, i32 %297, i8* %298, i32 256)
  %300 = load i64, i64* @VERB_ALGO, align 8
  %301 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %302 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %303 = call i32 @verbose(i64 %300, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %301, i8* %302)
  store i32 0, i32* %4, align 4
  br label %340

304:                                              ; preds = %278
  %305 = load i64, i64* @verbosity, align 8
  %306 = load i64, i64* @VERB_ALGO, align 8
  %307 = icmp sge i64 %305, %306
  br i1 %307, label %308, label %321

308:                                              ; preds = %304
  %309 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %310 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %313 = call i32 @dname_str(i32 %311, i8* %312)
  %314 = load i32, i32* %9, align 4
  %315 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %316 = call i32 @addr_to_str(%struct.sockaddr_storage* %8, i32 %314, i8* %315, i32 256)
  %317 = load i64, i64* @VERB_ALGO, align 8
  %318 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %319 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %320 = call i32 @verbose(i64 %317, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %318, i8* %319)
  br label %321

321:                                              ; preds = %308, %304
  %322 = load i32, i32* %7, align 4
  %323 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %324 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %323, i32 0, i32 0
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 1
  store i32 %322, i32* %326, align 4
  %327 = load i32, i32* %7, align 4
  %328 = sdiv i32 %327, 1000
  %329 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %328, i32* %329, align 4
  %330 = load i32, i32* %7, align 4
  %331 = srem i32 %330, 1000
  %332 = mul nsw i32 %331, 1000
  %333 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %332, i32* %333, align 4
  %334 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %335 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %334, i32 0, i32 0
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = call i32 @comm_timer_set(i64 %338, %struct.timeval* %10)
  store i32 1, i32* %4, align 4
  br label %340

340:                                              ; preds = %321, %291, %275, %237, %66, %36, %30, %24
  %341 = load i32, i32* %4, align 4
  ret i32 %341
}

declare dso_local %struct.auth_master* @xfr_probe_current_master(%struct.auth_xfer*) #1

declare dso_local i32 @memmove(%struct.sockaddr_storage*, i32*, i32) #1

declare dso_local i32 @authextstrtoaddr(i32, %struct.sockaddr_storage*, i32*, i8**) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i64 @ntohs(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ub_random(i32) #1

declare dso_local i32 @xfr_create_soa_probe_packet(%struct.auth_xfer*, i32, i64) #1

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i32) #1

declare dso_local i32 @comm_point_delete(i32*) #1

declare dso_local i32* @outnet_comm_point_for_udp(i32, i32, %struct.auth_xfer*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @addr_to_str(%struct.sockaddr_storage*, i32, i8*, i32) #1

declare dso_local i32 @verbose(i64, i8*, i8*, i8*) #1

declare dso_local i64 @comm_timer_create(i32, i32, %struct.auth_xfer*) #1

declare dso_local i32 @comm_point_send_udp_msg(i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @comm_timer_set(i64, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
