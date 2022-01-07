; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_transfer_init_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_transfer_init_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i32*, i64, %struct.TYPE_3__*, %struct.auth_master* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.auth_master = type { i32, i32, i32, i32, i64, i64 }
%struct.module_env = type { i32, i32, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"%s: failed lookup, cannot transfer from master %s\00", align 1
@auth_xfer_transfer_timer_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@AUTH_TRANSFER_TIMEOUT = common dso_local global i32 0, align 4
@auth_xfer_transfer_http_callback = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"cannot create http cp connection for %s to %s\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"auth zone %s transfer next HTTP fetch from %s started\00", align 1
@auth_xfer_transfer_tcp_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"cannot create tcp cp connection for xfr %s to %s\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"auth zone %s transfer next %s fetch from %s started\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"IXFR\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"AXFR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, %struct.module_env*)* @xfr_transfer_init_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfr_transfer_init_fetch(%struct.auth_xfer* %0, %struct.module_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_xfer*, align 8
  %5 = alloca %struct.module_env*, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.auth_master*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.timeval, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca [256 x i8], align 16
  %14 = alloca [256 x i8], align 16
  %15 = alloca [256 x i8], align 16
  %16 = alloca [256 x i8], align 16
  %17 = alloca [256 x i8], align 16
  %18 = alloca [256 x i8], align 16
  %19 = alloca [256 x i8], align 16
  %20 = alloca [256 x i8], align 16
  store %struct.auth_xfer* %0, %struct.auth_xfer** %4, align 8
  store %struct.module_env* %1, %struct.module_env** %5, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %22 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  %25 = load %struct.auth_master*, %struct.auth_master** %24, align 8
  store %struct.auth_master* %25, %struct.auth_master** %8, align 8
  store i8* null, i8** %9, align 8
  %26 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %27 = icmp ne %struct.auth_master* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %305

29:                                               ; preds = %2
  %30 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %31 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %305

35:                                               ; preds = %29
  %36 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %37 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %44 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %51 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @memmove(%struct.sockaddr_storage* %6, i32* %55, i32 %56)
  br label %76

58:                                               ; preds = %35
  %59 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %60 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @authextstrtoaddr(i32 %61, %struct.sockaddr_storage* %6, i32* %7, i8** %9)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %58
  %65 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %66 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %69 = call i32 @dname_str(i32 %67, i8* %68)
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %71 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %72 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %70, i32 %73)
  store i32 0, i32* %3, align 4
  br label %305

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75, %42
  %77 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %78 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %85 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @comm_point_delete(i32* %88)
  %90 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %91 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %83, %76
  %95 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %96 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %94
  %102 = load %struct.module_env*, %struct.module_env** %5, align 8
  %103 = getelementptr inbounds %struct.module_env, %struct.module_env* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @auth_xfer_transfer_timer_callback, align 4
  %106 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %107 = call i64 @comm_timer_create(i32 %104, i32 %105, %struct.auth_xfer* %106)
  %108 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %109 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i64 %107, i64* %111, align 8
  %112 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %113 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %101
  %119 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %305

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %120, %94
  %122 = load i32, i32* @AUTH_TRANSFER_TIMEOUT, align 4
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sdiv i32 %123, 1000
  %125 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %11, align 4
  %127 = srem i32 %126, 1000
  %128 = mul nsw i32 %127, 1000
  %129 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %131 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %214

