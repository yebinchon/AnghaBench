; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_tip_pgd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_tip_pgd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, %struct.pt_event* }
%struct.pt_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_tip = common dso_local global i32 0, align 4
@ptev_disabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_tip_pgd(%struct.pt_query_decoder* %0) #0 {
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
  br label %88

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
  br label %88

19:                                               ; preds = %12
  %20 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %21 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %20, i32 0, i32 0
  %22 = load i32, i32* @evb_tip, align 4
  %23 = call %struct.pt_event* @pt_evq_dequeue(i32* %21, i32 %22)
  store %struct.pt_event* %23, %struct.pt_event** %4, align 8
  %24 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %25 = icmp ne %struct.pt_event* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %28 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %29 = call i32 @pt_qry_event_tip_pgd(%struct.pt_event* %27, %struct.pt_query_decoder* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %88

34:                                               ; preds = %26
  br label %68

35:                                               ; preds = %19
  %36 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %37 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %36, i32 0, i32 0
  %38 = call %struct.pt_event* @pt_evq_standalone(i32* %37)
  store %struct.pt_event* %38, %struct.pt_event** %4, align 8
  %39 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %40 = icmp ne %struct.pt_event* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @pte_internal, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %88

44:                                               ; preds = %35
  %45 = load i32, i32* @ptev_disabled, align 4
  %46 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %47 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %49 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %53 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %54 = call i32 @pt_qry_event_ip(i32* %51, %struct.pt_event* %52, %struct.pt_query_decoder* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %88

59:                                               ; preds = %44
  %60 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %61 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %62 = call i32 @pt_qry_event_time(%struct.pt_event* %60, %struct.pt_query_decoder* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %88

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %34
  %69 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %70 = icmp ne %struct.pt_event* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @pte_internal, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %88

74:                                               ; preds = %68
  %75 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %76 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %77 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %76, i32 0, i32 1
  store %struct.pt_event* %75, %struct.pt_event** %77, align 8
  %78 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %79 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %78, i32 0, i32 0
  %80 = load i32, i32* @evb_tip, align 4
  %81 = call i64 @pt_evq_pending(i32* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %88

84:                                               ; preds = %74
  %85 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @pt_qry_consume_tip_pgd(%struct.pt_query_decoder* %85, i32 %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %83, %71, %65, %57, %41, %32, %17, %9
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @pt_qry_decode_ip(%struct.pt_query_decoder*) #1

declare dso_local %struct.pt_event* @pt_evq_dequeue(i32*, i32) #1

declare dso_local i32 @pt_qry_event_tip_pgd(%struct.pt_event*, %struct.pt_query_decoder*) #1

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

declare dso_local i32 @pt_qry_event_ip(i32*, %struct.pt_event*, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

declare dso_local i64 @pt_evq_pending(i32*, i32) #1

declare dso_local i32 @pt_qry_consume_tip_pgd(%struct.pt_query_decoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
