; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_send_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_send_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outbound_entry = type { i32, %struct.module_qstate* }
%struct.query_info = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.module_qstate = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.libworker = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@libworker_handle_service_reply = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.outbound_entry* @libworker_send_query(%struct.query_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.sockaddr_storage* %5, i32 %6, i32* %7, i64 %8, i32 %9, i8* %10, %struct.module_qstate* %11) #0 {
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
  %26 = alloca %struct.libworker*, align 8
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
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.libworker*
  store %struct.libworker* %33, %struct.libworker** %26, align 8
  %34 = load %struct.module_qstate*, %struct.module_qstate** %25, align 8
  %35 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @regional_alloc(i32 %36, i32 16)
  %38 = inttoptr i64 %37 to %struct.outbound_entry*
  store %struct.outbound_entry* %38, %struct.outbound_entry** %27, align 8
  %39 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  %40 = icmp ne %struct.outbound_entry* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %12
  store %struct.outbound_entry* null, %struct.outbound_entry** %13, align 8
  br label %88

42:                                               ; preds = %12
  %43 = load %struct.module_qstate*, %struct.module_qstate** %25, align 8
  %44 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  %45 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %44, i32 0, i32 1
  store %struct.module_qstate* %43, %struct.module_qstate** %45, align 8
  %46 = load %struct.libworker*, %struct.libworker** %26, align 8
  %47 = getelementptr inbounds %struct.libworker, %struct.libworker* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load %struct.query_info*, %struct.query_info** %14, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load %struct.module_qstate*, %struct.module_qstate** %25, align 8
  %55 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %23, align 4
  %62 = load i8*, i8** %24, align 8
  %63 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %19, align 8
  %64 = load i32, i32* %20, align 4
  %65 = load i32*, i32** %21, align 8
  %66 = load i64, i64* %22, align 8
  %67 = load %struct.module_qstate*, %struct.module_qstate** %25, align 8
  %68 = load i32, i32* @libworker_handle_service_reply, align 4
  %69 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  %70 = load %struct.libworker*, %struct.libworker** %26, align 8
  %71 = getelementptr inbounds %struct.libworker, %struct.libworker* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.module_qstate*, %struct.module_qstate** %25, align 8
  %76 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i32 @outnet_serviced_query(%struct.TYPE_5__* %48, %struct.query_info* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %60, i32 %61, i8* %62, %struct.sockaddr_storage* %63, i32 %64, i32* %65, i64 %66, %struct.module_qstate* %67, i32 %68, %struct.outbound_entry* %69, i32 %74, %struct.TYPE_6__* %77)
  %79 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  %80 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  %82 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %42
  store %struct.outbound_entry* null, %struct.outbound_entry** %13, align 8
  br label %88

86:                                               ; preds = %42
  %87 = load %struct.outbound_entry*, %struct.outbound_entry** %27, align 8
  store %struct.outbound_entry* %87, %struct.outbound_entry** %13, align 8
  br label %88

88:                                               ; preds = %86, %85, %41
  %89 = load %struct.outbound_entry*, %struct.outbound_entry** %13, align 8
  ret %struct.outbound_entry* %89
}

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @outnet_serviced_query(%struct.TYPE_5__*, %struct.query_info*, i32, i32, i32, i32, i32, i32, i8*, %struct.sockaddr_storage*, i32, i32*, i64, %struct.module_qstate*, i32, %struct.outbound_entry*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
