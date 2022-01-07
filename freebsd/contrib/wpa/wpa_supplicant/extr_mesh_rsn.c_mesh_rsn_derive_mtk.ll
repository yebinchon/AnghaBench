; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_mesh_rsn_derive_mtk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_mesh_rsn_derive_mtk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.sta_info = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@WPA_NONCE_LEN = common dso_local global i32 0, align 4
@RSN_SELECTOR_LEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@SAE_PMK_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Temporal Key Derivation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_rsn_derive_mtk(%struct.wpa_supplicant* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* @WPA_NONCE_LEN, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @RSN_SELECTOR_LEN, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = mul nsw i32 2, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  store i32* %29, i32** %5, align 8
  %30 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @WPA_NONCE_LEN, align 4
  %37 = call i64 @os_memcmp(i32* %32, i32* %35, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %2
  %40 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %6, align 8
  %43 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %7, align 8
  br label %53

46:                                               ; preds = %2
  %47 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %48 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %6, align 8
  %50 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %7, align 8
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @WPA_NONCE_LEN, align 4
  %57 = call i32 @os_memcpy(i32* %54, i32* %55, i32 %56)
  %58 = load i32, i32* @WPA_NONCE_LEN, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %5, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @WPA_NONCE_LEN, align 4
  %65 = call i32 @os_memcpy(i32* %62, i32* %63, i32 %64)
  %66 = load i32, i32* @WPA_NONCE_LEN, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %5, align 8
  %70 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %74 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %53
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %80 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @WPA_PUT_LE16(i32* %78, i32 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  store i32* %84, i32** %5, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %87 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @WPA_PUT_LE16(i32* %85, i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32* %91, i32** %5, align 8
  br label %107

92:                                               ; preds = %53
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %95 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @WPA_PUT_LE16(i32* %93, i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32* %99, i32** %5, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %102 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @WPA_PUT_LE16(i32* %100, i32 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32* %106, i32** %5, align 8
  br label %107

107:                                              ; preds = %92, %77
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* @RSN_AUTH_KEY_MGMT_SAE, align 4
  %110 = call i32 @RSN_SELECTOR_PUT(i32* %108, i32 %109)
  %111 = load i64, i64* @RSN_SELECTOR_LEN, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 %111
  store i32* %113, i32** %5, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* @ETH_ALEN, align 4
  %117 = call i64 @os_memcmp(i32* %114, i32* %115, i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %107
  %120 = load i32*, i32** %8, align 8
  store i32* %120, i32** %6, align 8
  %121 = load i32*, i32** %9, align 8
  store i32* %121, i32** %7, align 8
  br label %125

122:                                              ; preds = %107
  %123 = load i32*, i32** %9, align 8
  store i32* %123, i32** %6, align 8
  %124 = load i32*, i32** %8, align 8
  store i32* %124, i32** %7, align 8
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* @ETH_ALEN, align 4
  %129 = call i32 @os_memcpy(i32* %126, i32* %127, i32 %128)
  %130 = load i32, i32* @ETH_ALEN, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %5, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* @ETH_ALEN, align 4
  %137 = call i32 @os_memcpy(i32* %134, i32* %135, i32 %136)
  %138 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %139 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %138, i32 0, i32 0
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @wpa_cipher_key_len(i32 %142)
  %144 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %145 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %147 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @SAE_PMK_LEN, align 4
  %152 = mul nuw i64 4, %27
  %153 = trunc i64 %152 to i32
  %154 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %155 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %158 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @sha256_prf(i32 %150, i32 %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %29, i32 %153, i32 %156, i32 %159)
  %161 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %161)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #2

declare dso_local i32 @RSN_SELECTOR_PUT(i32*, i32) #2

declare dso_local i32 @wpa_cipher_key_len(i32) #2

declare dso_local i32 @sha256_prf(i32, i32, i8*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
