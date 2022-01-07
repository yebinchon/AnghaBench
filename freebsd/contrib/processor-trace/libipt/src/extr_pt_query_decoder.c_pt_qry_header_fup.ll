; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_header_fup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_header_fup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.pt_packet_ip = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@pt_ipc_suppressed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_header_fup(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_packet_ip, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %7 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %8 = icmp ne %struct.pt_query_decoder* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %78

12:                                               ; preds = %1
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 1
  %18 = call i32 @pt_pkt_read_ip(%struct.pt_packet_ip* %4, i32 %15, %struct.TYPE_6__* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %12
  %24 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %25 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %23
  %31 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %32 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %30
  %36 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %37 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  %41 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %42 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %41, i32 0, i32 1
  %43 = call i32 @check_erratum_bdm70(i32 %40, %struct.TYPE_6__* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %78

48:                                               ; preds = %35
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @pt_qry_consume_fup(%struct.pt_query_decoder* %52, i32 %53)
  store i32 %54, i32* %2, align 4
  br label %78

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %30, %23
  %57 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %58 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %57, i32 0, i32 2
  %59 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %60 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %59, i32 0, i32 1
  %61 = call i32 @pt_last_ip_update_ip(i32* %58, %struct.pt_packet_ip* %4, %struct.TYPE_6__* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %78

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %4, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @pt_ipc_suppressed, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %73 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @pt_qry_consume_fup(%struct.pt_query_decoder* %75, i32 %76)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %64, %51, %46, %21, %9
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @pt_pkt_read_ip(%struct.pt_packet_ip*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @check_erratum_bdm70(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @pt_qry_consume_fup(%struct.pt_query_decoder*, i32) #1

declare dso_local i32 @pt_last_ip_update_ip(i32*, %struct.pt_packet_ip*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
