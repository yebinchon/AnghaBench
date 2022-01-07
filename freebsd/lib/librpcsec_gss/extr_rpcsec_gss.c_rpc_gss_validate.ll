; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c_rpc_gss_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c_rpc_gss_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opaque_auth = type { i32, i32* }
%struct.rpc_gss_data = type { i64, i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"in rpc_gss_validate()\00", align 1
@RPCSEC_GSS_CONTEXT = common dso_local global i64 0, align 8
@xdr_gss_buffer_desc = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"gss_validate: out of memory\0A\00", align 1
@RPC_GSS_ER_SYSTEMERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"gss_verify_mic\00", align 1
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.opaque_auth*)* @rpc_gss_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_gss_validate(i32* %0, %struct.opaque_auth* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.opaque_auth*, align 8
  %6 = alloca %struct.rpc_gss_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.opaque_auth* %1, %struct.opaque_auth** %5, align 8
  %13 = call i32 @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %14)
  store %struct.rpc_gss_data* %15, %struct.rpc_gss_data** %6, align 8
  %16 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %17 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RPCSEC_GSS_CONTEXT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %2
  %22 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %23 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i64, i64* @xdr_gss_buffer_desc, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %31 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %30, i32 0, i32 5
  %32 = bitcast %struct.TYPE_6__* %31 to i8*
  %33 = call i32 @xdr_free(i32 %29, i8* %32)
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %36 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @mem_alloc(i32 %37)
  %39 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %40 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32* %38, i32** %41, align 8
  %42 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %43 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @_rpc_gss_set_error(i32 %50, i32 %51)
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %3, align 4
  br label %123

54:                                               ; preds = %34
  %55 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %56 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %60 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %63 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i32* %58, i32* %61, i32 %64)
  %66 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %67 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %70 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %3, align 4
  br label %123

73:                                               ; preds = %2
  %74 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %75 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @htonl(i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32* %8, i32** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 4, i32* %80, align 8
  %81 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %82 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32* %83, i32** %84, align 8
  %85 = load %struct.opaque_auth*, %struct.opaque_auth** %5, align 8
  %86 = getelementptr inbounds %struct.opaque_auth, %struct.opaque_auth* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  %89 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %90 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @gss_verify_mic(i64* %12, i32 %91, %struct.TYPE_8__* %9, %struct.TYPE_8__* %10, i64* %7)
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @GSS_S_COMPLETE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %73
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %99 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %96, %73
  %103 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %104 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @log_status(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %105, i64 %106, i64 %107)
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @TRUE, align 4
  %115 = call i32 @rpc_gss_destroy_context(i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %102
  %117 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %118 = load i32, i32* @EPERM, align 4
  %119 = call i32 @_rpc_gss_set_error(i32 %117, i32 %118)
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %3, align 4
  br label %123

121:                                              ; preds = %96
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %116, %54, %47
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32 @xdr_free(i32, i8*) #1

declare dso_local i32* @mem_alloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @_rpc_gss_set_error(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @gss_verify_mic(i64*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i64*) #1

declare dso_local i32 @log_status(i8*, i32, i64, i64) #1

declare dso_local i32 @rpc_gss_destroy_context(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