134:                                              ; preds = %121
  %135 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %136 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %140 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32* @strchr(i32 %141, i8 signext 64)
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %134
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %147 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @sockaddr_store_port(%struct.sockaddr_storage* %6, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %144, %134
  %151 = load %struct.module_env*, %struct.module_env** %5, align 8
  %152 = getelementptr inbounds %struct.module_env, %struct.module_env* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @auth_xfer_transfer_http_callback, align 4
  %155 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %158 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %161 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %164 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32* @outnet_comm_point_for_http(i32 %153, i32 %154, %struct.auth_xfer* %155, %struct.sockaddr_storage* %6, i32 %156, i32 -1, i32 %159, i32 %162, i32 %165)
  %167 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %168 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  store i32* %166, i32** %170, align 8
  %171 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %172 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %190, label %177

177:                                              ; preds = %150
  %178 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %179 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %182 = call i32 @dname_str(i32 %180, i8* %181)
  %183 = load i32, i32* %7, align 4
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %185 = call i32 @addr_to_str(%struct.sockaddr_storage* %6, i32 %183, i8* %184, i32 256)
  %186 = load i64, i64* @VERB_ALGO, align 8
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %188 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %189 = call i32 (i64, i8*, i8*, i8*, ...) @verbose(i64 %186, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %187, i8* %188)
  store i32 0, i32* %3, align 4
  br label %305

190:                                              ; preds = %150
  %191 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %192 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @comm_timer_set(i64 %195, %struct.timeval* %10)
  %197 = load i64, i64* @verbosity, align 8
  %198 = load i64, i64* @VERB_ALGO, align 8
  %199 = icmp sge i64 %197, %198
  br i1 %199, label %200, label %213

200:                                              ; preds = %190
  %201 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %202 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %205 = call i32 @dname_str(i32 %203, i8* %204)
  %206 = load i32, i32* %7, align 4
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %208 = call i32 @addr_to_str(%struct.sockaddr_storage* %6, i32 %206, i8* %207, i32 256)
  %209 = load i64, i64* @VERB_ALGO, align 8
  %210 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %211 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %212 = call i32 (i64, i8*, i8*, i8*, ...) @verbose(i64 %209, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %210, i8* %211)
  br label %213

213:                                              ; preds = %200, %190
  store i32 1, i32* %3, align 4
  br label %305

214:                                              ; preds = %121
  %215 = load %struct.module_env*, %struct.module_env** %5, align 8
  %216 = getelementptr inbounds %struct.module_env, %struct.module_env* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ub_random(i32 %217)
  %219 = and i32 %218, 65535
  %220 = sext i32 %219 to i64
  %221 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %222 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %221, i32 0, i32 0
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 3
  store i64 %220, i64* %224, align 8
  %225 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %226 = load %struct.module_env*, %struct.module_env** %5, align 8
  %227 = getelementptr inbounds %struct.module_env, %struct.module_env* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %230 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %229, i32 0, i32 0
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.auth_master*, %struct.auth_master** %8, align 8
  %235 = call i32 @xfr_create_ixfr_packet(%struct.auth_xfer* %225, i32 %228, i64 %233, %struct.auth_master* %234)
  %236 = load %struct.module_env*, %struct.module_env** %5, align 8
  %237 = getelementptr inbounds %struct.module_env, %struct.module_env* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @auth_xfer_transfer_tcp_callback, align 4
  %240 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %241 = load i32, i32* %7, align 4
  %242 = load %struct.module_env*, %struct.module_env** %5, align 8
  %243 = getelementptr inbounds %struct.module_env, %struct.module_env* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i8*, i8** %9, align 8
  %246 = icmp ne i8* %245, null
  %247 = zext i1 %246 to i32
  %248 = load i8*, i8** %9, align 8
  %249 = call i32* @outnet_comm_point_for_tcp(i32 %238, i32 %239, %struct.auth_xfer* %240, %struct.sockaddr_storage* %6, i32 %241, i32 %244, i32 -1, i32 %247, i8* %248)
  %250 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %251 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %250, i32 0, i32 0
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 2
  store i32* %249, i32** %253, align 8
  %254 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %255 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %254, i32 0, i32 0
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %273, label %260

260:                                              ; preds = %214
  %261 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %262 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %265 = call i32 @dname_str(i32 %263, i8* %264)
  %266 = load i32, i32* %7, align 4
  %267 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %268 = call i32 @addr_to_str(%struct.sockaddr_storage* %6, i32 %266, i8* %267, i32 256)
  %269 = load i64, i64* @VERB_ALGO, align 8
  %270 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %271 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %272 = call i32 (i64, i8*, i8*, i8*, ...) @verbose(i64 %269, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %270, i8* %271)
  store i32 0, i32* %3, align 4
  br label %305

273:                                              ; preds = %214
  %274 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %275 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %274, i32 0, i32 0
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @comm_timer_set(i64 %278, %struct.timeval* %10)
  %280 = load i64, i64* @verbosity, align 8
  %281 = load i64, i64* @VERB_ALGO, align 8
  %282 = icmp sge i64 %280, %281
  br i1 %282, label %283, label %304

283:                                              ; preds = %273
  %284 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %285 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %288 = call i32 @dname_str(i32 %286, i8* %287)
  %289 = load i32, i32* %7, align 4
  %290 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %291 = call i32 @addr_to_str(%struct.sockaddr_storage* %6, i32 %289, i8* %290, i32 256)
  %292 = load i64, i64* @VERB_ALGO, align 8
  %293 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %294 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %295 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %294, i32 0, i32 0
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %302 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %303 = call i32 (i64, i8*, i8*, i8*, ...) @verbose(i64 %292, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %293, i8* %301, i8* %302)
  br label %304

304:                                              ; preds = %283, %273
  store i32 1, i32* %3, align 4
  br label %305

305:                                              ; preds = %304, %260, %213, %177, %118, %64, %34, %28
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local i32 @memmove(%struct.sockaddr_storage*, i32*, i32) #1

declare dso_local i32 @authextstrtoaddr(i32, %struct.sockaddr_storage*, i32*, i8**) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @comm_point_delete(i32*) #1

declare dso_local i64 @comm_timer_create(i32, i32, %struct.auth_xfer*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @sockaddr_store_port(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32* @outnet_comm_point_for_http(i32, i32, %struct.auth_xfer*, %struct.sockaddr_storage*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @addr_to_str(%struct.sockaddr_storage*, i32, i8*, i32) #1

declare dso_local i32 @verbose(i64, i8*, i8*, i8*, ...) #1

declare dso_local i32 @comm_timer_set(i64, %struct.timeval*) #1

declare dso_local i32 @ub_random(i32) #1

declare dso_local i32 @xfr_create_ixfr_packet(%struct.auth_xfer*, i32, i64, %struct.auth_master*) #1

declare dso_local i32* @outnet_comm_point_for_tcp(i32, i32, %struct.auth_xfer*, %struct.sockaddr_storage*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
