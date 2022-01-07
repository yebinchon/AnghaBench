; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c_rpc_gss_destroy_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c_rpc_gss_destroy_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_data = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"in rpc_gss_destroy_context()\00", align 1
@RPCSEC_GSS_ESTABLISHED = common dso_local global i64 0, align 8
@RPCSEC_GSS_DESTROY = common dso_local global i32 0, align 4
@NULLPROC = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@AUTH_TIMEOUT = common dso_local global i32 0, align 4
@xdr_gss_buffer_desc = common dso_local global i64 0, align 8
@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@RPCSEC_GSS_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @rpc_gss_destroy_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_gss_destroy_context(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rpc_gss_data*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %8)
  store %struct.rpc_gss_data* %9, %struct.rpc_gss_data** %5, align 8
  %10 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %11 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RPCSEC_GSS_ESTABLISHED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i32, i32* @RPCSEC_GSS_DESTROY, align 4
  %20 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %21 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %24 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NULLPROC, align 4
  %27 = load i64, i64* @xdr_void, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* @xdr_void, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @AUTH_TIMEOUT, align 4
  %32 = call i32 @clnt_call(i32 %25, i32 %26, i32 %28, i32* null, i32 %30, i32* null, i32 %31)
  br label %33

33:                                               ; preds = %18, %15, %2
  %34 = load i64, i64* @xdr_gss_buffer_desc, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %37 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = bitcast %struct.TYPE_3__* %38 to i8*
  %40 = call i32 @xdr_free(i32 %35, i8* %39)
  %41 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %42 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %46 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %33
  %51 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %52 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %51, i32 0, i32 1
  %53 = call i32 @gss_delete_sec_context(i32* %6, i64* %52, i32* null)
  br label %54

54:                                               ; preds = %50, %33
  %55 = load i64, i64* @RPCSEC_GSS_START, align 8
  %56 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %5, align 8
  %57 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  ret void
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32 @clnt_call(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @xdr_free(i32, i8*) #1

declare dso_local i32 @gss_delete_sec_context(i32*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
