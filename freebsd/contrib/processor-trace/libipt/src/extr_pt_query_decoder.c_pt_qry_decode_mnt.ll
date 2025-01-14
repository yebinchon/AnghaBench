; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_mnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, %struct.pt_event*, i32, i32 }
%struct.pt_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pt_packet_mnt = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptev_mnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_mnt(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_mnt, align 4
  %5 = alloca %struct.pt_event*, align 8
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
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %15 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %17, i32 0, i32 3
  %19 = call i32 @pt_pkt_read_mnt(%struct.pt_packet_mnt* %4, i32 %16, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %59

24:                                               ; preds = %13
  %25 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %25, i32 0, i32 2
  %27 = call %struct.pt_event* @pt_evq_standalone(i32* %26)
  store %struct.pt_event* %27, %struct.pt_event** %5, align 8
  %28 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %29 = icmp ne %struct.pt_event* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @pte_internal, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %59

33:                                               ; preds = %24
  %34 = load i32, i32* @ptev_mnt, align 4
  %35 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %36 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.pt_packet_mnt, %struct.pt_packet_mnt* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %40 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %44 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %45 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %44, i32 0, i32 1
  store %struct.pt_event* %43, %struct.pt_event** %45, align 8
  %46 = load %struct.pt_event*, %struct.pt_event** %5, align 8
  %47 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %48 = call i32 @pt_qry_event_time(%struct.pt_event* %46, %struct.pt_query_decoder* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %59

53:                                               ; preds = %33
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %56 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %51, %30, %22, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @pt_pkt_read_mnt(%struct.pt_packet_mnt*, i32, i32*) #1

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
