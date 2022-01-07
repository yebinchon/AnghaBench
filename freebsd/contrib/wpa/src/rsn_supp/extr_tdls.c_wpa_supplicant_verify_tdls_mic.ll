; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_supplicant_verify_tdls_mic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_supplicant_verify_tdls_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_tdls_peer = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_tdls_ftie = type { i32* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"TDLS: Invalid MIC in FTIE - dropping packet\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"TDLS: Received MIC\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"TDLS: Calculated MIC\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"TDLS: Could not verify TDLS MIC, TPK not set - dropping packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.wpa_tdls_peer*, i32*, i32*, %struct.wpa_tdls_ftie*)* @wpa_supplicant_verify_tdls_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_verify_tdls_mic(i32 %0, %struct.wpa_tdls_peer* %1, i32* %2, i32* %3, %struct.wpa_tdls_ftie* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_tdls_peer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.wpa_tdls_ftie*, align 8
  %12 = alloca [16 x i32], align 16
  store i32 %0, i32* %7, align 4
  store %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_peer** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.wpa_tdls_ftie* %4, %struct.wpa_tdls_ftie** %11, align 8
  %13 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %8, align 8
  %14 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %5
  %18 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %8, align 8
  %19 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %8, align 8
  %25 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %11, align 8
  %29 = bitcast %struct.wpa_tdls_ftie* %28 to i32*
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %31 = call i32 @wpa_tdls_ftie_mic(i32 %21, i32 %22, i32* %23, i32 %26, i32* %27, i32* %29, i32* %30)
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %33 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %11, align 8
  %34 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @os_memcmp_const(i32* %32, i32* %35, i32 16)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %17
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %11, align 8
  %43 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @wpa_hexdump(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %44, i32 16)
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %48 = call i32 @wpa_hexdump(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %47, i32 16)
  store i32 -1, i32* %6, align 4
  br label %54

49:                                               ; preds = %17
  br label %53

50:                                               ; preds = %5
  %51 = load i32, i32* @MSG_WARNING, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %54

53:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %50, %38
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @wpa_tdls_ftie_mic(i32, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
