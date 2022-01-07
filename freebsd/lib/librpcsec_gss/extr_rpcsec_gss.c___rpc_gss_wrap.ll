; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c___rpc_gss_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c___rpc_gss_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opaque_auth = type { i8*, i64, i8* }
%struct.rpc_gss_data = type { i64, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i8* }

@MAX_AUTH_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"in rpc_gss_wrap()\00", align 1
@RPCSEC_GSS_ESTABLISHED = common dso_local global i64 0, align 8
@XDR_ENCODE = common dso_local global i32 0, align 4
@RPC_GSS_ER_SYSTEMERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@RPCSEC_GSS = common dso_local global i8* null, align 8
@RPCSEC_GSS_INIT = common dso_local global i64 0, align 8
@RPCSEC_GSS_CONTINUE_INIT = common dso_local global i64 0, align 8
@_null_auth = common dso_local global %struct.opaque_auth zeroinitializer, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"gss_get_mic\00", align 1
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@rpc_gss_svc_none = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__rpc_gss_wrap(i32* %0, i8* %1, i64 %2, i32* %3, i64 (i32*, i8*)* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64 (i32*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.opaque_auth, align 8
  %19 = alloca %struct.opaque_auth, align 8
  %20 = alloca %struct.rpc_gss_data*, align 8
  %21 = alloca %struct.TYPE_6__, align 8
  %22 = alloca %struct.TYPE_6__, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 (i32*, i8*)* %4, i64 (i32*, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %27 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %15, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %31 = load i32, i32* @MAX_AUTH_BYTES, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %17, align 8
  %34 = call i32 @log_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %8, align 8
  %36 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %35)
  store %struct.rpc_gss_data* %36, %struct.rpc_gss_data** %20, align 8
  %37 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %38 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RPCSEC_GSS_ESTABLISHED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %6
  %43 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %44 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %6
  %49 = trunc i64 %28 to i32
  %50 = load i32, i32* @XDR_ENCODE, align 4
  %51 = call i32 @xdrmem_create(i32* %14, i8* %30, i32 %49, i32 %50)
  %52 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %53 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %52, i32 0, i32 1
  %54 = call i32 @xdr_rpc_gss_cred(i32* %14, %struct.TYPE_7__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = call i32 @XDR_DESTROY(i32* %14)
  %58 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @_rpc_gss_set_error(i32 %58, i32 %59)
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %7, align 8
  store i32 1, i32* %26, align 4
  br label %213

62:                                               ; preds = %48
  %63 = load i8*, i8** @RPCSEC_GSS, align 8
  %64 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %18, i32 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %18, i32 0, i32 0
  store i8* %30, i8** %65, align 8
  %66 = call i8* @XDR_GETPOS(i32* %14)
  %67 = ptrtoint i8* %66 to i64
  %68 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %18, i32 0, i32 1
  store i64 %67, i64* %68, align 8
  %69 = call i32 @XDR_DESTROY(i32* %14)
  %70 = trunc i64 %32 to i32
  %71 = load i32, i32* @XDR_ENCODE, align 4
  %72 = call i32 @xdrmem_create(i32* %14, i8* %33, i32 %70, i32 %71)
  %73 = load i8*, i8** %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @XDR_PUTBYTES(i32* %14, i8* %73, i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = call i64 @xdr_opaque_auth(i32* %14, %struct.opaque_auth* %18)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77, %62
  %81 = call i32 @XDR_DESTROY(i32* %14)
  %82 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = call i32 @_rpc_gss_set_error(i32 %82, i32 %83)
  %85 = load i64, i64* @FALSE, align 8
  store i64 %85, i64* %7, align 8
  store i32 1, i32* %26, align 4
  br label %213

86:                                               ; preds = %77
  %87 = call i8* @XDR_GETPOS(i32* %14)
  %88 = ptrtoint i8* %87 to i64
  store i64 %88, i64* %10, align 8
  %89 = call i32 @XDR_DESTROY(i32* %14)
  %90 = load i32*, i32** %11, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @XDR_PUTBYTES(i32* %90, i8* %33, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = call i32 @_rpc_gss_set_error(i32 %95, i32 %96)
  %98 = load i64, i64* @FALSE, align 8
  store i64 %98, i64* %7, align 8
  store i32 1, i32* %26, align 4
  br label %213

99:                                               ; preds = %86
  %100 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %101 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @RPCSEC_GSS_INIT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %108 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @RPCSEC_GSS_CONTINUE_INIT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %106, %99
  %114 = load i32*, i32** %11, align 8
  %115 = call i64 @xdr_opaque_auth(i32* %114, %struct.opaque_auth* @_null_auth)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = call i32 @_rpc_gss_set_error(i32 %118, i32 %119)
  %121 = load i64, i64* @FALSE, align 8
  store i64 %121, i64* %7, align 8
  store i32 1, i32* %26, align 4
  br label %213

122:                                              ; preds = %113
  br label %176

123:                                              ; preds = %106
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i64 %124, i64* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i8* %33, i8** %126, align 8
  %127 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %128 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %131 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @gss_get_mic(i64* %24, i32 %129, i32 %132, %struct.TYPE_6__* %21, %struct.TYPE_6__* %22)
  store i64 %133, i64* %23, align 8
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* @GSS_S_COMPLETE, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %156

137:                                              ; preds = %123
  %138 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %139 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %23, align 8
  %142 = load i64, i64* %24, align 8
  %143 = call i32 @log_status(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %140, i64 %141, i64 %142)
  %144 = load i64, i64* %23, align 8
  %145 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %137
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* @TRUE, align 4
  %150 = call i32 @rpc_gss_destroy_context(i32* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %137
  %152 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %153 = load i32, i32* @EPERM, align 4
  %154 = call i32 @_rpc_gss_set_error(i32 %152, i32 %153)
  %155 = load i64, i64* @FALSE, align 8
  store i64 %155, i64* %7, align 8
  store i32 1, i32* %26, align 4
  br label %213

156:                                              ; preds = %123
  %157 = load i8*, i8** @RPCSEC_GSS, align 8
  %158 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %19, i32 0, i32 2
  store i8* %157, i8** %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %19, i32 0, i32 0
  store i8* %160, i8** %161, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %19, i32 0, i32 1
  store i64 %163, i64* %164, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = call i64 @xdr_opaque_auth(i32* %165, %struct.opaque_auth* %19)
  store i64 %166, i64* %25, align 8
  %167 = call i32 @gss_release_buffer(i64* %24, %struct.TYPE_6__* %22)
  %168 = load i64, i64* %25, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %156
  %171 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = call i32 @_rpc_gss_set_error(i32 %171, i32 %172)
  %174 = load i64, i64* @FALSE, align 8
  store i64 %174, i64* %7, align 8
  store i32 1, i32* %26, align 4
  br label %213

175:                                              ; preds = %156
  br label %176

176:                                              ; preds = %175, %122
  %177 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %178 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @RPCSEC_GSS_ESTABLISHED, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %189, label %182

182:                                              ; preds = %176
  %183 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %184 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @rpc_gss_svc_none, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %182, %176
  %190 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %12, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = load i8*, i8** %13, align 8
  %193 = call i64 %190(i32* %191, i8* %192)
  store i64 %193, i64* %7, align 8
  store i32 1, i32* %26, align 4
  br label %213

194:                                              ; preds = %182
  %195 = load i32*, i32** %11, align 8
  %196 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %12, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %199 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %202 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %205 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %20, align 8
  %209 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i64 @xdr_rpc_gss_wrap_data(i32* %195, i64 (i32*, i8*)* %196, i8* %197, i32 %200, i32 %203, i64 %207, i32 %211)
  store i64 %212, i64* %7, align 8
  store i32 1, i32* %26, align 4
  br label %213

213:                                              ; preds = %194, %189, %170, %151, %117, %94, %80, %56
  %214 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i64, i64* %7, align 8
  ret i64 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_debug(i8*) #2

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #2

declare dso_local i32 @xdrmem_create(i32*, i8*, i32, i32) #2

declare dso_local i32 @xdr_rpc_gss_cred(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @XDR_DESTROY(i32*) #2

declare dso_local i32 @_rpc_gss_set_error(i32, i32) #2

declare dso_local i8* @XDR_GETPOS(i32*) #2

declare dso_local i32 @XDR_PUTBYTES(i32*, i8*, i64) #2

declare dso_local i64 @xdr_opaque_auth(i32*, %struct.opaque_auth*) #2

declare dso_local i64 @gss_get_mic(i64*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*) #2

declare dso_local i32 @log_status(i8*, i32, i64, i64) #2

declare dso_local i32 @rpc_gss_destroy_context(i32*, i32) #2

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_6__*) #2

declare dso_local i64 @xdr_rpc_gss_wrap_data(i32*, i64 (i32*, i8*)*, i8*, i32, i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
