; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpas_mac_addr_rand_scan_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpas_mac_addr_rand_scan_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32*, i32*, i32* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"scan: MAC randomization type %u != supported=%u\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@MAC_ADDR_RAND_SCAN = common dso_local global i32 0, align 4
@MAC_ADDR_RAND_SCHED_SCAN = common dso_local global i32 0, align 4
@MAC_ADDR_RAND_PNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"scan: Invalid MAC randomization type=0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_mac_addr_rand_scan_set(%struct.wpa_supplicant* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  store i32 -1, i32* %5, align 4
  br label %88

25:                                               ; preds = %4
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @wpas_mac_addr_rand_scan_clear(%struct.wpa_supplicant* %26, i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = mul nsw i32 2, %32
  %34 = call i32* @os_malloc(i32 %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %88

38:                                               ; preds = %31
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @os_memcpy(i32* %39, i32* %40, i32 %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @os_memcpy(i32* %46, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %38, %25
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MAC_ADDR_RAND_SCAN, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 4
  store i32* %55, i32** %57, align 8
  br label %82

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MAC_ADDR_RAND_SCHED_SCAN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 3
  store i32* %63, i32** %65, align 8
  br label %81

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MAC_ADDR_RAND_PNO, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  br label %80

74:                                               ; preds = %66
  %75 = load i32, i32* @MSG_INFO, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @os_free(i32* %78)
  store i32 -1, i32* %5, align 4
  br label %88

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %62
  br label %82

82:                                               ; preds = %81, %54
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %85 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %74, %37, %18
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @wpas_mac_addr_rand_scan_clear(%struct.wpa_supplicant*, i32) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
