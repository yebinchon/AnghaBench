; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpas_mac_addr_rand_scan_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpas_mac_addr_rand_scan_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32*, i32*, i32* }

@MAC_ADDR_RAND_ALL = common dso_local global i32 0, align 4
@MAC_ADDR_RAND_SCAN = common dso_local global i32 0, align 4
@MAC_ADDR_RAND_SCHED_SCAN = common dso_local global i32 0, align 4
@MAC_ADDR_RAND_PNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_mac_addr_rand_scan_clear(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MAC_ADDR_RAND_ALL, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MAC_ADDR_RAND_SCAN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @os_free(i32* %21)
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MAC_ADDR_RAND_SCHED_SCAN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @os_free(i32* %33)
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MAC_ADDR_RAND_PNO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @os_free(i32* %45)
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
