; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_send_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_send_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outbound_entry = type { i32, %struct.module_qstate* }
%struct.query_info = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.module_qstate = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.worker* }
%struct.TYPE_4__ = type { i32 }
%struct.worker = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@worker_handle_service_reply = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.outbound_entry* @worker_send_query(%struct.query_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.sockaddr_storage* %5, i32 %6, i32* %7, i64 %8, i32 %9, i8* %10, %struct.module_qstate* %11) #0 {
  %13 = alloca %struct.outbound_entry*, align 8
  %14 = alloca %struct.query_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr_storage*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.module_qstate*, align 8
  %26 = alloca %struct.worker*, align 8
  %27 = alloca %struct.outbound_entry*, align 8
  store %struct.query_info* %0, %struct.query_info** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store %struct.sockaddr_storage* %5, %struct.sockaddr_storage** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32* %7, i32** %21, align 8
  store i64 %8, i64* %22, align 8
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store %struct.module_qstate* %11, %struct.module_qstate** %25, align 8
  %28 = load %struct.module_qstate*, %struct.module_qstate** %25, align 8
  %29 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.worker*, %struct.worker** %31, align 8
  store %struct.worker* %32, %struct.worker** %26, align 8
  %33 = load %struct.module_qstate*, %struct.module_qstate** %25, align 8
  %34 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @regional_alloc(i32 %35, i32 16)
  %37 = inttoptr i64 %36 to %struct.outbound_entry*
  store %struct.outbound_entry* %37, %struct.outbound_entry** %27, align 8
  %38 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  %39 = icmp ne %struct.outbound_entry* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %12
  store %struct.outbound_entry* null, %struct.outbound_entry** %13, align 8
  br label %87

41:                                               ; preds = %12
  %42 = load %struct.module_qstate*, %struct.module_qstate** %25, align 8
  %43 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  %44 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %43, i32 0, i32 1
  store %struct.module_qstate* %42, %struct.module_qstate** %44, align 8
  %45 = load %struct.worker*, %struct.worker** %26, align 8
  %46 = getelementptr inbounds %struct.worker, %struct.worker* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load %struct.query_info*, %struct.query_info** %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load %struct.module_qstate*, %struct.module_qstate** %25, align 8
  %54 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load i8*, i8** %24, align 8
  %62 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %19, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load i32*, i32** %21, align 8
  %65 = load i64, i64* %22, align 8
  %66 = load %struct.module_qstate*, %struct.module_qstate** %25, align 8
  %67 = load i32, i32* @worker_handle_service_reply, align 4
  %68 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  %69 = load %struct.worker*, %struct.worker** %26, align 8
  %70 = getelementptr inbounds %struct.worker, %struct.worker* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.module_qstate*, %struct.module_qstate** %25, align 8
  %75 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i32 @outnet_serviced_query(%struct.TYPE_5__* %47, %struct.query_info* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %59, i32 %60, i8* %61, %struct.sockaddr_storage* %62, i32 %63, i32* %64, i64 %65, %struct.module_qstate* %66, i32 %67, %struct.outbound_entry* %68, i32 %73, %struct.TYPE_6__* %76)
  %78 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  %79 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  %81 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %41
  store %struct.outbound_entry* null, %struct.outbound_entry** %13, align 8
  br label %87

85:                                               ; preds = %41
  %86 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  store %struct.outbound_entry* %86, %struct.outbound_entry** %13, align 8
  br label %87

87:                                               ; preds = %85, %84, %40
  %88 = load %struct.outbound_entry*, %struct.outbound_entry** %13, align 8
  ret %struct.outbound_entry* %88
}

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @outnet_serviced_query(%struct.TYPE_5__*, %struct.query_info*, i32, i32, i32, i32, i32, i32, i8*, %struct.sockaddr_storage*, i32, i32*, i64, %struct.module_qstate*, i32, %struct.outbound_entry*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
