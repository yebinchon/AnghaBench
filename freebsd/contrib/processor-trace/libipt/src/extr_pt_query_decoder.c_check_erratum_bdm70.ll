; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_check_erratum_bdm70.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_check_erratum_bdm70.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_config = type { i32* }
%struct.pt_packet_decoder = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.pt_config*)* @check_erratum_bdm70 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_erratum_bdm70(i32* %0, %struct.pt_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pt_config*, align 8
  %6 = alloca %struct.pt_packet_decoder, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.pt_config* %1, %struct.pt_config** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %12 = icmp ne %struct.pt_config* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @pte_internal, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %10
  %17 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %18 = call i32 @pt_pkt_decoder_init(%struct.pt_packet_decoder* %6, %struct.pt_config* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %26 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = ptrtoint i32* %24 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @pt_pkt_sync_set(%struct.pt_packet_decoder* %6, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = call i32 @scan_for_erratum_bdm70(%struct.pt_packet_decoder* %6)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %23
  %39 = call i32 @pt_pkt_decoder_fini(%struct.pt_packet_decoder* %6)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %21, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @pt_pkt_decoder_init(%struct.pt_packet_decoder*, %struct.pt_config*) #1

declare dso_local i32 @pt_pkt_sync_set(%struct.pt_packet_decoder*, i32) #1

declare dso_local i32 @scan_for_erratum_bdm70(%struct.pt_packet_decoder*) #1

declare dso_local i32 @pt_pkt_decoder_fini(%struct.pt_packet_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
