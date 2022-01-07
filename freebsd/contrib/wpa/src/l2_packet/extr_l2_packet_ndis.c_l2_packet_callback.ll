; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_packet_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_packet_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { i32, i32, i32 (i32, i32*, i32*, i64)*, i64, i64 }
%struct.l2_ethhdr = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"L2(NDISUIO): Read %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2_packet_data*)* @l2_packet_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_packet_callback(%struct.l2_packet_data* %0) #0 {
  %2 = alloca %struct.l2_packet_data*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.l2_ethhdr*, align 8
  store %struct.l2_packet_data* %0, %struct.l2_packet_data** %2, align 8
  %7 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %8 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.l2_ethhdr*
  store %struct.l2_ethhdr* %10, %struct.l2_ethhdr** %6, align 8
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %13 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %17 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %22 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %26, label %33

26:                                               ; preds = %20, %1
  %27 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %6, align 8
  %28 = bitcast %struct.l2_ethhdr* %27 to i32*
  store i32* %28, i32** %3, align 8
  %29 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %30 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %5, align 8
  br label %42

33:                                               ; preds = %20
  %34 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %6, align 8
  %35 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %34, i64 1
  %36 = bitcast %struct.l2_ethhdr* %35 to i32*
  store i32* %36, i32** %3, align 8
  %37 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %38 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %33, %26
  %43 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %6, align 8
  %44 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %4, align 8
  %46 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %47 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %46, i32 0, i32 2
  %48 = load i32 (i32, i32*, i32*, i64)*, i32 (i32, i32*, i32*, i64)** %47, align 8
  %49 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %50 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 %48(i32 %51, i32* %52, i32* %53, i64 %54)
  %56 = load %struct.l2_packet_data*, %struct.l2_packet_data** %2, align 8
  %57 = call i32 @l2_ndisuio_start_read(%struct.l2_packet_data* %56, i32 1)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @l2_ndisuio_start_read(%struct.l2_packet_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
