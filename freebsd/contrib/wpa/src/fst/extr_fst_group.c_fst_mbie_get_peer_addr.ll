; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_group.c_fst_mbie_get_peer_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_group.c_fst_mbie_get_peer_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multi_band_ie = type { i32, i32, i32* }

@MB_CTRL_STA_MAC_PRESENT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.multi_band_ie*)* @fst_mbie_get_peer_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fst_mbie_get_peer_addr(%struct.multi_band_ie* %0) #0 {
  %2 = alloca %struct.multi_band_ie*, align 8
  %3 = alloca i32*, align 8
  store %struct.multi_band_ie* %0, %struct.multi_band_ie** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load %struct.multi_band_ie*, %struct.multi_band_ie** %2, align 8
  %5 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @MB_CTRL_ROLE(i32 %6)
  switch i32 %7, label %34 [
    i32 129, label %8
    i32 128, label %12
  ]

8:                                                ; preds = %1
  %9 = load %struct.multi_band_ie*, %struct.multi_band_ie** %2, align 8
  %10 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.multi_band_ie*, %struct.multi_band_ie** %2, align 8
  %14 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MB_CTRL_STA_MAC_PRESENT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load %struct.multi_band_ie*, %struct.multi_band_ie** %2, align 8
  %21 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 2, %23
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 16, %26
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.multi_band_ie*, %struct.multi_band_ie** %2, align 8
  %31 = getelementptr inbounds %struct.multi_band_ie, %struct.multi_band_ie* %30, i64 1
  %32 = bitcast %struct.multi_band_ie* %31 to i32*
  store i32* %32, i32** %3, align 8
  br label %33

33:                                               ; preds = %29, %19, %12
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %33, %8
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32 @MB_CTRL_ROLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
