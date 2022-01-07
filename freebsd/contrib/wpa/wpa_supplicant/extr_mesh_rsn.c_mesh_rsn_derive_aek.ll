; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_mesh_rsn_derive_aek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_mesh_rsn_derive_aek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_rsn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.sta_info = type { i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@RSN_SELECTOR_LEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"AEK Derivation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mesh_rsn*, %struct.sta_info*)* @mesh_rsn_derive_aek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_rsn_derive_aek(%struct.mesh_rsn* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.mesh_rsn*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.mesh_rsn* %0, %struct.mesh_rsn** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %12 = load %struct.mesh_rsn*, %struct.mesh_rsn** %3, align 8
  %13 = getelementptr inbounds %struct.mesh_rsn, %struct.mesh_rsn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = mul nsw i32 2, %21
  %23 = add nsw i32 %20, %22
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* @RSN_AUTH_KEY_MGMT_SAE, align 4
  %29 = call i32 @RSN_SELECTOR_PUT(i32* %27, i32 %28)
  %30 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i64 @os_memcmp(i32* %34, i32* %35, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32*, i32** %5, align 8
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %6, align 8
  store i32* %41, i32** %8, align 8
  br label %45

42:                                               ; preds = %2
  %43 = load i32*, i32** %6, align 8
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %5, align 8
  store i32* %44, i32** %8, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @os_memcpy(i32* %46, i32* %47, i32 %48)
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %11, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @os_memcpy(i32* %54, i32* %55, i32 %56)
  %58 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %59 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nuw i64 4, %24
  %64 = trunc i64 %63 to i32
  %65 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %66 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sha256_prf(i32 %62, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %26, i32 %64, i32 %67, i32 4)
  %69 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %69)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RSN_SELECTOR_PUT(i32*, i32) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

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
