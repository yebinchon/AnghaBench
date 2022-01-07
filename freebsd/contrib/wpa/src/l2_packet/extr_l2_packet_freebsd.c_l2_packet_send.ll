; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_l2_packet_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_freebsd.c_l2_packet_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { i32, i32*, i32 }
%struct.l2_ethhdr = type { i32, %struct.l2_ethhdr*, %struct.l2_ethhdr* }

@ETH_ALEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2_packet_send(%struct.l2_packet_data* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.l2_packet_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.l2_ethhdr*, align 8
  store %struct.l2_packet_data* %0, %struct.l2_packet_data** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %15 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  %20 = add i64 24, %19
  %21 = trunc i64 %20 to i32
  %22 = call %struct.l2_ethhdr* @os_malloc(i32 %21)
  store %struct.l2_ethhdr* %22, %struct.l2_ethhdr** %13, align 8
  %23 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %24 = icmp eq %struct.l2_ethhdr* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %68

26:                                               ; preds = %18
  %27 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %28 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %27, i32 0, i32 2
  %29 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %28, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* @ETH_ALEN, align 8
  %32 = call i32 @os_memcpy(%struct.l2_ethhdr* %29, i32* %30, i64 %31)
  %33 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %34 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %33, i32 0, i32 1
  %35 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %34, align 8
  %36 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %37 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @ETH_ALEN, align 8
  %40 = call i32 @os_memcpy(%struct.l2_ethhdr* %35, i32* %38, i64 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @htons(i32 %41)
  %43 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %44 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %46 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %45, i64 1
  %47 = load i32*, i32** %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @os_memcpy(%struct.l2_ethhdr* %46, i32* %47, i64 %48)
  %50 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %51 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %54 = bitcast %struct.l2_ethhdr* %53 to i32*
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 24
  %57 = call i32 @pcap_inject(i32 %52, i32* %54, i64 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %13, align 8
  %59 = call i32 @os_free(%struct.l2_ethhdr* %58)
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %6, align 4
  br label %68

61:                                               ; preds = %5
  %62 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %63 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @pcap_inject(i32 %64, i32* %65, i64 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %61, %26, %25
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.l2_ethhdr* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(%struct.l2_ethhdr*, i32*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @pcap_inject(i32, i32*, i64) #1

declare dso_local i32 @os_free(%struct.l2_ethhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
