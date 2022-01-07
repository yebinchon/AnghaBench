; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_pip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_pip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, %struct.pt_event*, i32 }
%struct.pt_event = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pt_packet_pip = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_tip = common dso_local global i32 0, align 4
@ptev_async_branch = common dso_local global i32 0, align 4
@ptev_paging = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@ptev_async_paging = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_pip(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_pip, align 4
  %5 = alloca %struct.pt_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %8 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %9 = icmp ne %struct.pt_query_decoder* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @pte_internal, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %100

13:                                               ; preds = %1
  %14 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %15 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %17, i32 0, i32 3
  %19 = call i32 @pt_pkt_read_pip(%struct.pt_packet_pip* %4, i32 %16, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %100

24:                                               ; preds = %13
  %25 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %25, i32 0, i32 1
  %27 = load i32, i32* @evb_tip, align 4
  %28 = load i32, i32* @ptev_async_branch, align 4
  %29 = call %struct.pt_event* @pt_evq_find(i32* %26, i32 %27, i32 %28)
  store %struct.pt_event* %29, %struct.pt_event** %5, align 8
  %30 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %31 = icmp ne %struct.pt_event* %30, null
  br i1 %31, label %60, label %32

32:                                               ; preds = %24
  %33 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %34 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %33, i32 0, i32 1
  %35 = call %struct.pt_event* @pt_evq_standalone(i32* %34)
  store %struct.pt_event* %35, %struct.pt_event** %5, align 8
  %36 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %37 = icmp ne %struct.pt_event* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @pte_internal, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %100

41:                                               ; preds = %32
  %42 = load i32, i32* @ptev_paging, align 4
  %43 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %44 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.pt_packet_pip, %struct.pt_packet_pip* %4, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %48 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = getelementptr inbounds %struct.pt_packet_pip, %struct.pt_packet_pip* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %54 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %58 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %59 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %58, i32 0, i32 2
  store %struct.pt_event* %57, %struct.pt_event** %59, align 8
  br label %86

60:                                               ; preds = %24
  %61 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %62 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %61, i32 0, i32 1
  %63 = load i32, i32* @evb_tip, align 4
  %64 = call %struct.pt_event* @pt_evq_enqueue(i32* %62, i32 %63)
  store %struct.pt_event* %64, %struct.pt_event** %5, align 8
  %65 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %66 = icmp ne %struct.pt_event* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @pte_nomem, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %100

70:                                               ; preds = %60
  %71 = load i32, i32* @ptev_async_paging, align 4
  %72 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %73 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = getelementptr inbounds %struct.pt_packet_pip, %struct.pt_packet_pip* %4, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %77 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = getelementptr inbounds %struct.pt_packet_pip, %struct.pt_packet_pip* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %83 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %70, %41
  %87 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %88 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %89 = call i32 @pt_qry_event_time(%struct.pt_event* %87, %struct.pt_query_decoder* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %100

94:                                               ; preds = %86
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %97 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %94, %92, %67, %38, %22, %10
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @pt_pkt_read_pip(%struct.pt_packet_pip*, i32, i32*) #1

declare dso_local %struct.pt_event* @pt_evq_find(i32*, i32, i32) #1

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
