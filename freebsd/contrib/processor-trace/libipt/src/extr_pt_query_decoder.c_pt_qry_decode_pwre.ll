; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_pwre.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_pwre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, %struct.pt_event*, i32, i32 }
%struct.pt_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pt_packet_pwre = type { i64, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptev_pwre = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_pwre(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_pwre, align 8
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
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 3
  %18 = call i32 @pt_pkt_read_pwre(%struct.pt_packet_pwre* %4, i32 %15, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %65

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
  br label %65

32:                                               ; preds = %23
  %33 = load i32, i32* @ptev_pwre, align 4
  %34 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %35 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.pt_packet_pwre, %struct.pt_packet_pwre* %4, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %39 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  %42 = getelementptr inbounds %struct.pt_packet_pwre, %struct.pt_packet_pwre* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %45 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = getelementptr inbounds %struct.pt_packet_pwre, %struct.pt_packet_pwre* %4, i32 0, i32 0
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
  %57 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %58 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %59 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %58, i32 0, i32 1
  store %struct.pt_event* %57, %struct.pt_event** %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %62 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %56, %29, %21, %9
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @pt_pkt_read_pwre(%struct.pt_packet_pwre*, i32, i32*) #1

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
