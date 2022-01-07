; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_wired.c_wired_send_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_wired.c_wired_send_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_wired_data = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee8023_hdr = type { i32, i32*, i32* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"malloc() failed for wired_send_eapol(len=%lu)\00", align 1
@pae_group_addr = common dso_local global i32* null, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@ETH_P_PAE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"wired_send_eapol - packet len: %lu - failed: send: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64, i32, i32*, i32)* @wired_send_eapol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wired_send_eapol(i8* %0, i32* %1, i32* %2, i64 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.wpa_driver_wired_data*, align 8
  %17 = alloca %struct.ieee8023_hdr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.wpa_driver_wired_data*
  store %struct.wpa_driver_wired_data* %22, %struct.wpa_driver_wired_data** %16, align 8
  %23 = load i64, i64* %12, align 8
  %24 = add i64 24, %23
  store i64 %24, i64* %18, align 8
  %25 = load i64, i64* %18, align 8
  %26 = call %struct.ieee8023_hdr* @os_zalloc(i64 %25)
  store %struct.ieee8023_hdr* %26, %struct.ieee8023_hdr** %17, align 8
  %27 = load %struct.ieee8023_hdr*, %struct.ieee8023_hdr** %17, align 8
  %28 = icmp eq %struct.ieee8023_hdr* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %7
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = load i64, i64* %18, align 8
  %32 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %31)
  store i32 -1, i32* %8, align 4
  br label %86

33:                                               ; preds = %7
  %34 = load %struct.ieee8023_hdr*, %struct.ieee8023_hdr** %17, align 8
  %35 = getelementptr inbounds %struct.ieee8023_hdr, %struct.ieee8023_hdr* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %16, align 8
  %38 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32*, i32** @pae_group_addr, align 8
  br label %45

43:                                               ; preds = %33
  %44 = load i32*, i32** %10, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32* [ %42, %41 ], [ %44, %43 ]
  %47 = load i64, i64* @ETH_ALEN, align 8
  %48 = call i32 @os_memcpy(i32* %36, i32* %46, i64 %47)
  %49 = load %struct.ieee8023_hdr*, %struct.ieee8023_hdr** %17, align 8
  %50 = getelementptr inbounds %struct.ieee8023_hdr, %struct.ieee8023_hdr* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i64, i64* @ETH_ALEN, align 8
  %54 = call i32 @os_memcpy(i32* %51, i32* %52, i64 %53)
  %55 = load i32, i32* @ETH_P_PAE, align 4
  %56 = call i32 @htons(i32 %55)
  %57 = load %struct.ieee8023_hdr*, %struct.ieee8023_hdr** %17, align 8
  %58 = getelementptr inbounds %struct.ieee8023_hdr, %struct.ieee8023_hdr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ieee8023_hdr*, %struct.ieee8023_hdr** %17, align 8
  %60 = getelementptr inbounds %struct.ieee8023_hdr, %struct.ieee8023_hdr* %59, i64 1
  %61 = bitcast %struct.ieee8023_hdr* %60 to i32*
  store i32* %61, i32** %19, align 8
  %62 = load i32*, i32** %19, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @os_memcpy(i32* %62, i32* %63, i64 %64)
  %66 = load %struct.wpa_driver_wired_data*, %struct.wpa_driver_wired_data** %16, align 8
  %67 = getelementptr inbounds %struct.wpa_driver_wired_data, %struct.wpa_driver_wired_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ieee8023_hdr*, %struct.ieee8023_hdr** %17, align 8
  %71 = bitcast %struct.ieee8023_hdr* %70 to i32*
  %72 = load i64, i64* %18, align 8
  %73 = call i32 @send(i32 %69, i32* %71, i64 %72, i32 0)
  store i32 %73, i32* %20, align 4
  %74 = load %struct.ieee8023_hdr*, %struct.ieee8023_hdr** %17, align 8
  %75 = call i32 @os_free(%struct.ieee8023_hdr* %74)
  %76 = load i32, i32* %20, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %45
  %79 = load i32, i32* @MSG_ERROR, align 4
  %80 = load i64, i64* %18, align 8
  %81 = load i32, i32* @errno, align 4
  %82 = call i32 @strerror(i32 %81)
  %83 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %80, i32 %82)
  br label %84

84:                                               ; preds = %78, %45
  %85 = load i32, i32* %20, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %29
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local %struct.ieee8023_hdr* @os_zalloc(i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @send(i32, i32*, i64, i32) #1

declare dso_local i32 @os_free(%struct.ieee8023_hdr*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
