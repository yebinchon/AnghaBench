; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_mode_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_mode_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32 }
%struct.pt_packet_mode_exec = type { i32 }
%struct.pt_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_tip = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@ptev_exec_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*, %struct.pt_packet_mode_exec*)* @pt_qry_decode_mode_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_decode_mode_exec(%struct.pt_query_decoder* %0, %struct.pt_packet_mode_exec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_packet_mode_exec*, align 8
  %6 = alloca %struct.pt_event*, align 8
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %4, align 8
  store %struct.pt_packet_mode_exec* %1, %struct.pt_packet_mode_exec** %5, align 8
  %7 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %8 = icmp ne %struct.pt_query_decoder* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.pt_packet_mode_exec*, %struct.pt_packet_mode_exec** %5, align 8
  %11 = icmp ne %struct.pt_packet_mode_exec* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %9
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 0
  %18 = load i32, i32* @evb_tip, align 4
  %19 = call %struct.pt_event* @pt_evq_enqueue(i32* %17, i32 %18)
  store %struct.pt_event* %19, %struct.pt_event** %6, align 8
  %20 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %21 = icmp ne %struct.pt_event* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @pte_nomem, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %15
  %26 = load i32, i32* @ptev_exec_mode, align 4
  %27 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %28 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.pt_packet_mode_exec*, %struct.pt_packet_mode_exec** %5, align 8
  %30 = call i32 @pt_get_exec_mode(%struct.pt_packet_mode_exec* %29)
  %31 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %32 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %36 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %37 = call i32 @pt_qry_event_time(%struct.pt_event* %35, %struct.pt_query_decoder* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %25, %22, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

declare dso_local i32 @pt_get_exec_mode(%struct.pt_packet_mode_exec*) #1

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
