; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_handle_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_handle_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32 }
%struct.comm_reply = type { i32 }
%struct.module_qstate = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.worker* }
%struct.worker = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.outbound_entry = type { i32*, %struct.module_qstate* }

@LDNS_PACKET_QUERY = common dso_local global i64 0, align 8
@NETEVENT_TIMEOUT = common dso_local global i32 0, align 4
@NETEVENT_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @worker_handle_reply(%struct.comm_point* %0, i8* %1, i32 %2, %struct.comm_reply* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comm_reply*, align 8
  %10 = alloca %struct.module_qstate*, align 8
  %11 = alloca %struct.worker*, align 8
  %12 = alloca %struct.outbound_entry, align 8
  store %struct.comm_point* %0, %struct.comm_point** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.comm_reply* %3, %struct.comm_reply** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.module_qstate*
  store %struct.module_qstate* %14, %struct.module_qstate** %10, align 8
  %15 = load %struct.module_qstate*, %struct.module_qstate** %10, align 8
  %16 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.worker*, %struct.worker** %18, align 8
  store %struct.worker* %19, %struct.worker** %11, align 8
  %20 = load %struct.module_qstate*, %struct.module_qstate** %10, align 8
  %21 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %12, i32 0, i32 1
  store %struct.module_qstate* %20, %struct.module_qstate** %21, align 8
  %22 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %12, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load %struct.worker*, %struct.worker** %11, align 8
  %27 = getelementptr inbounds %struct.worker, %struct.worker* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @mesh_report_reply(i32 %29, %struct.outbound_entry* %12, %struct.comm_reply* %30, i32 %31)
  %33 = load %struct.worker*, %struct.worker** %11, align 8
  %34 = call i32 @worker_mem_report(%struct.worker* %33, i32* null)
  store i32 0, i32* %5, align 4
  br label %77

35:                                               ; preds = %4
  %36 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %37 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sldns_buffer_begin(i32 %38)
  %40 = call i32 @LDNS_QR_WIRE(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %44 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sldns_buffer_begin(i32 %45)
  %47 = call i64 @LDNS_OPCODE_WIRE(i32 %46)
  %48 = load i64, i64* @LDNS_PACKET_QUERY, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %42
  %51 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %52 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sldns_buffer_begin(i32 %53)
  %55 = call i32 @LDNS_QDCOUNT(i32 %54)
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %67

57:                                               ; preds = %50, %42, %35
  %58 = load %struct.worker*, %struct.worker** %11, align 8
  %59 = getelementptr inbounds %struct.worker, %struct.worker* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %63 = load i32, i32* @NETEVENT_TIMEOUT, align 4
  %64 = call i32 @mesh_report_reply(i32 %61, %struct.outbound_entry* %12, %struct.comm_reply* %62, i32 %63)
  %65 = load %struct.worker*, %struct.worker** %11, align 8
  %66 = call i32 @worker_mem_report(%struct.worker* %65, i32* null)
  store i32 0, i32* %5, align 4
  br label %77

67:                                               ; preds = %50
  %68 = load %struct.worker*, %struct.worker** %11, align 8
  %69 = getelementptr inbounds %struct.worker, %struct.worker* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %73 = load i32, i32* @NETEVENT_NOERROR, align 4
  %74 = call i32 @mesh_report_reply(i32 %71, %struct.outbound_entry* %12, %struct.comm_reply* %72, i32 %73)
  %75 = load %struct.worker*, %struct.worker** %11, align 8
  %76 = call i32 @worker_mem_report(%struct.worker* %75, i32* null)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %67, %57, %25
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @mesh_report_reply(i32, %struct.outbound_entry*, %struct.comm_reply*, i32) #1

declare dso_local i32 @worker_mem_report(%struct.worker*, i32*) #1

declare dso_local i32 @LDNS_QR_WIRE(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32) #1

declare dso_local i64 @LDNS_OPCODE_WIRE(i32) #1

declare dso_local i32 @LDNS_QDCOUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
