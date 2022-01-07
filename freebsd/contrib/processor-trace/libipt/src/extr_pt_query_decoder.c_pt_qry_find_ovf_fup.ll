; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_find_ovf_fup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_find_ovf_fup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32 }
%struct.pt_packet_decoder = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_overflow = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*)* @pt_qry_find_ovf_fup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_find_ovf_fup(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_decoder, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %9 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %10 = icmp ne %struct.pt_query_decoder* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %16 = call i32 @pt_qry_get_offset(%struct.pt_query_decoder* %15, i64* %5)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %2, align 4
  br label %68

21:                                               ; preds = %14
  %22 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %23 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %22, i32 0, i32 0
  %24 = call i32 @pt_pkt_decoder_init(%struct.pt_packet_decoder* %4, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %68

29:                                               ; preds = %21
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @pt_pkt_sync_set(%struct.pt_packet_decoder* %4, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = call i32 @pt_pkt_find_ovf_fup(%struct.pt_packet_decoder* %4)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = call i32 @pt_pkt_get_offset(%struct.pt_packet_decoder* %4, i64* %6)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %68

44:                                               ; preds = %38
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @pte_overflow, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %68

51:                                               ; preds = %44
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* @INT_MAX, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @pte_overflow, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %68

61:                                               ; preds = %51
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %34
  br label %65

65:                                               ; preds = %64, %29
  %66 = call i32 @pt_pkt_decoder_fini(%struct.pt_packet_decoder* %4)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %58, %48, %42, %27, %19, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @pt_qry_get_offset(%struct.pt_query_decoder*, i64*) #1

declare dso_local i32 @pt_pkt_decoder_init(%struct.pt_packet_decoder*, i32*) #1

declare dso_local i32 @pt_pkt_sync_set(%struct.pt_packet_decoder*, i64) #1

declare dso_local i32 @pt_pkt_find_ovf_fup(%struct.pt_packet_decoder*) #1

declare dso_local i32 @pt_pkt_get_offset(%struct.pt_packet_decoder*, i64*) #1

declare dso_local i32 @pt_pkt_decoder_fini(%struct.pt_packet_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
