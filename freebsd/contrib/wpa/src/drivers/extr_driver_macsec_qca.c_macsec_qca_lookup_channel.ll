; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_qca.c_macsec_qca_lookup_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_qca.c_macsec_qca_lookup_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_map = type { i32 }
%struct.ieee802_1x_mka_sci = type { i32 }

@MAXSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_map*, %struct.ieee802_1x_mka_sci*, i64*)* @macsec_qca_lookup_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_qca_lookup_channel(%struct.channel_map* %0, %struct.ieee802_1x_mka_sci* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.channel_map*, align 8
  %6 = alloca %struct.ieee802_1x_mka_sci*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.channel_map* %0, %struct.channel_map** %5, align 8
  store %struct.ieee802_1x_mka_sci* %1, %struct.ieee802_1x_mka_sci** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @MAXSC, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load %struct.channel_map*, %struct.channel_map** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.channel_map, %struct.channel_map* %14, i64 %15
  %17 = getelementptr inbounds %struct.channel_map, %struct.channel_map* %16, i32 0, i32 0
  %18 = load %struct.ieee802_1x_mka_sci*, %struct.ieee802_1x_mka_sci** %6, align 8
  %19 = call i64 @os_memcmp(i32* %17, %struct.ieee802_1x_mka_sci* %18, i32 4)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i64, i64* %8, align 8
  %23 = load i64*, i64** %7, align 8
  store i64 %22, i64* %23, align 8
  store i32 0, i32* %4, align 4
  br label %29

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %8, align 8
  br label %9

28:                                               ; preds = %9
  store i32 -1, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @os_memcmp(i32*, %struct.ieee802_1x_mka_sci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
