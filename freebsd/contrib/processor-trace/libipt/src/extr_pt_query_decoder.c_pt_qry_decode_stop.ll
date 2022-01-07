; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, %struct.pt_event*, i32 }
%struct.pt_event = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptev_stop = common dso_local global i32 0, align 4
@ptps_stop = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_stop(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_event*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %6 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %7 = icmp ne %struct.pt_query_decoder* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %13 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %12, i32 0, i32 2
  %14 = call %struct.pt_event* @pt_evq_standalone(i32* %13)
  store %struct.pt_event* %14, %struct.pt_event** %4, align 8
  %15 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %16 = icmp ne %struct.pt_event* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @pte_internal, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %42

20:                                               ; preds = %11
  %21 = load i32, i32* @ptev_stop, align 4
  %22 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %23 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %25 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %25, i32 0, i32 1
  store %struct.pt_event* %24, %struct.pt_event** %26, align 8
  %27 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %28 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %29 = call i32 @pt_qry_event_time(%struct.pt_event* %27, %struct.pt_query_decoder* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %42

34:                                               ; preds = %20
  %35 = load i64, i64* @ptps_stop, align 8
  %36 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %37 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %34, %32, %17, %8
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
