; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_header_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_header_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, i32 }
%struct.pt_packet_mode = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.pt_event = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_psbend = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@ptev_exec_mode = common dso_local global i32 0, align 4
@ptev_tsx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_header_mode(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_mode, align 4
  %5 = alloca %struct.pt_event*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %7 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %8 = icmp ne %struct.pt_query_decoder* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %73

12:                                               ; preds = %1
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 2
  %18 = call i32 @pt_pkt_read_mode(%struct.pt_packet_mode* %4, i32 %15, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %73

23:                                               ; preds = %12
  %24 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %25 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %24, i32 0, i32 1
  %26 = load i32, i32* @evb_psbend, align 4
  %27 = call %struct.pt_event* @pt_evq_enqueue(i32* %25, i32 %26)
  store %struct.pt_event* %27, %struct.pt_event** %5, align 8
  %28 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %29 = icmp ne %struct.pt_event* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @pte_nomem, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %73

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.pt_packet_mode, %struct.pt_packet_mode* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %67 [
    i32 129, label %36
    i32 128, label %47
  ]

36:                                               ; preds = %33
  %37 = load i32, i32* @ptev_exec_mode, align 4
  %38 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %39 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.pt_packet_mode, %struct.pt_packet_mode* %4, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = call i32 @pt_get_exec_mode(i32* %41)
  %43 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %44 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  br label %67

47:                                               ; preds = %33
  %48 = load i32, i32* @ptev_tsx, align 4
  %49 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %50 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.pt_packet_mode, %struct.pt_packet_mode* %4, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %56 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = getelementptr inbounds %struct.pt_packet_mode, %struct.pt_packet_mode* %4, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %64 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %33, %47, %36
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %70 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %67, %30, %21, %9
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @pt_pkt_read_mode(%struct.pt_packet_mode*, i32, i32*) #1

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

declare dso_local i32 @pt_get_exec_mode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
