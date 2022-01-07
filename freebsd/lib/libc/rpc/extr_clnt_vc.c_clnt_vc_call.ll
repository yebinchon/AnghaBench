; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_vc.c_clnt_vc_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_vc.c_clnt_vc_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32* }
%struct.TYPE_41__ = type { %struct.TYPE_36__*, i64 }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_40__ = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.ct_data = type { i64, i64, %struct.TYPE_34__, %struct.TYPE_37__, %struct.timeval, i32, %struct.TYPE_40__ }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_37__ = type { i64, i32* }
%struct.rpc_msg = type { i64, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { %struct.TYPE_33__, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i64 (%struct.TYPE_40__*, i8*)*, i32* }

@SIG_SETMASK = common dso_local global i32 0, align 4
@clnt_fd_lock = common dso_local global i32 0, align 4
@vc_fd_locks = common dso_local global i32* null, align 8
@vc_cv = common dso_local global i32* null, align 8
@__isthreaded = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@XDR_ENCODE = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8
@RPCSEC_GSS = common dso_local global i64 0, align 8
@RPC_CANTENCODEARGS = common dso_local global i8* null, align 8
@RPC_CANTSEND = common dso_local global i32 0, align 4
@RPC_TIMEDOUT = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@_null_auth = common dso_local global %struct.TYPE_33__ zeroinitializer, align 8
@xdr_void = common dso_local global i64 0, align 8
@RPC_AUTHERROR = common dso_local global i64 0, align 8
@AUTH_INVALIDRESP = common dso_local global i32 0, align 4
@RPC_CANTDECODERES = common dso_local global i64 0, align 8
@XDR_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_41__*, i32, i64 (%struct.TYPE_40__*, i8*)*, i8*, i64 (%struct.TYPE_40__*, i8*)*, i8*, %struct.timeval*)* @clnt_vc_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clnt_vc_call(%struct.TYPE_41__* %0, i32 %1, i64 (%struct.TYPE_40__*, i8*)* %2, i8* %3, i64 (%struct.TYPE_40__*, i8*)* %4, i8* %5, %struct.timeval* byval(%struct.timeval) align 8 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_41__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64 (%struct.TYPE_40__*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64 (%struct.TYPE_40__*, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ct_data*, align 8
  %16 = alloca %struct.TYPE_40__*, align 8
  %17 = alloca %struct.rpc_msg, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 (%struct.TYPE_40__*, i8*)* %2, i64 (%struct.TYPE_40__*, i8*)** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 (%struct.TYPE_40__*, i8*)* %4, i64 (%struct.TYPE_40__*, i8*)** %13, align 8
  store i8* %5, i8** %14, align 8
  %26 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ct_data*
  store %struct.ct_data* %29, %struct.ct_data** %15, align 8
  %30 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %31 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %30, i32 0, i32 6
  store %struct.TYPE_40__* %31, %struct.TYPE_40__** %16, align 8
  %32 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %33 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 0
  store i64* %34, i64** %19, align 8
  store i32 2, i32* %21, align 4
  %35 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %36 = icmp ne %struct.TYPE_41__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = call i32 @sigfillset(i32* %23)
  %40 = load i32, i32* @SIG_SETMASK, align 4
  %41 = call i32 @thr_sigsetmask(i32 %40, i32* %23, i32* %22)
  %42 = call i32 @mutex_lock(i32* @clnt_fd_lock)
  br label %43

43:                                               ; preds = %51, %7
  %44 = load i32*, i32** @vc_fd_locks, align 8
  %45 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %46 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load i32*, i32** @vc_cv, align 8
  %53 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %54 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = call i32 @cond_wait(i32* %56, i32* @clnt_fd_lock)
  br label %43

58:                                               ; preds = %43
  %59 = load i64, i64* @__isthreaded, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 1, i32* %24, align 4
  br label %63

62:                                               ; preds = %58
  store i32 0, i32* %24, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %24, align 4
  %65 = load i32*, i32** @vc_fd_locks, align 8
  %66 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %67 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = call i32 @mutex_unlock(i32* @clnt_fd_lock)
  %71 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %72 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %63
  %76 = call i64 @time_not_ok(%struct.timeval* %6)
  %77 = load i64, i64* @FALSE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %81 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %80, i32 0, i32 4
  %82 = bitcast %struct.timeval* %81 to i8*
  %83 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 16, i1 false)
  br label %84

84:                                               ; preds = %79, %75
  br label %85

85:                                               ; preds = %84, %63
  %86 = load i64 (%struct.TYPE_40__*, i8*)*, i64 (%struct.TYPE_40__*, i8*)** %13, align 8
  %87 = icmp eq i64 (%struct.TYPE_40__*, i8*)* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i64, i64* @FALSE, align 8
  br label %100

98:                                               ; preds = %92, %88, %85
  %99 = load i64, i64* @TRUE, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i64 [ %97, %96 ], [ %99, %98 ]
  store i64 %101, i64* %20, align 8
  br label %102

102:                                              ; preds = %436, %100
  %103 = load i32, i32* @XDR_ENCODE, align 4
  %104 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i64, i64* @RPC_SUCCESS, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %109 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load i64*, i64** %19, align 8
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* %111, align 8
  %114 = call i64 @ntohl(i64 %113)
  store i64 %114, i64* %18, align 8
  %115 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @RPCSEC_GSS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %179

123:                                              ; preds = %102
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %125 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %126 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %130 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @XDR_PUTBYTES(%struct.TYPE_40__* %124, i32* %128, i64 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %123
  %135 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %136 = call i32 @XDR_PUTINT32(%struct.TYPE_40__* %135, i32* %10)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_36__*, %struct.TYPE_36__** %140, align 8
  %142 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %143 = call i32 @AUTH_MARSHALL(%struct.TYPE_36__* %141, %struct.TYPE_40__* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load i64 (%struct.TYPE_40__*, i8*)*, i64 (%struct.TYPE_40__*, i8*)** %11, align 8
  %147 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = call i64 %146(%struct.TYPE_40__* %147, i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %178, label %151

151:                                              ; preds = %145, %138, %134, %123
  %152 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %153 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* @RPC_SUCCESS, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %151
  %160 = load i8*, i8** @RPC_CANTENCODEARGS, align 8
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %163 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  br label %165

165:                                              ; preds = %159, %151
  %166 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %167 = load i64, i64* @TRUE, align 8
  %168 = call i32 @xdrrec_endofrecord(%struct.TYPE_40__* %166, i64 %167)
  %169 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %170 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %22, align 4
  %173 = call i32 @release_fd_lock(i64 %171, i32 %172)
  %174 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %175 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %8, align 4
  br label %448

178:                                              ; preds = %145
  br label %235

179:                                              ; preds = %102
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @htonl(i32 %180)
  %182 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %183 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %187 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32 %181, i32* %189, align 4
  %190 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_36__*, %struct.TYPE_36__** %191, align 8
  %193 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %194 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %198 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = add i64 %199, 4
  %201 = trunc i64 %200 to i32
  %202 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %203 = load i64 (%struct.TYPE_40__*, i8*)*, i64 (%struct.TYPE_40__*, i8*)** %11, align 8
  %204 = load i8*, i8** %12, align 8
  %205 = call i32 @__rpc_gss_wrap(%struct.TYPE_36__* %192, i32* %196, i32 %201, %struct.TYPE_40__* %202, i64 (%struct.TYPE_40__*, i8*)* %203, i8* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %234, label %207

207:                                              ; preds = %179
  %208 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %209 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* @RPC_SUCCESS, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %207
  %216 = load i8*, i8** @RPC_CANTENCODEARGS, align 8
  %217 = ptrtoint i8* %216 to i32
  %218 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %219 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %219, i32 0, i32 0
  store i32 %217, i32* %220, align 8
  br label %221

221:                                              ; preds = %215, %207
  %222 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %223 = load i64, i64* @TRUE, align 8
  %224 = call i32 @xdrrec_endofrecord(%struct.TYPE_40__* %222, i64 %223)
  %225 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %226 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %22, align 4
  %229 = call i32 @release_fd_lock(i64 %227, i32 %228)
  %230 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %231 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %8, align 4
  br label %448

234:                                              ; preds = %179
  br label %235

235:                                              ; preds = %234, %178
  %236 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %237 = load i64, i64* %20, align 8
  %238 = call i32 @xdrrec_endofrecord(%struct.TYPE_40__* %236, i64 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %250, label %240

240:                                              ; preds = %235
  %241 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %242 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* %22, align 4
  %245 = call i32 @release_fd_lock(i64 %243, i32 %244)
  %246 = load i32, i32* @RPC_CANTSEND, align 4
  %247 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %248 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %248, i32 0, i32 0
  store i32 %246, i32* %249, align 8
  store i32 %246, i32* %8, align 4
  br label %448

250:                                              ; preds = %235
  %251 = load i64, i64* %20, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %250
  %254 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %255 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* %22, align 4
  %258 = call i32 @release_fd_lock(i64 %256, i32 %257)
  %259 = load i64, i64* @RPC_SUCCESS, align 8
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %8, align 4
  br label %448

261:                                              ; preds = %250
  %262 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %279

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %265
  %270 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %271 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* %22, align 4
  %274 = call i32 @release_fd_lock(i64 %272, i32 %273)
  %275 = load i32, i32* @RPC_TIMEDOUT, align 4
  %276 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %277 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 0
  store i32 %275, i32* %278, align 8
  store i32 %275, i32* %8, align 4
  br label %448

279:                                              ; preds = %265, %261
  %280 = load i32, i32* @XDR_DECODE, align 4
  %281 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %282 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %340, %323, %279
  %284 = load i64, i64* @TRUE, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %341

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %17, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %287, i32 0, i32 0
  %289 = bitcast %struct.TYPE_33__* %288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %289, i8* align 8 bitcast (%struct.TYPE_33__* @_null_auth to i8*), i64 8, i1 false)
  %290 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %17, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %291, i32 0, i32 1
  store i32* null, i32** %292, align 8
  %293 = load i64, i64* @xdr_void, align 8
  %294 = inttoptr i64 %293 to i64 (%struct.TYPE_40__*, i8*)*
  %295 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %17, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %296, i32 0, i32 0
  store i64 (%struct.TYPE_40__*, i8*)* %294, i64 (%struct.TYPE_40__*, i8*)** %297, align 8
  %298 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %299 = call i32 @xdrrec_skiprecord(%struct.TYPE_40__* %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %311, label %301

301:                                              ; preds = %286
  %302 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %303 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* %22, align 4
  %306 = call i32 @release_fd_lock(i64 %304, i32 %305)
  %307 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %308 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  store i32 %310, i32* %8, align 4
  br label %448

311:                                              ; preds = %286
  %312 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %313 = call i32 @xdr_replymsg(%struct.TYPE_40__* %312, %struct.rpc_msg* %17)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %334, label %315

315:                                              ; preds = %311
  %316 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %317 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = sext i32 %319 to i64
  %321 = load i64, i64* @RPC_SUCCESS, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %315
  br label %283

324:                                              ; preds = %315
  %325 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %326 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i32, i32* %22, align 4
  %329 = call i32 @release_fd_lock(i64 %327, i32 %328)
  %330 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %331 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  store i32 %333, i32* %8, align 4
  br label %448

334:                                              ; preds = %311
  %335 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %17, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* %18, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  br label %341

340:                                              ; preds = %334
  br label %283

341:                                              ; preds = %339, %283
  %342 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %343 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %342, i32 0, i32 2
  %344 = call i32 @_seterr_reply(%struct.rpc_msg* %17, %struct.TYPE_34__* %343)
  %345 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %346 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = sext i32 %348 to i64
  %350 = load i64, i64* @RPC_SUCCESS, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %426

352:                                              ; preds = %341
  %353 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_36__*, %struct.TYPE_36__** %354, align 8
  %356 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %17, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %356, i32 0, i32 0
  %358 = call i32 @AUTH_VALIDATE(%struct.TYPE_36__* %355, %struct.TYPE_33__* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %370, label %360

360:                                              ; preds = %352
  %361 = load i64, i64* @RPC_AUTHERROR, align 8
  %362 = trunc i64 %361 to i32
  %363 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %364 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %364, i32 0, i32 0
  store i32 %362, i32* %365, align 8
  %366 = load i32, i32* @AUTH_INVALIDRESP, align 4
  %367 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %368 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %368, i32 0, i32 1
  store i32 %366, i32* %369, align 4
  br label %411

370:                                              ; preds = %352
  %371 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_36__*, %struct.TYPE_36__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @RPCSEC_GSS, align 8
  %378 = icmp ne i64 %376, %377
  br i1 %378, label %379, label %384

379:                                              ; preds = %370
  %380 = load i64 (%struct.TYPE_40__*, i8*)*, i64 (%struct.TYPE_40__*, i8*)** %13, align 8
  %381 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %382 = load i8*, i8** %14, align 8
  %383 = call i64 %380(%struct.TYPE_40__* %381, i8* %382)
  store i64 %383, i64* %25, align 8
  br label %392

384:                                              ; preds = %370
  %385 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %386 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_36__*, %struct.TYPE_36__** %386, align 8
  %388 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %389 = load i64 (%struct.TYPE_40__*, i8*)*, i64 (%struct.TYPE_40__*, i8*)** %13, align 8
  %390 = load i8*, i8** %14, align 8
  %391 = call i64 @__rpc_gss_unwrap(%struct.TYPE_36__* %387, %struct.TYPE_40__* %388, i64 (%struct.TYPE_40__*, i8*)* %389, i8* %390)
  store i64 %391, i64* %25, align 8
  br label %392

392:                                              ; preds = %384, %379
  %393 = load i64, i64* %25, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %410, label %395

395:                                              ; preds = %392
  %396 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %397 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = sext i32 %399 to i64
  %401 = load i64, i64* @RPC_SUCCESS, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %409

403:                                              ; preds = %395
  %404 = load i64, i64* @RPC_CANTDECODERES, align 8
  %405 = trunc i64 %404 to i32
  %406 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %407 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %406, i32 0, i32 2
  %408 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %407, i32 0, i32 0
  store i32 %405, i32* %408, align 8
  br label %409

409:                                              ; preds = %403, %395
  br label %410

410:                                              ; preds = %409, %392
  br label %411

411:                                              ; preds = %410, %360
  %412 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %17, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = icmp ne i32* %415, null
  br i1 %416, label %417, label %425

417:                                              ; preds = %411
  %418 = load i32, i32* @XDR_FREE, align 4
  %419 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %420 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %419, i32 0, i32 0
  store i32 %418, i32* %420, align 4
  %421 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %422 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %17, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %422, i32 0, i32 0
  %424 = call i32 @xdr_opaque_auth(%struct.TYPE_40__* %421, %struct.TYPE_33__* %423)
  br label %425

425:                                              ; preds = %417, %411
  br label %438

426:                                              ; preds = %341
  %427 = load i32, i32* %21, align 4
  %428 = add nsw i32 %427, -1
  store i32 %428, i32* %21, align 4
  %429 = icmp ne i32 %427, 0
  br i1 %429, label %430, label %437

430:                                              ; preds = %426
  %431 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %432 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_36__*, %struct.TYPE_36__** %432, align 8
  %434 = call i64 @AUTH_REFRESH(%struct.TYPE_36__* %433, %struct.rpc_msg* %17)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %430
  br label %102

437:                                              ; preds = %430, %426
  br label %438

438:                                              ; preds = %437, %425
  %439 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %440 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load i32, i32* %22, align 4
  %443 = call i32 @release_fd_lock(i64 %441, i32 %442)
  %444 = load %struct.ct_data*, %struct.ct_data** %15, align 8
  %445 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  store i32 %447, i32* %8, align 4
  br label %448

448:                                              ; preds = %438, %324, %301, %269, %253, %240, %221, %165
  %449 = load i32, i32* %8, align 4
  ret i32 %449
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @thr_sigsetmask(i32, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cond_wait(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @time_not_ok(%struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @XDR_PUTBYTES(%struct.TYPE_40__*, i32*, i64) #1

declare dso_local i32 @XDR_PUTINT32(%struct.TYPE_40__*, i32*) #1

declare dso_local i32 @AUTH_MARSHALL(%struct.TYPE_36__*, %struct.TYPE_40__*) #1

declare dso_local i32 @xdrrec_endofrecord(%struct.TYPE_40__*, i64) #1

declare dso_local i32 @release_fd_lock(i64, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @__rpc_gss_wrap(%struct.TYPE_36__*, i32*, i32, %struct.TYPE_40__*, i64 (%struct.TYPE_40__*, i8*)*, i8*) #1

declare dso_local i32 @xdrrec_skiprecord(%struct.TYPE_40__*) #1

declare dso_local i32 @xdr_replymsg(%struct.TYPE_40__*, %struct.rpc_msg*) #1

declare dso_local i32 @_seterr_reply(%struct.rpc_msg*, %struct.TYPE_34__*) #1

declare dso_local i32 @AUTH_VALIDATE(%struct.TYPE_36__*, %struct.TYPE_33__*) #1

declare dso_local i64 @__rpc_gss_unwrap(%struct.TYPE_36__*, %struct.TYPE_40__*, i64 (%struct.TYPE_40__*, i8*)*, i8*) #1

declare dso_local i32 @xdr_opaque_auth(%struct.TYPE_40__*, %struct.TYPE_33__*) #1

declare dso_local i64 @AUTH_REFRESH(%struct.TYPE_36__*, %struct.rpc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
