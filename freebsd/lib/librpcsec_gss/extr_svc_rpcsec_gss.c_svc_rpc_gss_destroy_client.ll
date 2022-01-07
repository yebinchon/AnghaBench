; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_destroy_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_destroy_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client_list = type { i32 }
%struct.svc_rpc_gss_client = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.svc_rpc_gss_client* }

@.str = private unnamed_addr constant [32 x i8] c"in svc_rpc_gss_destroy_client()\00", align 1
@GSS_C_NO_BUFFER = common dso_local global i32 0, align 4
@svc_rpc_gss_client_hash = common dso_local global %struct.svc_rpc_gss_client_list* null, align 8
@CLIENT_HASH_SIZE = common dso_local global i64 0, align 8
@cl_link = common dso_local global i32 0, align 4
@svc_rpc_gss_clients = common dso_local global %struct.svc_rpc_gss_client_list zeroinitializer, align 4
@cl_alllink = common dso_local global i32 0, align 4
@svc_rpc_gss_client_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rpc_gss_client*)* @svc_rpc_gss_destroy_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rpc_gss_destroy_client(%struct.svc_rpc_gss_client* %0) #0 {
  %2 = alloca %struct.svc_rpc_gss_client*, align 8
  %3 = alloca %struct.svc_rpc_gss_client_list*, align 8
  %4 = alloca i32, align 4
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %2, align 8
  %5 = call i32 @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %7 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %12 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %11, i32 0, i32 5
  %13 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %14 = call i32 @gss_delete_sec_context(i32* %4, i32* %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %17 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %22 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %21, i32 0, i32 4
  %23 = call i32 @gss_release_name(i32* %4, i32* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %26 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %27, align 8
  %29 = icmp ne %struct.svc_rpc_gss_client* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %32 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %33, align 8
  %35 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %36 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %37, align 8
  %39 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add i64 40, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @mem_free(%struct.svc_rpc_gss_client* %34, i32 %43)
  br label %45

45:                                               ; preds = %30, %24
  %46 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %47 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %53 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %52, i32 0, i32 2
  %54 = call i32 @gss_release_buffer(i32* %4, %struct.TYPE_4__* %53)
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client_list** @svc_rpc_gss_client_hash, align 8
  %57 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %58 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CLIENT_HASH_SIZE, align 8
  %61 = urem i64 %59, %60
  %62 = getelementptr inbounds %struct.svc_rpc_gss_client_list, %struct.svc_rpc_gss_client_list* %56, i64 %61
  store %struct.svc_rpc_gss_client_list* %62, %struct.svc_rpc_gss_client_list** %3, align 8
  %63 = load %struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client_list** %3, align 8
  %64 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %65 = load i32, i32* @cl_link, align 4
  %66 = call i32 @TAILQ_REMOVE(%struct.svc_rpc_gss_client_list* %63, %struct.svc_rpc_gss_client* %64, i32 %65)
  %67 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %68 = load i32, i32* @cl_alllink, align 4
  %69 = call i32 @TAILQ_REMOVE(%struct.svc_rpc_gss_client_list* @svc_rpc_gss_clients, %struct.svc_rpc_gss_client* %67, i32 %68)
  %70 = load i32, i32* @svc_rpc_gss_client_count, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* @svc_rpc_gss_client_count, align 4
  %72 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %2, align 8
  %73 = call i32 @mem_free(%struct.svc_rpc_gss_client* %72, i32 40)
  ret void
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @gss_delete_sec_context(i32*, i32*, i32) #1

declare dso_local i32 @gss_release_name(i32*, i32*) #1

declare dso_local i32 @mem_free(%struct.svc_rpc_gss_client*, i32) #1

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.svc_rpc_gss_client_list*, %struct.svc_rpc_gss_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
