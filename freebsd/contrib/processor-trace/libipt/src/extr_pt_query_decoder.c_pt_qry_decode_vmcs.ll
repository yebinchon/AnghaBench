; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_vmcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_vmcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, %struct.pt_event*, i32, i32 }
%struct.pt_event = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pt_packet_vmcs = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_tip = common dso_local global i32 0, align 4
@ptev_async_paging = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@ptev_async_vmcs = common dso_local global i8* null, align 8
@ptev_async_branch = common dso_local global i32 0, align 4
@ptev_vmcs = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_vmcs(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_vmcs, align 4
  %5 = alloca %struct.pt_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_event*, align 8
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %9 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %10 = icmp ne %struct.pt_query_decoder* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %130

14:                                               ; preds = %1
  %15 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %16 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %19 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %18, i32 0, i32 3
  %20 = call i32 @pt_pkt_read_vmcs(%struct.pt_packet_vmcs* %4, i32 %17, i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %130

25:                                               ; preds = %14
  %26 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %27 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %26, i32 0, i32 2
  %28 = load i32, i32* @evb_tip, align 4
  %29 = load i32, i32* @ptev_async_paging, align 4
  %30 = call %struct.pt_event* @pt_evq_find(i32* %27, i32 %28, i32 %29)
  store %struct.pt_event* %30, %struct.pt_event** %5, align 8
  %31 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %32 = icmp ne %struct.pt_event* %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %25
  %34 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %35 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %34, i32 0, i32 2
  %36 = load i32, i32* @evb_tip, align 4
  %37 = call %struct.pt_event* @pt_evq_enqueue(i32* %35, i32 %36)
  store %struct.pt_event* %37, %struct.pt_event** %8, align 8
  %38 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %39 = icmp ne %struct.pt_event* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @pte_nomem, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %130

43:                                               ; preds = %33
  %44 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %45 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %46 = bitcast %struct.pt_event* %44 to i8*
  %47 = bitcast %struct.pt_event* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load i8*, i8** @ptev_async_vmcs, align 8
  %49 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %50 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds %struct.pt_packet_vmcs, %struct.pt_packet_vmcs* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %54 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %59 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 8
  store i32 0, i32* %2, align 4
  br label %130

62:                                               ; preds = %25
  %63 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %64 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %63, i32 0, i32 2
  %65 = load i32, i32* @evb_tip, align 4
  %66 = load i32, i32* @ptev_async_branch, align 4
  %67 = call %struct.pt_event* @pt_evq_find(i32* %64, i32 %65, i32 %66)
  store %struct.pt_event* %67, %struct.pt_event** %5, align 8
  %68 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %69 = icmp ne %struct.pt_event* %68, null
  br i1 %69, label %70, label %95

70:                                               ; preds = %62
  %71 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %72 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %71, i32 0, i32 2
  %73 = load i32, i32* @evb_tip, align 4
  %74 = call %struct.pt_event* @pt_evq_enqueue(i32* %72, i32 %73)
  store %struct.pt_event* %74, %struct.pt_event** %5, align 8
  %75 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %76 = icmp ne %struct.pt_event* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @pte_nomem, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %130

80:                                               ; preds = %70
  %81 = load i8*, i8** @ptev_async_vmcs, align 8
  %82 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %83 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = getelementptr inbounds %struct.pt_packet_vmcs, %struct.pt_packet_vmcs* %4, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %87 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %92 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 8
  store i32 0, i32* %2, align 4
  br label %130

95:                                               ; preds = %62
  %96 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %97 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %96, i32 0, i32 2
  %98 = call %struct.pt_event* @pt_evq_standalone(i32* %97)
  store %struct.pt_event* %98, %struct.pt_event** %5, align 8
  %99 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %100 = icmp ne %struct.pt_event* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @pte_internal, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %130

104:                                              ; preds = %95
  %105 = load i8*, i8** @ptev_vmcs, align 8
  %106 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %107 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = getelementptr inbounds %struct.pt_packet_vmcs, %struct.pt_packet_vmcs* %4, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %111 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 8
  %114 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %115 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %116 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %115, i32 0, i32 1
  store %struct.pt_event* %114, %struct.pt_event** %116, align 8
  %117 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %118 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %119 = call i32 @pt_qry_event_time(%struct.pt_event* %117, %struct.pt_query_decoder* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %104
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %130

124:                                              ; preds = %104
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %127 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, %125
  store i32 %129, i32* %127, align 8
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %124, %122, %101, %80, %77, %43, %40, %23, %11
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @pt_pkt_read_vmcs(%struct.pt_packet_vmcs*, i32, i32*) #1

declare dso_local %struct.pt_event* @pt_evq_find(i32*, i32, i32) #1

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
