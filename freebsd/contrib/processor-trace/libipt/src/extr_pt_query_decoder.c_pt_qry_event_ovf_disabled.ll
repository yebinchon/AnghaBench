; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_ovf_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_ovf_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { %struct.pt_event*, i64, i32 }
%struct.pt_event = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptev_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*)* @pt_qry_event_ovf_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_event_ovf_disabled(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_event*, align 8
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %5 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %6 = icmp ne %struct.pt_query_decoder* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @pte_internal, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %12 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %11, i32 0, i32 2
  %13 = call %struct.pt_event* @pt_evq_standalone(i32* %12)
  store %struct.pt_event* %13, %struct.pt_event** %4, align 8
  %14 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %15 = icmp ne %struct.pt_event* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @pte_internal, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %10
  %20 = load i32, i32* @ptev_overflow, align 4
  %21 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %22 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %24 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %28 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %29 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %28, i32 0, i32 0
  store %struct.pt_event* %27, %struct.pt_event** %29, align 8
  %30 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %31 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %32 = call i32 @pt_qry_event_time(%struct.pt_event* %30, %struct.pt_query_decoder* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %19, %16, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
