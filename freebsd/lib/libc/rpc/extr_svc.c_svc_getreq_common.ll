; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_getreq_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_getreq_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_callout = type { i64, i64, i32 (%struct.svc_req*, i32*)*, %struct.svc_callout* }
%struct.svc_req = type { i8*, i64, i64, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_5__ = type { i8* }
%struct.rpc_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@MAX_AUTH_BYTES = common dso_local global i32 0, align 4
@RQCRED_SIZE = common dso_local global i32 0, align 4
@svc_fd_lock = common dso_local global i32 0, align 4
@__svc_xports = common dso_local global i32** null, align 8
@AUTH_OK = common dso_local global i32 0, align 4
@RPCSEC_GSS_NODISPATCH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svc_head = common dso_local global %struct.svc_callout* null, align 8
@TRUE = common dso_local global i32 0, align 4
@XPRT_DIED = common dso_local global i32 0, align 4
@XPRT_MOREREQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_getreq_common(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.svc_req, align 8
  %5 = alloca %struct.rpc_msg, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.svc_callout*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %16 = mul nsw i32 2, %15
  %17 = load i32, i32* @RQCRED_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %21, i64 %26
  %28 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %32 = mul nsw i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %21, i64 %33
  %35 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = call i32 @rwlock_rdlock(i32* @svc_fd_lock)
  %37 = load i32**, i32*** @__svc_xports, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %3, align 8
  %42 = call i32 @rwlock_unlock(i32* @svc_fd_lock)
  %43 = load i32*, i32** %3, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %175

46:                                               ; preds = %1
  br label %47

47:                                               ; preds = %170, %46
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @SVC_RECV(i32* %48, %struct.rpc_msg* %5)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %148

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 5
  store i32* %52, i32** %53, align 8
  %54 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 2
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 4
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 3
  %67 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %5, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = bitcast %struct.TYPE_5__* %66 to i8*
  %70 = bitcast %struct.TYPE_5__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 8, i1 false)
  %71 = call i32 @_authenticate(%struct.svc_req* %4, %struct.rpc_msg* %5)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* @AUTH_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %51
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @RPCSEC_GSS_NODISPATCH, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @svcerr_auth(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %161

83:                                               ; preds = %51
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %6, align 4
  store i64 -1, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %85 = load %struct.svc_callout*, %struct.svc_callout** @svc_head, align 8
  store %struct.svc_callout* %85, %struct.svc_callout** %13, align 8
  br label %86

86:                                               ; preds = %132, %83
  %87 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %88 = icmp ne %struct.svc_callout* %87, null
  br i1 %88, label %89, label %136

89:                                               ; preds = %86
  %90 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %91 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %96, label %131

96:                                               ; preds = %89
  %97 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %98 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %4, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %105 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %104, i32 0, i32 2
  %106 = load i32 (%struct.svc_req*, i32*)*, i32 (%struct.svc_req*, i32*)** %105, align 8
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 %106(%struct.svc_req* %4, i32* %107)
  br label %161

109:                                              ; preds = %96
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %6, align 4
  %111 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %112 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %118 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %7, align 8
  br label %120

120:                                              ; preds = %116, %109
  %121 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %122 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %128 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %8, align 8
  br label %130

130:                                              ; preds = %126, %120
  br label %131

131:                                              ; preds = %130, %89
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %134 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %133, i32 0, i32 3
  %135 = load %struct.svc_callout*, %struct.svc_callout** %134, align 8
  store %struct.svc_callout* %135, %struct.svc_callout** %13, align 8
  br label %86

136:                                              ; preds = %86
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32*, i32** %3, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @svcerr_progvers(i32* %140, i64 %141, i64 %142)
  br label %147

144:                                              ; preds = %136
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 @svcerr_noprog(i32* %145)
  br label %147

147:                                              ; preds = %144, %139
  br label %148

148:                                              ; preds = %147, %47
  %149 = call i32 @rwlock_rdlock(i32* @svc_fd_lock)
  %150 = load i32*, i32** %3, align 8
  %151 = load i32**, i32*** @__svc_xports, align 8
  %152 = load i32, i32* %2, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %150, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = call i32 @rwlock_unlock(i32* @svc_fd_lock)
  br label %174

159:                                              ; preds = %148
  %160 = call i32 @rwlock_unlock(i32* @svc_fd_lock)
  br label %161

161:                                              ; preds = %159, %103, %82
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 @SVC_STAT(i32* %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* @XPRT_DIED, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32*, i32** %3, align 8
  %168 = call i32 @SVC_DESTROY(i32* %167)
  br label %174

169:                                              ; preds = %161
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @XPRT_MOREREQS, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %47, label %174

174:                                              ; preds = %170, %166, %157
  store i32 0, i32* %12, align 4
  br label %175

175:                                              ; preds = %174, %45
  %176 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %12, align 4
  switch i32 %177, label %179 [
    i32 0, label %178
    i32 1, label %178
  ]

178:                                              ; preds = %175, %175
  ret void

179:                                              ; preds = %175
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rwlock_rdlock(i32*) #2

declare dso_local i32 @rwlock_unlock(i32*) #2

declare dso_local i64 @SVC_RECV(i32*, %struct.rpc_msg*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @_authenticate(%struct.svc_req*, %struct.rpc_msg*) #2

declare dso_local i32 @svcerr_auth(i32*, i32) #2

declare dso_local i32 @svcerr_progvers(i32*, i64, i64) #2

declare dso_local i32 @svcerr_noprog(i32*) #2

declare dso_local i32 @SVC_STAT(i32*) #2

declare dso_local i32 @SVC_DESTROY(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
