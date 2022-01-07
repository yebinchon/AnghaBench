; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_noa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_noa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.wpa_supplicant*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64)* @wpas_get_noa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_get_noa(i8* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %12, %struct.wpa_supplicant** %10, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %16, align 8
  store %struct.wpa_supplicant* %17, %struct.wpa_supplicant** %10, align 8
  br label %18

18:                                               ; preds = %31, %4
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %20 = icmp ne %struct.wpa_supplicant* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i64 @os_memcmp(i32 %24, i32* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %35

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 1
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %33, align 8
  store %struct.wpa_supplicant* %34, %struct.wpa_supplicant** %10, align 8
  br label %18

35:                                               ; preds = %29, %18
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %37 = icmp eq %struct.wpa_supplicant* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %44

39:                                               ; preds = %35
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @wpa_drv_get_noa(%struct.wpa_supplicant* %40, i32* %41, i64 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %38
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @wpa_drv_get_noa(%struct.wpa_supplicant*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
