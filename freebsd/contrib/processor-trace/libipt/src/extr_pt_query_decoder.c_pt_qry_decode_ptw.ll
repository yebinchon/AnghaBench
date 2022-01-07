; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_ptw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_ptw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, %struct.pt_event*, i32, i32 }
%struct.pt_event = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pt_packet_ptw = type { i32, i64, i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_fup = common dso_local global i32 0, align 4
@ptev_ptwrite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_ptw(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_ptw, align 8
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
  br label %82

13:                                               ; preds = %1
  %14 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %15 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %17, i32 0, i32 3
  %19 = call i32 @pt_pkt_read_ptw(%struct.pt_packet_ptw* %4, i32 %16, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %82

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.pt_packet_ptw, %struct.pt_packet_ptw* %4, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pt_ptw_size(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %82

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.pt_packet_ptw, %struct.pt_packet_ptw* %4, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %38 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %37, i32 0, i32 2
  %39 = load i32, i32* @evb_fup, align 4
  %40 = call %struct.pt_event* @pt_evq_enqueue(i32* %38, i32 %39)
  store %struct.pt_event* %40, %struct.pt_event** %5, align 8
  %41 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %42 = icmp ne %struct.pt_event* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @pte_internal, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %82

46:                                               ; preds = %36
  br label %62

47:                                               ; preds = %32
  %48 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %49 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %48, i32 0, i32 2
  %50 = call %struct.pt_event* @pt_evq_standalone(i32* %49)
  store %struct.pt_event* %50, %struct.pt_event** %5, align 8
  %51 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %52 = icmp ne %struct.pt_event* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @pte_internal, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %82

56:                                               ; preds = %47
  %57 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %58 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %60 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %61 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %60, i32 0, i32 1
  store %struct.pt_event* %59, %struct.pt_event** %61, align 8
  br label %62

62:                                               ; preds = %56, %46
  %63 = load i32, i32* @ptev_ptwrite, align 4
  %64 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %65 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %68 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = getelementptr inbounds %struct.pt_packet_ptw, %struct.pt_packet_ptw* %4, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %74 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %79 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %62, %53, %43, %30, %22, %10
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @pt_pkt_read_ptw(%struct.pt_packet_ptw*, i32, i32*) #1

declare dso_local i32 @pt_ptw_size(i32) #1

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
