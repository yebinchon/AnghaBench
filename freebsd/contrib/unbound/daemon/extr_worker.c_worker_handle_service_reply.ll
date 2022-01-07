; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_handle_service_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_handle_service_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32 }
%struct.comm_reply = type { i32 }
%struct.outbound_entry = type { %struct.TYPE_5__*, %struct.serviced_query* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.worker* }
%struct.worker = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.serviced_query = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"worker svcd callback for qstate %p\00", align 1
@LDNS_PACKET_QUERY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"worker: bad reply handled as timeout\00", align 1
@NETEVENT_TIMEOUT = common dso_local global i32 0, align 4
@NETEVENT_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @worker_handle_service_reply(%struct.comm_point* %0, i8* %1, i32 %2, %struct.comm_reply* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comm_reply*, align 8
  %10 = alloca %struct.outbound_entry*, align 8
  %11 = alloca %struct.worker*, align 8
  %12 = alloca %struct.serviced_query*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.comm_reply* %3, %struct.comm_reply** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.outbound_entry*
  store %struct.outbound_entry* %14, %struct.outbound_entry** %10, align 8
  %15 = load %struct.outbound_entry*, %struct.outbound_entry** %10, align 8
  %16 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.worker*, %struct.worker** %20, align 8
  store %struct.worker* %21, %struct.worker** %11, align 8
  %22 = load %struct.outbound_entry*, %struct.outbound_entry** %10, align 8
  %23 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %22, i32 0, i32 1
  %24 = load %struct.serviced_query*, %struct.serviced_query** %23, align 8
  store %struct.serviced_query* %24, %struct.serviced_query** %12, align 8
  %25 = load i32, i32* @VERB_ALGO, align 4
  %26 = load %struct.outbound_entry*, %struct.outbound_entry** %10, align 8
  %27 = getelementptr inbounds %struct.outbound_entry, %struct.outbound_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 (i32, i8*, ...) @verbose(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %4
  %33 = load %struct.worker*, %struct.worker** %11, align 8
  %34 = getelementptr inbounds %struct.worker, %struct.worker* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.outbound_entry*, %struct.outbound_entry** %10, align 8
  %38 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @mesh_report_reply(i32 %36, %struct.outbound_entry* %37, %struct.comm_reply* %38, i32 %39)
  %41 = load %struct.worker*, %struct.worker** %11, align 8
  %42 = load %struct.serviced_query*, %struct.serviced_query** %12, align 8
  %43 = call i32 @worker_mem_report(%struct.worker* %41, %struct.serviced_query* %42)
  store i32 0, i32* %5, align 4
  br label %92

44:                                               ; preds = %4
  %45 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %46 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sldns_buffer_begin(i32 %47)
  %49 = call i32 @LDNS_QR_WIRE(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %53 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sldns_buffer_begin(i32 %54)
  %56 = call i64 @LDNS_OPCODE_WIRE(i32 %55)
  %57 = load i64, i64* @LDNS_PACKET_QUERY, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %51
  %60 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %61 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sldns_buffer_begin(i32 %62)
  %64 = call i32 @LDNS_QDCOUNT(i32 %63)
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %80

66:                                               ; preds = %59, %51, %44
  %67 = load i32, i32* @VERB_ALGO, align 4
  %68 = call i32 (i32, i8*, ...) @verbose(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.worker*, %struct.worker** %11, align 8
  %70 = getelementptr inbounds %struct.worker, %struct.worker* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.outbound_entry*, %struct.outbound_entry** %10, align 8
  %74 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %75 = load i32, i32* @NETEVENT_TIMEOUT, align 4
  %76 = call i32 @mesh_report_reply(i32 %72, %struct.outbound_entry* %73, %struct.comm_reply* %74, i32 %75)
  %77 = load %struct.worker*, %struct.worker** %11, align 8
  %78 = load %struct.serviced_query*, %struct.serviced_query** %12, align 8
  %79 = call i32 @worker_mem_report(%struct.worker* %77, %struct.serviced_query* %78)
  store i32 0, i32* %5, align 4
  br label %92

80:                                               ; preds = %59
  %81 = load %struct.worker*, %struct.worker** %11, align 8
  %82 = getelementptr inbounds %struct.worker, %struct.worker* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.outbound_entry*, %struct.outbound_entry** %10, align 8
  %86 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %87 = load i32, i32* @NETEVENT_NOERROR, align 4
  %88 = call i32 @mesh_report_reply(i32 %84, %struct.outbound_entry* %85, %struct.comm_reply* %86, i32 %87)
  %89 = load %struct.worker*, %struct.worker** %11, align 8
  %90 = load %struct.serviced_query*, %struct.serviced_query** %12, align 8
  %91 = call i32 @worker_mem_report(%struct.worker* %89, %struct.serviced_query* %90)
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %80, %66, %32
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @mesh_report_reply(i32, %struct.outbound_entry*, %struct.comm_reply*, i32) #1

declare dso_local i32 @worker_mem_report(%struct.worker*, %struct.serviced_query*) #1

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
