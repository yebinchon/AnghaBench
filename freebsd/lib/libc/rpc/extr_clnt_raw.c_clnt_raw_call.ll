; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_raw.c_clnt_raw_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_raw.c_clnt_raw_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clntraw_private = type { i32, %struct.TYPE_24__, %struct.TYPE_27__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_28__ = type { i32 }
%struct.timeval = type { i32 }
%struct.rpc_msg = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_22__, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_27__*, i8*)*, i8* }
%struct.rpc_err = type { i32 }

@clntraw_private = common dso_local global %struct.clntraw_private* null, align 8
@clntraw_lock = common dso_local global i32 0, align 4
@RPC_FAILED = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@RPC_CANTENCODEARGS = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@_null_auth = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@XDR_FREE = common dso_local global i8* null, align 8
@RPC_CANTDECODERES = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_AUTHERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, i32, i32 (%struct.TYPE_27__*, i8*)*, i8*, i32 (%struct.TYPE_27__*, i8*)*, i8*, i32)* @clnt_raw_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clnt_raw_call(%struct.TYPE_28__* %0, i32 %1, i32 (%struct.TYPE_27__*, i8*)* %2, i8* %3, i32 (%struct.TYPE_27__*, i8*)* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct.TYPE_27__*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32 (%struct.TYPE_27__*, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.clntraw_private*, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca %struct.rpc_msg, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.rpc_err, align 4
  %21 = alloca i32, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 %6, i32* %22, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 (%struct.TYPE_27__*, i8*)* %2, i32 (%struct.TYPE_27__*, i8*)** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 (%struct.TYPE_27__*, i8*)* %4, i32 (%struct.TYPE_27__*, i8*)** %14, align 8
  store i8* %5, i8** %15, align 8
  %23 = load %struct.clntraw_private*, %struct.clntraw_private** @clntraw_private, align 8
  store %struct.clntraw_private* %23, %struct.clntraw_private** %16, align 8
  %24 = load %struct.clntraw_private*, %struct.clntraw_private** %16, align 8
  %25 = getelementptr inbounds %struct.clntraw_private, %struct.clntraw_private* %24, i32 0, i32 2
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %17, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %27 = icmp ne %struct.TYPE_28__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = call i32 @mutex_lock(i32* @clntraw_lock)
  %31 = load %struct.clntraw_private*, %struct.clntraw_private** %16, align 8
  %32 = icmp eq %struct.clntraw_private* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %7
  %34 = call i32 @mutex_unlock(i32* @clntraw_lock)
  %35 = load i32, i32* @RPC_FAILED, align 4
  store i32 %35, i32* %8, align 4
  br label %175

36:                                               ; preds = %7
  %37 = call i32 @mutex_unlock(i32* @clntraw_lock)
  br label %38

38:                                               ; preds = %141, %36
  %39 = load i32, i32* @XDR_ENCODE, align 4
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %43 = call i32 @XDR_SETPOS(%struct.TYPE_27__* %42, i32 0)
  %44 = load %struct.clntraw_private*, %struct.clntraw_private** %16, align 8
  %45 = getelementptr inbounds %struct.clntraw_private, %struct.clntraw_private* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %51 = load %struct.clntraw_private*, %struct.clntraw_private** %16, align 8
  %52 = getelementptr inbounds %struct.clntraw_private, %struct.clntraw_private* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.clntraw_private*, %struct.clntraw_private** %16, align 8
  %56 = getelementptr inbounds %struct.clntraw_private, %struct.clntraw_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @XDR_PUTBYTES(%struct.TYPE_27__* %50, i32 %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %38
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %62 = call i32 @XDR_PUTINT32(%struct.TYPE_27__* %61, i32* %11)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %69 = call i32 @AUTH_MARSHALL(i32 %67, %struct.TYPE_27__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32 (%struct.TYPE_27__*, i8*)*, i32 (%struct.TYPE_27__*, i8*)** %12, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 %72(%struct.TYPE_27__* %73, i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71, %64, %60, %38
  %78 = load i32, i32* @RPC_CANTENCODEARGS, align 4
  store i32 %78, i32* %8, align 4
  br label %175

79:                                               ; preds = %71
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %81 = call i32 @XDR_GETPOS(%struct.TYPE_27__* %80)
  %82 = load i32, i32* @FD_SETSIZE, align 4
  %83 = call i32 @svc_getreq_common(i32 %82)
  %84 = load i32, i32* @XDR_DECODE, align 4
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %88 = call i32 @XDR_SETPOS(%struct.TYPE_27__* %87, i32 0)
  %89 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %18, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = bitcast %struct.TYPE_22__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 bitcast (%struct.TYPE_22__* @_null_auth to i8*), i64 8, i1 false)
  %92 = load i8*, i8** %15, align 8
  %93 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %18, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  store i8* %92, i8** %95, align 8
  %96 = load i32 (%struct.TYPE_27__*, i8*)*, i32 (%struct.TYPE_27__*, i8*)** %14, align 8
  %97 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %18, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  store i32 (%struct.TYPE_27__*, i8*)* %96, i32 (%struct.TYPE_27__*, i8*)** %99, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %101 = call i32 @xdr_replymsg(%struct.TYPE_27__* %100, %struct.rpc_msg* %18)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %79
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %21, align 4
  %107 = load i8*, i8** @XDR_FREE, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %112 = call i32 @xdr_replymsg(%struct.TYPE_27__* %111, %struct.rpc_msg* %18)
  %113 = load i32, i32* %21, align 4
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @RPC_CANTDECODERES, align 4
  store i32 %116, i32* %8, align 4
  br label %175

117:                                              ; preds = %79
  %118 = call i32 @_seterr_reply(%struct.rpc_msg* %18, %struct.rpc_err* %20)
  %119 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %20, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* @RPC_SUCCESS, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %117
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %18, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = call i32 @AUTH_VALIDATE(i32 %127, %struct.TYPE_22__* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* @RPC_AUTHERROR, align 4
  store i32 %133, i32* %19, align 4
  br label %134

134:                                              ; preds = %132, %124
  br label %143

135:                                              ; preds = %117
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @AUTH_REFRESH(i32 %138, %struct.rpc_msg* %18)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %38

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %134
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* @RPC_SUCCESS, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %173

147:                                              ; preds = %143
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %18, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = call i32 @AUTH_VALIDATE(i32 %150, %struct.TYPE_22__* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %147
  %156 = load i32, i32* @RPC_AUTHERROR, align 4
  store i32 %156, i32* %19, align 4
  br label %157

157:                                              ; preds = %155, %147
  %158 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %18, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %157
  %164 = load i8*, i8** @XDR_FREE, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %169 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %18, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = call i32 @xdr_opaque_auth(%struct.TYPE_27__* %168, %struct.TYPE_22__* %170)
  br label %172

172:                                              ; preds = %163, %157
  br label %173

173:                                              ; preds = %172, %143
  %174 = load i32, i32* %19, align 4
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %173, %103, %77, %33
  %176 = load i32, i32* %8, align 4
  ret i32 %176
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @XDR_SETPOS(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @XDR_PUTBYTES(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @XDR_PUTINT32(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @AUTH_MARSHALL(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @XDR_GETPOS(%struct.TYPE_27__*) #1

declare dso_local i32 @svc_getreq_common(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xdr_replymsg(%struct.TYPE_27__*, %struct.rpc_msg*) #1

declare dso_local i32 @_seterr_reply(%struct.rpc_msg*, %struct.rpc_err*) #1

declare dso_local i32 @AUTH_VALIDATE(i32, %struct.TYPE_22__*) #1

declare dso_local i64 @AUTH_REFRESH(i32, %struct.rpc_msg*) #1

declare dso_local i32 @xdr_opaque_auth(%struct.TYPE_27__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
