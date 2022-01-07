; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_decoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_decoder = type { i32 }
%struct.pt_config = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_decoder_init(%struct.pt_packet_decoder* %0, %struct.pt_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_packet_decoder*, align 8
  %5 = alloca %struct.pt_config*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_packet_decoder* %0, %struct.pt_packet_decoder** %4, align 8
  store %struct.pt_config* %1, %struct.pt_config** %5, align 8
  %7 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %4, align 8
  %8 = icmp ne %struct.pt_packet_decoder* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %11 = icmp ne %struct.pt_config* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @pte_invalid, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %9
  %16 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %4, align 8
  %17 = call i32 @memset(%struct.pt_packet_decoder* %16, i32 0, i32 4)
  %18 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %4, align 8
  %19 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %18, i32 0, i32 0
  %20 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %21 = call i32 @pt_config_from_user(i32* %19, %struct.pt_config* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %24, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @memset(%struct.pt_packet_decoder*, i32, i32) #1

declare dso_local i32 @pt_config_from_user(i32*, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
