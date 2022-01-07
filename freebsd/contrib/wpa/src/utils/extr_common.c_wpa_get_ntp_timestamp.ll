; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_wpa_get_ntp_timestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_wpa_get_ntp_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_time = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_get_ntp_timestamp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.os_time, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = call i32 @os_get_time(%struct.os_time* %3)
  %8 = getelementptr inbounds %struct.os_time, %struct.os_time* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -2085978496
  store i32 %10, i32* %4, align 4
  %11 = getelementptr inbounds %struct.os_time, %struct.os_time* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 4295, %13
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 5
  %17 = sub nsw i32 %14, %16
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 9
  %20 = sub nsw i32 %17, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @host_to_be32(i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = bitcast i64* %6 to i32*
  %25 = call i32 @os_memcpy(i32* %23, i32* %24, i32 4)
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @host_to_be32(i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = bitcast i64* %6 to i32*
  %31 = call i32 @os_memcpy(i32* %29, i32* %30, i32 4)
  ret void
}

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i64 @host_to_be32(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
