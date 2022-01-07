; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_pkt_find_ovf_fup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_pkt_find_ovf_fup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_decoder = type { i32 }
%struct.pt_packet = type { i32 }

@pte_bad_opc = common dso_local global i32 0, align 4
@pte_bad_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_packet_decoder*)* @pt_pkt_find_ovf_fup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_pkt_find_ovf_fup(%struct.pt_packet_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_packet_decoder*, align 8
  %4 = alloca %struct.pt_packet, align 4
  %5 = alloca i32, align 4
  store %struct.pt_packet_decoder* %0, %struct.pt_packet_decoder** %3, align 8
  br label %6

6:                                                ; preds = %25, %20, %1
  %7 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %8 = call i32 @pt_pkt_next(%struct.pt_packet_decoder* %7, %struct.pt_packet* %4, i32 4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %25 [
    i32 151, label %16
    i32 150, label %17
    i32 129, label %20
    i32 144, label %20
    i32 149, label %20
    i32 154, label %20
    i32 130, label %20
    i32 133, label %20
    i32 147, label %20
    i32 153, label %20
    i32 142, label %21
    i32 134, label %21
    i32 148, label %21
    i32 143, label %21
    i32 128, label %21
    i32 137, label %21
    i32 145, label %21
    i32 152, label %21
    i32 146, label %21
    i32 139, label %21
    i32 138, label %21
    i32 140, label %21
    i32 141, label %22
    i32 136, label %22
    i32 135, label %22
    i32 131, label %22
    i32 132, label %22
  ]

16:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %26

17:                                               ; preds = %13
  %18 = load i32, i32* @pte_bad_opc, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  br label %6

21:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  store i32 0, i32* %2, align 4
  br label %26

22:                                               ; preds = %13, %13, %13, %13, %13
  %23 = load i32, i32* @pte_bad_context, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %13
  br label %6

26:                                               ; preds = %22, %21, %17, %16, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @pt_pkt_next(%struct.pt_packet_decoder*, %struct.pt_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
