; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_find_header_fup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_find_header_fup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet = type { i32 }
%struct.pt_packet_decoder = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_packet*, %struct.pt_packet_decoder*)* @pt_qry_find_header_fup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_find_header_fup(%struct.pt_packet* %0, %struct.pt_packet_decoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_packet*, align 8
  %5 = alloca %struct.pt_packet_decoder*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_packet* %0, %struct.pt_packet** %4, align 8
  store %struct.pt_packet_decoder* %1, %struct.pt_packet_decoder** %5, align 8
  %7 = load %struct.pt_packet*, %struct.pt_packet** %4, align 8
  %8 = icmp ne %struct.pt_packet* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %5, align 8
  %11 = icmp ne %struct.pt_packet_decoder* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %32

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %31, %15
  %17 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %5, align 8
  %18 = load %struct.pt_packet*, %struct.pt_packet** %4, align 8
  %19 = call i32 @pt_pkt_next(%struct.pt_packet_decoder* %17, %struct.pt_packet* %18, i32 4)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %16
  %25 = load %struct.pt_packet*, %struct.pt_packet** %4, align 8
  %26 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %28 [
    i32 128, label %29
    i32 129, label %30
  ]

28:                                               ; preds = %24
  br label %31

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %32

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %32

31:                                               ; preds = %28
  br label %16

32:                                               ; preds = %30, %29, %22, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @pt_pkt_next(%struct.pt_packet_decoder*, %struct.pt_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
