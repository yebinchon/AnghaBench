; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_fup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_fup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, i64, %struct.pt_event* }
%struct.pt_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_fup = common dso_local global i32 0, align 4
@evb_tip = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@ptev_async_branch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_fup(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_event*, align 8
  %5 = alloca i32, align 4
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
  br label %93

13:                                               ; preds = %1
  %14 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %15 = call i32 @pt_qry_decode_ip(%struct.pt_query_decoder* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %93

20:                                               ; preds = %13
  %21 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %22 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %21, i32 0, i32 0
  %23 = load i32, i32* @evb_fup, align 4
  %24 = call %struct.pt_event* @pt_evq_dequeue(i32* %22, i32 %23)
  store %struct.pt_event* %24, %struct.pt_event** %4, align 8
  %25 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %26 = icmp ne %struct.pt_event* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %20
  %28 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %29 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %30 = call i32 @pt_qry_event_fup(%struct.pt_event* %28, %struct.pt_query_decoder* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %93

35:                                               ; preds = %27
  %36 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %37 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %38 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %37, i32 0, i32 3
  store %struct.pt_event* %36, %struct.pt_event** %38, align 8
  %39 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %40 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %39, i32 0, i32 0
  %41 = load i32, i32* @evb_fup, align 4
  %42 = call i64 @pt_evq_pending(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %93

45:                                               ; preds = %35
  %46 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %47 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %93

51:                                               ; preds = %45
  %52 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %53 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  br label %89

54:                                               ; preds = %20
  %55 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %56 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %55, i32 0, i32 1
  %57 = call i32 @pt_last_ip_query(i32* %7, i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %93

62:                                               ; preds = %54
  %63 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %64 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %63, i32 0, i32 0
  %65 = load i32, i32* @evb_tip, align 4
  %66 = call %struct.pt_event* @pt_evq_enqueue(i32* %64, i32 %65)
  store %struct.pt_event* %66, %struct.pt_event** %4, align 8
  %67 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %68 = icmp ne %struct.pt_event* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @pte_nomem, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %93

72:                                               ; preds = %62
  %73 = load i32, i32* @ptev_async_branch, align 4
  %74 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %75 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %78 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %82 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %83 = call i32 @pt_qry_event_time(%struct.pt_event* %81, %struct.pt_query_decoder* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %72
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %93

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88, %51
  %90 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @pt_qry_consume_fup(%struct.pt_query_decoder* %90, i32 %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %86, %69, %60, %50, %44, %33, %18, %10
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @pt_qry_decode_ip(%struct.pt_query_decoder*) #1

declare dso_local %struct.pt_event* @pt_evq_dequeue(i32*, i32) #1

declare dso_local i32 @pt_qry_event_fup(%struct.pt_event*, %struct.pt_query_decoder*) #1

declare dso_local i64 @pt_evq_pending(i32*, i32) #1

declare dso_local i32 @pt_last_ip_query(i32*, i32*) #1

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_consume_fup(%struct.pt_query_decoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
