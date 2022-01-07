; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_sync_backward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_sync_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_decoder = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_sync_backward(%struct.pt_packet_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_packet_decoder*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_packet_decoder* %0, %struct.pt_packet_decoder** %3, align 8
  %7 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %8 = icmp ne %struct.pt_packet_decoder* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @pte_invalid, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %20 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %4, align 8
  br label %23

23:                                               ; preds = %18, %12
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %25, i32 0, i32 2
  %27 = call i32 @pt_sync_backward(i32** %5, i32* %24, %struct.TYPE_2__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %23
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %35 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %38 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %30, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @pt_sync_backward(i32**, i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
