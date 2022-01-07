; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_decode_tma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_decode_tma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_decoder = type { i32, i32 }
%struct.pt_packet = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ppt_tma = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_decode_tma(%struct.pt_packet_decoder* %0, %struct.pt_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_packet_decoder*, align 8
  %5 = alloca %struct.pt_packet*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_packet_decoder* %0, %struct.pt_packet_decoder** %4, align 8
  store %struct.pt_packet* %1, %struct.pt_packet** %5, align 8
  %7 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %4, align 8
  %8 = icmp ne %struct.pt_packet_decoder* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %11 = icmp ne %struct.pt_packet* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %9
  %16 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %17 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %4, align 8
  %20 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %4, align 8
  %23 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %22, i32 0, i32 0
  %24 = call i32 @pt_pkt_read_tma(i32* %18, i32 %21, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %15
  %30 = load i32, i32* @ppt_tma, align 4
  %31 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %32 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %35 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %27, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @pt_pkt_read_tma(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
