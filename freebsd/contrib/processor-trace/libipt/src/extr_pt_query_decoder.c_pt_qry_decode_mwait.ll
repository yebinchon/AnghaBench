; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_mwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_mwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, i32 }
%struct.pt_packet_mwait = type { i32, i32 }
%struct.pt_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_fup = common dso_local global i32 0, align 4
@ptev_mwait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_mwait(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_mwait, align 4
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
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 2
  %18 = call i32 @pt_pkt_read_mwait(%struct.pt_packet_mwait* %4, i32 %15, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %12
  %24 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %25 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %24, i32 0, i32 1
  %26 = load i32, i32* @evb_fup, align 4
  %27 = call %struct.pt_event* @pt_evq_enqueue(i32* %25, i32 %26)
  store %struct.pt_event* %27, %struct.pt_event** %5, align 8
  %28 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %29 = icmp ne %struct.pt_event* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @pte_internal, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %54

33:                                               ; preds = %23
  %34 = load i32, i32* @ptev_mwait, align 4
  %35 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %36 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.pt_packet_mwait, %struct.pt_packet_mwait* %4, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %40 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = getelementptr inbounds %struct.pt_packet_mwait, %struct.pt_packet_mwait* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %46 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %51 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %33, %30, %21, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @pt_pkt_read_mwait(%struct.pt_packet_mwait*, i32, i32*) #1

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
