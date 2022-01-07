; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_exstop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_exstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, %struct.pt_event*, i32, i32 }
%struct.pt_event = type { i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.pt_packet_exstop = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@evb_fup = common dso_local global i32 0, align 4
@ptev_exstop = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_exstop(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_exstop, align 8
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
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 3
  %18 = call i32 @pt_pkt_read_exstop(%struct.pt_packet_exstop* %4, i32 %15, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.pt_packet_exstop, %struct.pt_packet_exstop* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %29 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %28, i32 0, i32 2
  %30 = load i32, i32* @evb_fup, align 4
  %31 = call %struct.pt_event* @pt_evq_enqueue(i32* %29, i32 %30)
  store %struct.pt_event* %31, %struct.pt_event** %5, align 8
  %32 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %33 = icmp ne %struct.pt_event* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @pte_internal, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %69

37:                                               ; preds = %27
  %38 = load i8*, i8** @ptev_exstop, align 8
  %39 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %40 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %63

41:                                               ; preds = %23
  %42 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %43 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %42, i32 0, i32 2
  %44 = call %struct.pt_event* @pt_evq_standalone(i32* %43)
  store %struct.pt_event* %44, %struct.pt_event** %5, align 8
  %45 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %46 = icmp ne %struct.pt_event* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @pte_internal, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %69

50:                                               ; preds = %41
  %51 = load i8*, i8** @ptev_exstop, align 8
  %52 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %53 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %55 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %57 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %61 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %62 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %61, i32 0, i32 1
  store %struct.pt_event* %60, %struct.pt_event** %62, align 8
  br label %63

63:                                               ; preds = %50, %37
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %66 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %47, %34, %21, %9
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @pt_pkt_read_exstop(%struct.pt_packet_exstop*, i32, i32*) #1

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
