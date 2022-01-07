; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_build_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_build_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@P2P_WILDCARD_SSID = common dso_local global i32 0, align 4
@P2P_WILDCARD_SSID_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_build_ssid(%struct.p2p_data* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @P2P_WILDCARD_SSID, align 4
  %9 = load i64, i64* @P2P_WILDCARD_SSID_LEN, align 8
  %10 = call i32 @os_memcpy(i32* %7, i32 %8, i64 %9)
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* @P2P_WILDCARD_SSID_LEN, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = bitcast i32* %13 to i8*
  %15 = call i32 @p2p_random(i8* %14, i32 2)
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* @P2P_WILDCARD_SSID_LEN, align 8
  %18 = add i64 %17, 2
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %21 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %26 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @os_memcpy(i32* %19, i32 %24, i64 %29)
  %31 = load i64, i64* @P2P_WILDCARD_SSID_LEN, align 8
  %32 = add i64 %31, 2
  %33 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %34 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %32, %37
  %39 = load i64*, i64** %6, align 8
  store i64 %38, i64* %39, align 8
  ret void
}

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @p2p_random(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
