; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_decode_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_decode_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_decoder = type { i32 }
%struct.pt_packet = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@ppt_stop = common dso_local global i32 0, align 4
@ptps_stop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_decode_stop(%struct.pt_packet_decoder* %0, %struct.pt_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_packet_decoder*, align 8
  %5 = alloca %struct.pt_packet*, align 8
  store %struct.pt_packet_decoder* %0, %struct.pt_packet_decoder** %4, align 8
  store %struct.pt_packet* %1, %struct.pt_packet** %5, align 8
  %6 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %4, align 8
  %7 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %8 = icmp ne %struct.pt_packet* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @ppt_stop, align 4
  %14 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %15 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ptps_stop, align 4
  %17 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %18 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @ptps_stop, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %12, %9
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
