; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_cyc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_cyc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, i32, %struct.pt_config }
%struct.pt_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pt_packet_cyc = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_cyc(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_cyc, align 4
  %5 = alloca %struct.pt_config*, align 8
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
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %15 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %14, i32 0, i32 3
  store %struct.pt_config* %15, %struct.pt_config** %5, align 8
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %20 = call i32 @pt_pkt_read_cyc(%struct.pt_packet_cyc* %4, i32 %18, %struct.pt_config* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %65

25:                                               ; preds = %13
  %26 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %27 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @check_erratum_skd007(%struct.pt_query_decoder* %32, %struct.pt_packet_cyc* %4, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %65

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %44 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  store i32 0, i32* %2, align 4
  br label %65

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %50 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %49, i32 0, i32 2
  %51 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %52 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %51, i32 0, i32 1
  %53 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %54 = call i32 @pt_qry_apply_cyc(i32* %50, i32* %52, %struct.pt_packet_cyc* %4, %struct.pt_config* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %62 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %57, %42, %37, %23, %10
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @pt_pkt_read_cyc(%struct.pt_packet_cyc*, i32, %struct.pt_config*) #1

declare dso_local i32 @check_erratum_skd007(%struct.pt_query_decoder*, %struct.pt_packet_cyc*, i32) #1

declare dso_local i32 @pt_qry_apply_cyc(i32*, i32*, %struct.pt_packet_cyc*, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
