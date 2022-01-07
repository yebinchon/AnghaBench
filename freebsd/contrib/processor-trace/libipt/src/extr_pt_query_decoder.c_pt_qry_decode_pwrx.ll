; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_pwrx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_pwrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, %struct.pt_event*, i32, i32 }
%struct.pt_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.pt_packet_pwrx = type { i64, i64, i64, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptev_pwrx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_pwrx(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_pwrx, align 8
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
  br label %83

12:                                               ; preds = %1
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 3
  %18 = call i32 @pt_pkt_read_pwrx(%struct.pt_packet_pwrx* %4, i32 %15, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %83

23:                                               ; preds = %12
  %24 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %25 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %24, i32 0, i32 2
  %26 = call %struct.pt_event* @pt_evq_standalone(i32* %25)
  store %struct.pt_event* %26, %struct.pt_event** %5, align 8
  %27 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %28 = icmp ne %struct.pt_event* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @pte_internal, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %83

32:                                               ; preds = %23
  %33 = load i32, i32* @ptev_pwrx, align 4
  %34 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %35 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.pt_packet_pwrx, %struct.pt_packet_pwrx* %4, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %39 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store i32 %37, i32* %41, align 4
  %42 = getelementptr inbounds %struct.pt_packet_pwrx, %struct.pt_packet_pwrx* %4, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %45 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 %43, i32* %47, align 4
  %48 = getelementptr inbounds %struct.pt_packet_pwrx, %struct.pt_packet_pwrx* %4, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %32
  %52 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %53 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %32
  %57 = getelementptr inbounds %struct.pt_packet_pwrx, %struct.pt_packet_pwrx* %4, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %62 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.pt_packet_pwrx, %struct.pt_packet_pwrx* %4, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %71 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %76 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %77 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %76, i32 0, i32 1
  store %struct.pt_event* %75, %struct.pt_event** %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %80 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 8
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %74, %29, %21, %9
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @pt_pkt_read_pwrx(%struct.pt_packet_pwrx*, i32, i32*) #1

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
