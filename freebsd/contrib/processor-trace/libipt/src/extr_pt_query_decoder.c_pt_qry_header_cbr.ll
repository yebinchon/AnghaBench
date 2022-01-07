; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_header_cbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_header_cbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, i32, i32, i32 }
%struct.pt_packet_cbr = type { i32 }
%struct.pt_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_psbend = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@ptev_cbr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_header_cbr(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_cbr, align 4
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
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %15 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %17, i32 0, i32 2
  %19 = call i32 @pt_pkt_read_cbr(%struct.pt_packet_cbr* %4, i32 %16, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %61

24:                                               ; preds = %13
  %25 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %25, i32 0, i32 4
  %27 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %28 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %27, i32 0, i32 3
  %29 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %30 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %29, i32 0, i32 2
  %31 = call i32 @pt_qry_apply_header_cbr(i32* %26, i32* %28, %struct.pt_packet_cbr* %4, i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %61

36:                                               ; preds = %24
  %37 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %38 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %37, i32 0, i32 1
  %39 = load i32, i32* @evb_psbend, align 4
  %40 = call %struct.pt_event* @pt_evq_enqueue(i32* %38, i32 %39)
  store %struct.pt_event* %40, %struct.pt_event** %5, align 8
  %41 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %42 = icmp ne %struct.pt_event* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @pte_nomem, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %61

46:                                               ; preds = %36
  %47 = load i32, i32* @ptev_cbr, align 4
  %48 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %49 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.pt_packet_cbr, %struct.pt_packet_cbr* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %53 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %58 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %46, %43, %34, %22, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @pt_pkt_read_cbr(%struct.pt_packet_cbr*, i32, i32*) #1

declare dso_local i32 @pt_qry_apply_header_cbr(i32*, i32*, %struct.pt_packet_cbr*, i32*) #1

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
