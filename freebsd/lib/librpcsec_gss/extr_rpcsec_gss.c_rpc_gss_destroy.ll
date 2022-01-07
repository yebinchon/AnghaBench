; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c_rpc_gss_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c_rpc_gss_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"in rpc_gss_destroy()\00", align 1
@TRUE = common dso_local global i32 0, align 4
@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@xdr_gss_buffer_desc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_gss_data*)* @rpc_gss_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_gss_destroy(%struct.rpc_gss_data* %0) #0 {
  %2 = alloca %struct.rpc_gss_data*, align 8
  %3 = alloca %struct.rpc_gss_data*, align 8
  %4 = alloca i32, align 4
  store %struct.rpc_gss_data* %0, %struct.rpc_gss_data** %2, align 8
  %5 = call i32 @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %2, align 8
  %7 = call %struct.rpc_gss_data* @AUTH_PRIVATE(%struct.rpc_gss_data* %6)
  store %struct.rpc_gss_data* %7, %struct.rpc_gss_data** %3, align 8
  %8 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %2, align 8
  %9 = load i32, i32* @TRUE, align 4
  %10 = call i32 @rpc_gss_destroy_context(%struct.rpc_gss_data* %8, i32 %9)
  %11 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GSS_C_NO_NAME, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %18 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %17, i32 0, i32 0
  %19 = call i32 @gss_release_name(i32* %4, i64* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i64, i64* @xdr_gss_buffer_desc, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %29, i32 0, i32 1
  %31 = bitcast %struct.TYPE_2__* %30 to i8*
  %32 = call i32 @xdr_free(i32 %28, i8* %31)
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %3, align 8
  %35 = call i32 @mem_free(%struct.rpc_gss_data* %34, i32 16)
  %36 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %2, align 8
  %37 = call i32 @mem_free(%struct.rpc_gss_data* %36, i32 16)
  ret void
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(%struct.rpc_gss_data*) #1

declare dso_local i32 @rpc_gss_destroy_context(%struct.rpc_gss_data*, i32) #1

declare dso_local i32 @gss_release_name(i32*, i64*) #1

declare dso_local i32 @xdr_free(i32, i8*) #1

declare dso_local i32 @mem_free(%struct.rpc_gss_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
