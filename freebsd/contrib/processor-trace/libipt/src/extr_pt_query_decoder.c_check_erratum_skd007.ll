; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_check_erratum_skd007.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_check_erratum_skd007.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.pt_packet_cyc = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@pt_ext_ovf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*, %struct.pt_packet_cyc*, i32)* @check_erratum_skd007 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_erratum_skd007(%struct.pt_query_decoder* %0, %struct.pt_packet_cyc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_query_decoder*, align 8
  %6 = alloca %struct.pt_packet_cyc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %5, align 8
  store %struct.pt_packet_cyc* %1, %struct.pt_packet_cyc** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %11 = icmp ne %struct.pt_query_decoder* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.pt_packet_cyc*, %struct.pt_packet_cyc** %6, align 8
  %14 = icmp ne %struct.pt_packet_cyc* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %12, %3
  %19 = load i32, i32* @pte_internal, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %55

25:                                               ; preds = %21
  %26 = load %struct.pt_packet_cyc*, %struct.pt_packet_cyc** %6, align 8
  %27 = getelementptr inbounds %struct.pt_packet_cyc, %struct.pt_packet_cyc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, -32
  %32 = icmp ne i32 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %55

34:                                               ; preds = %25
  %35 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %36 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64* %40, i64** %8, align 8
  %41 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %42 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = icmp ule i64* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %55

48:                                               ; preds = %34
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @pt_ext_ovf, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %55

54:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %53, %47, %33, %24, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
