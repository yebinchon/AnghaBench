; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_rmtcall.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_rmtcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i32 }
%struct.netbuf = type { i64, i64, %struct.netbuf* }
%struct.timeval = type { i32 }
%struct.r_rpcb_rmtcallargs = type { i8*, %struct.TYPE_3__, i32, i64, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.r_rpcb_rmtcallres = type { i32*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@RPC_FAILED = common dso_local global i32 0, align 4
@CLSET_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@rmttimeout = common dso_local global i32 0, align 4
@RPCBVERS4 = common dso_local global i64 0, align 8
@RPCBVERS = common dso_local global i64 0, align 8
@CLSET_VERS = common dso_local global i32 0, align 4
@RPCBPROC_CALLIT = common dso_local global i64 0, align 8
@xdr_rpcb_rmtcallargs = common dso_local global i64 0, align 8
@xdr_rpcb_rmtcallres = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_N2AXLATEFAILURE = common dso_local global i32 0, align 4
@RPC_PROGVERSMISMATCH = common dso_local global i32 0, align 4
@RPC_PROGUNAVAIL = common dso_local global i32 0, align 4
@xdr_wrapstring = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcb_rmtcall(%struct.netconfig* %0, i8* %1, i32 %2, i64 %3, i32 %4, i8* %5, i8* %6, i8* %7, i8* %8, i32 %9, %struct.netbuf* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 4
  %14 = alloca %struct.netconfig*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.netbuf*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.r_rpcb_rmtcallargs, align 8
  %27 = alloca %struct.r_rpcb_rmtcallres, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.netbuf*, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 %9, i32* %30, align 4
  store %struct.netconfig* %0, %struct.netconfig** %14, align 8
  store i8* %1, i8** %15, align 8
  store i32 %2, i32* %16, align 4
  store i64 %3, i64* %17, align 8
  store i32 %4, i32* %18, align 4
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i8* %8, i8** %22, align 8
  store %struct.netbuf* %10, %struct.netbuf** %23, align 8
  store i32 0, i32* %25, align 4
  %31 = load i8*, i8** %15, align 8
  %32 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %33 = call i32* @getclnthandle(i8* %31, %struct.netconfig* %32, i32* null)
  store i32* %33, i32** %24, align 8
  %34 = load i32*, i32** %24, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %11
  %37 = load i32, i32* @RPC_FAILED, align 4
  store i32 %37, i32* %12, align 4
  br label %167

38:                                               ; preds = %11
  %39 = load i32*, i32** %24, align 8
  %40 = load i32, i32* @CLSET_RETRY_TIMEOUT, align 4
  %41 = call i32 @CLNT_CONTROL(i32* %39, i32 %40, i8* bitcast (i32* @rmttimeout to i8*))
  %42 = load i32, i32* %16, align 4
  %43 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %26, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = load i64, i64* %17, align 8
  %45 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %26, i32 0, i32 3
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* %18, align 4
  %47 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %26, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load i8*, i8** %20, align 8
  %49 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %26, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = getelementptr inbounds %struct.r_rpcb_rmtcallargs, %struct.r_rpcb_rmtcallargs* %26, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.r_rpcb_rmtcallres, %struct.r_rpcb_rmtcallres* %27, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load i8*, i8** %22, align 8
  %55 = getelementptr inbounds %struct.r_rpcb_rmtcallres, %struct.r_rpcb_rmtcallres* %27, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %21, align 8
  %58 = getelementptr inbounds %struct.r_rpcb_rmtcallres, %struct.r_rpcb_rmtcallres* %27, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load i64, i64* @RPCBVERS4, align 8
  store i64 %59, i64* %28, align 8
  br label %60

60:                                               ; preds = %149, %38
  %61 = load i64, i64* %28, align 8
  %62 = load i64, i64* @RPCBVERS, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %152

64:                                               ; preds = %60
  %65 = load i32*, i32** %24, align 8
  %66 = load i32, i32* @CLSET_VERS, align 4
  %67 = bitcast i64* %28 to i8*
  %68 = call i32 @CLNT_CONTROL(i32* %65, i32 %66, i8* %67)
  %69 = load i32*, i32** %24, align 8
  %70 = load i64, i64* @RPCBPROC_CALLIT, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i64, i64* @xdr_rpcb_rmtcallargs, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = bitcast %struct.r_rpcb_rmtcallargs* %26 to i8*
  %75 = load i64, i64* @xdr_rpcb_rmtcallres, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = bitcast %struct.r_rpcb_rmtcallres* %27 to i8*
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @CLNT_CALL(i32* %69, i32 %71, i8* %73, i8* %74, i8* %76, i8* %77, i32 %79)
  store i32 %80, i32* %25, align 4
  %81 = load i32, i32* %25, align 4
  %82 = load i32, i32* @RPC_SUCCESS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %138

84:                                               ; preds = %64
  %85 = load %struct.netbuf*, %struct.netbuf** %23, align 8
  %86 = icmp ne %struct.netbuf* %85, null
  br i1 %86, label %87, label %138

87:                                               ; preds = %84
  %88 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %89 = getelementptr inbounds %struct.r_rpcb_rmtcallres, %struct.r_rpcb_rmtcallres* %27, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call %struct.netbuf* @uaddr2taddr(%struct.netconfig* %88, i32* %90)
  store %struct.netbuf* %91, %struct.netbuf** %29, align 8
  %92 = load %struct.netbuf*, %struct.netbuf** %29, align 8
  %93 = icmp ne %struct.netbuf* %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @RPC_N2AXLATEFAILURE, align 4
  store i32 %95, i32* %25, align 4
  %96 = load %struct.netbuf*, %struct.netbuf** %23, align 8
  %97 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %153

98:                                               ; preds = %87
  %99 = load %struct.netbuf*, %struct.netbuf** %29, align 8
  %100 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.netbuf*, %struct.netbuf** %23, align 8
  %103 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %101, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %98
  %107 = load i32, i32* @RPC_FAILED, align 4
  store i32 %107, i32* %25, align 4
  %108 = load %struct.netbuf*, %struct.netbuf** %29, align 8
  %109 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %108, i32 0, i32 2
  %110 = load %struct.netbuf*, %struct.netbuf** %109, align 8
  %111 = call i32 @free(%struct.netbuf* %110)
  %112 = load %struct.netbuf*, %struct.netbuf** %29, align 8
  %113 = call i32 @free(%struct.netbuf* %112)
  %114 = load %struct.netbuf*, %struct.netbuf** %23, align 8
  %115 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  br label %153

116:                                              ; preds = %98
  %117 = load %struct.netbuf*, %struct.netbuf** %23, align 8
  %118 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %117, i32 0, i32 2
  %119 = load %struct.netbuf*, %struct.netbuf** %118, align 8
  %120 = load %struct.netbuf*, %struct.netbuf** %29, align 8
  %121 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %120, i32 0, i32 2
  %122 = load %struct.netbuf*, %struct.netbuf** %121, align 8
  %123 = load %struct.netbuf*, %struct.netbuf** %29, align 8
  %124 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @memcpy(%struct.netbuf* %119, %struct.netbuf* %122, i64 %125)
  %127 = load %struct.netbuf*, %struct.netbuf** %29, align 8
  %128 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.netbuf*, %struct.netbuf** %23, align 8
  %131 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.netbuf*, %struct.netbuf** %29, align 8
  %133 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %132, i32 0, i32 2
  %134 = load %struct.netbuf*, %struct.netbuf** %133, align 8
  %135 = call i32 @free(%struct.netbuf* %134)
  %136 = load %struct.netbuf*, %struct.netbuf** %29, align 8
  %137 = call i32 @free(%struct.netbuf* %136)
  br label %152

138:                                              ; preds = %84, %64
  %139 = load i32, i32* %25, align 4
  %140 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load i32, i32* %25, align 4
  %144 = load i32, i32* @RPC_PROGUNAVAIL, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %153

147:                                              ; preds = %142, %138
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %28, align 8
  %151 = add nsw i64 %150, -1
  store i64 %151, i64* %28, align 8
  br label %60

152:                                              ; preds = %116, %60
  br label %153

153:                                              ; preds = %152, %146, %106, %94
  %154 = load i32*, i32** %24, align 8
  %155 = call i32 @CLNT_DESTROY(i32* %154)
  %156 = getelementptr inbounds %struct.r_rpcb_rmtcallres, %struct.r_rpcb_rmtcallres* %27, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i64, i64* @xdr_wrapstring, align 8
  %161 = inttoptr i64 %160 to i8*
  %162 = getelementptr inbounds %struct.r_rpcb_rmtcallres, %struct.r_rpcb_rmtcallres* %27, i32 0, i32 0
  %163 = bitcast i32** %162 to i8*
  %164 = call i32 @xdr_free(i8* %161, i8* %163)
  br label %165

165:                                              ; preds = %159, %153
  %166 = load i32, i32* %25, align 4
  store i32 %166, i32* %12, align 4
  br label %167

167:                                              ; preds = %165, %36
  %168 = load i32, i32* %12, align 4
  ret i32 %168
}

declare dso_local i32* @getclnthandle(i8*, %struct.netconfig*, i32*) #1

declare dso_local i32 @CLNT_CONTROL(i32*, i32, i8*) #1

declare dso_local i32 @CLNT_CALL(i32*, i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local %struct.netbuf* @uaddr2taddr(%struct.netconfig*, i32*) #1

declare dso_local i32 @free(%struct.netbuf*) #1

declare dso_local i32 @memcpy(%struct.netbuf*, %struct.netbuf*, i64) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

declare dso_local i32 @xdr_free(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
