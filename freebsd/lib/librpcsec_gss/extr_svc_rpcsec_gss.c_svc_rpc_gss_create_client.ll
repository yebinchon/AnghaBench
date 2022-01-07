; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_create_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_create_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client_list = type { i32 }
%struct.svc_rpc_gss_client = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"in svc_rpc_gss_create_client()\00", align 1
@svc_rpc_gss_next_clientid = common dso_local global i32 0, align 4
@svc_rpc_gss_client_hash = common dso_local global %struct.svc_rpc_gss_client_list* null, align 8
@CLIENT_HASH_SIZE = common dso_local global i64 0, align 8
@cl_link = common dso_local global i32 0, align 4
@svc_rpc_gss_clients = common dso_local global %struct.svc_rpc_gss_client_list zeroinitializer, align 4
@cl_alllink = common dso_local global i32 0, align 4
@CLIENT_NEW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svc_rpc_gss_client_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_rpc_gss_client* ()* @svc_rpc_gss_create_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_rpc_gss_client* @svc_rpc_gss_create_client() #0 {
  %1 = alloca %struct.svc_rpc_gss_client*, align 8
  %2 = alloca %struct.svc_rpc_gss_client_list*, align 8
  %3 = call i32 @log_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %4 = call %struct.svc_rpc_gss_client* @mem_alloc(i32 24)
  store %struct.svc_rpc_gss_client* %4, %struct.svc_rpc_gss_client** %1, align 8
  %5 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %6 = call i32 @memset(%struct.svc_rpc_gss_client* %5, i32 0, i32 24)
  %7 = load i32, i32* @svc_rpc_gss_next_clientid, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @svc_rpc_gss_next_clientid, align 4
  %9 = sext i32 %7 to i64
  %10 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %11 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client_list** @svc_rpc_gss_client_hash, align 8
  %13 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %14 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CLIENT_HASH_SIZE, align 8
  %17 = urem i64 %15, %16
  %18 = getelementptr inbounds %struct.svc_rpc_gss_client_list, %struct.svc_rpc_gss_client_list* %12, i64 %17
  store %struct.svc_rpc_gss_client_list* %18, %struct.svc_rpc_gss_client_list** %2, align 8
  %19 = load %struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client_list** %2, align 8
  %20 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %21 = load i32, i32* @cl_link, align 4
  %22 = call i32 @TAILQ_INSERT_HEAD(%struct.svc_rpc_gss_client_list* %19, %struct.svc_rpc_gss_client* %20, i32 %21)
  %23 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %24 = load i32, i32* @cl_alllink, align 4
  %25 = call i32 @TAILQ_INSERT_HEAD(%struct.svc_rpc_gss_client_list* @svc_rpc_gss_clients, %struct.svc_rpc_gss_client* %23, i32 %24)
  %26 = load i32, i32* @CLIENT_NEW, align 4
  %27 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %28 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %31 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = call i64 @time(i32 0)
  %33 = add nsw i64 %32, 300
  %34 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  %35 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @svc_rpc_gss_client_count, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @svc_rpc_gss_client_count, align 4
  %38 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %1, align 8
  ret %struct.svc_rpc_gss_client* %38
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.svc_rpc_gss_client* @mem_alloc(i32) #1

declare dso_local i32 @memset(%struct.svc_rpc_gss_client*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client*, i32) #1

declare dso_local i64 @time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
