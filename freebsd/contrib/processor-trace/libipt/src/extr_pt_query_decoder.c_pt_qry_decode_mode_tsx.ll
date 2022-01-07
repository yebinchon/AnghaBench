; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_mode_tsx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_mode_tsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, %struct.pt_event*, i32 }
%struct.pt_event = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.pt_packet_mode_tsx = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_fup = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@ptev_tsx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*, %struct.pt_packet_mode_tsx*)* @pt_qry_decode_mode_tsx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_decode_mode_tsx(%struct.pt_query_decoder* %0, %struct.pt_packet_mode_tsx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_packet_mode_tsx*, align 8
  %6 = alloca %struct.pt_event*, align 8
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %4, align 8
  store %struct.pt_packet_mode_tsx* %1, %struct.pt_packet_mode_tsx** %5, align 8
  %7 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %8 = icmp ne %struct.pt_query_decoder* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.pt_packet_mode_tsx*, %struct.pt_packet_mode_tsx** %5, align 8
  %11 = icmp ne %struct.pt_packet_mode_tsx* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %71

15:                                               ; preds = %9
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %15
  %21 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %22 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %21, i32 0, i32 0
  %23 = call %struct.pt_event* @pt_evq_standalone(i32* %22)
  store %struct.pt_event* %23, %struct.pt_event** %6, align 8
  %24 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %25 = icmp ne %struct.pt_event* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @pte_internal, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %71

29:                                               ; preds = %20
  %30 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %31 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %35 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %37 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %38 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %37, i32 0, i32 1
  store %struct.pt_event* %36, %struct.pt_event** %38, align 8
  br label %50

39:                                               ; preds = %15
  %40 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %41 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %40, i32 0, i32 0
  %42 = load i32, i32* @evb_fup, align 4
  %43 = call %struct.pt_event* @pt_evq_enqueue(i32* %41, i32 %42)
  store %struct.pt_event* %43, %struct.pt_event** %6, align 8
  %44 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %45 = icmp ne %struct.pt_event* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @pte_nomem, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %71

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i32, i32* @ptev_tsx, align 4
  %52 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %53 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.pt_packet_mode_tsx*, %struct.pt_packet_mode_tsx** %5, align 8
  %55 = getelementptr inbounds %struct.pt_packet_mode_tsx, %struct.pt_packet_mode_tsx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %58 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.pt_packet_mode_tsx*, %struct.pt_packet_mode_tsx** %5, align 8
  %62 = getelementptr inbounds %struct.pt_packet_mode_tsx, %struct.pt_packet_mode_tsx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %65 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  %68 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %69 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %70 = call i32 @pt_qry_event_time(%struct.pt_event* %68, %struct.pt_query_decoder* %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %50, %46, %26, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
