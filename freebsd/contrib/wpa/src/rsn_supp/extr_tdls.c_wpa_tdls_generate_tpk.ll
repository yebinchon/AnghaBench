; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_generate_tpk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_generate_tpk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_tdls_peer = type { i32, %struct.TYPE_2__, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32*, i32* }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_NONCE_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"TDLS: min(Nonce)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"TDLS: max(Nonce)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"TDLS: TPK-Key-Input\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"TDLS: KDF Context\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"TDLS PMK\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"TDLS: TPK-KCK\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"TDLS: TPK-TK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_tdls_peer*, i32*, i32*)* @wpa_tdls_generate_tpk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_tdls_generate_tpk(%struct.wpa_tdls_peer* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.wpa_tdls_peer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x i32*], align 16
  %10 = alloca [2 x i64], align 16
  %11 = alloca i64, align 8
  store %struct.wpa_tdls_peer* %0, %struct.wpa_tdls_peer** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @SHA256_MAC_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = mul nsw i32 3, %16
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %20 = load i32, i32* @WPA_NONCE_LEN, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %21, i64* %22, align 16
  %23 = load i32, i32* @WPA_NONCE_LEN, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %24, i64* %25, align 8
  %26 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %30 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @WPA_NONCE_LEN, align 4
  %33 = call i64 @os_memcmp(i32* %28, i32* %31, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %37 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  store i32* %38, i32** %39, align 16
  %40 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %41 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 1
  store i32* %42, i32** %43, align 8
  br label %53

44:                                               ; preds = %3
  %45 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %46 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  store i32* %47, i32** %48, align 16
  %49 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %50 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 1
  store i32* %51, i32** %52, align 8
  br label %53

53:                                               ; preds = %44, %35
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %56 = load i32*, i32** %55, align 16
  %57 = load i32, i32* @WPA_NONCE_LEN, align 4
  %58 = call i32 @wpa_hexdump(i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %56, i32 %57)
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @WPA_NONCE_LEN, align 4
  %63 = call i32 @wpa_hexdump(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %61, i32 %62)
  %64 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %66 = call i32 @sha256_vector(i32 2, i32** %64, i64* %65, i32* %15)
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load i32, i32* @SHA256_MAC_LEN, align 4
  %69 = call i32 @wpa_hexdump_key(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %15, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %72 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = call i64 @os_memcmp(i32* %70, i32* %73, i32 %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %53
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = call i32 @os_memcpy(i32* %19, i32* %78, i32 %79)
  %81 = load i32, i32* @ETH_ALEN, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %19, i64 %82
  %84 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %85 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @ETH_ALEN, align 4
  %88 = call i32 @os_memcpy(i32* %83, i32* %86, i32 %87)
  br label %101

89:                                               ; preds = %53
  %90 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %91 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @ETH_ALEN, align 4
  %94 = call i32 @os_memcpy(i32* %19, i32* %92, i32 %93)
  %95 = load i32, i32* @ETH_ALEN, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %19, i64 %96
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* @ETH_ALEN, align 4
  %100 = call i32 @os_memcpy(i32* %97, i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %89, %77
  %102 = load i32, i32* @ETH_ALEN, align 4
  %103 = mul nsw i32 2, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %19, i64 %104
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @ETH_ALEN, align 4
  %108 = call i32 @os_memcpy(i32* %105, i32* %106, i32 %107)
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = mul nuw i64 4, %18
  %111 = trunc i64 %110 to i32
  %112 = call i32 @wpa_hexdump(i32 %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %19, i32 %111)
  %113 = load i32, i32* @SHA256_MAC_LEN, align 4
  %114 = mul nuw i64 4, %18
  %115 = trunc i64 %114 to i32
  %116 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %117 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %116, i32 0, i32 1
  %118 = bitcast %struct.TYPE_2__* %117 to i32*
  %119 = call i32 @sha256_prf(i32* %15, i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %19, i32 %115, i32* %118, i32 16)
  %120 = load i32, i32* @MSG_DEBUG, align 4
  %121 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %122 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @wpa_hexdump_key(i32 %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %124, i32 8)
  %126 = load i32, i32* @MSG_DEBUG, align 4
  %127 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %128 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @wpa_hexdump_key(i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %130, i32 8)
  %132 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %4, align 8
  %133 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %134)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @sha256_vector(i32, i32**, i64*, i32*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @sha256_prf(i32*, i32, i8*, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
