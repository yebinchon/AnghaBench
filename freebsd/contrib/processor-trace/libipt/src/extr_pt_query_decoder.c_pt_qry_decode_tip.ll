; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_tip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_tip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i64, i32, %struct.pt_event* }
%struct.pt_event = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_tip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_tip(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %7 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %8 = icmp ne %struct.pt_query_decoder* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %14 = call i32 @pt_qry_decode_ip(%struct.pt_query_decoder* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %12
  %20 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %21 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %20, i32 0, i32 1
  %22 = load i32, i32* @evb_tip, align 4
  %23 = call %struct.pt_event* @pt_evq_dequeue(i32* %21, i32 %22)
  store %struct.pt_event* %23, %struct.pt_event** %4, align 8
  %24 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %25 = icmp ne %struct.pt_event* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %19
  %27 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %28 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %29 = call i32 @pt_qry_event_tip(%struct.pt_event* %27, %struct.pt_query_decoder* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %57

34:                                               ; preds = %26
  %35 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %36 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %37 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %36, i32 0, i32 2
  store %struct.pt_event* %35, %struct.pt_event** %37, align 8
  %38 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %39 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %38, i32 0, i32 1
  %40 = load i32, i32* @evb_tip, align 4
  %41 = call i64 @pt_evq_pending(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %57

44:                                               ; preds = %34
  %45 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %46 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %57

50:                                               ; preds = %44
  %51 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %52 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %19
  %54 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @pt_qry_consume_tip(%struct.pt_query_decoder* %54, i32 %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %49, %43, %32, %17, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @pt_qry_decode_ip(%struct.pt_query_decoder*) #1

declare dso_local %struct.pt_event* @pt_evq_dequeue(i32*, i32) #1

declare dso_local i32 @pt_qry_event_tip(%struct.pt_event*, %struct.pt_query_decoder*) #1

declare dso_local i64 @pt_evq_pending(i32*, i32) #1

declare dso_local i32 @pt_qry_consume_tip(%struct.pt_query_decoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
