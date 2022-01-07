; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_group_init_gmk_and_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_group_init_gmk_and_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i64* }
%struct.wpa_group = type { i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_GMK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GMK\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Init Counter\00", align 1
@WPA_NONCE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Key Counter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_authenticator*, %struct.wpa_group*)* @wpa_group_init_gmk_and_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_group_init_gmk_and_counter(%struct.wpa_authenticator* %0, %struct.wpa_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_authenticator*, align 8
  %5 = alloca %struct.wpa_group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [32 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %4, align 8
  store %struct.wpa_group* %1, %struct.wpa_group** %5, align 8
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = add nsw i32 %11, 8
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 8
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @WPA_GMK_LEN, align 4
  %21 = call i64 @random_get_bytes(i32* %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %69

24:                                               ; preds = %2
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @WPA_GMK_LEN, align 4
  %30 = call i32 @wpa_hexdump_key(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %28, i32 %29)
  %31 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = call i32 @os_memcpy(i32* %16, i64* %33, i32 %34)
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %16, i64 %37
  %39 = call i32 @wpa_get_ntp_timestamp(i32* %38)
  %40 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %41 = ptrtoint %struct.wpa_group* %40 to i64
  store i64 %41, i64* %9, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %16, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  %46 = call i32 @os_memcpy(i32* %45, i64* %9, i32 8)
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %48 = call i64 @random_get_bytes(i32* %47, i32 128)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %69

51:                                               ; preds = %24
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %53 = mul nuw i64 4, %14
  %54 = trunc i64 %53 to i32
  %55 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %56 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @WPA_NONCE_LEN, align 4
  %59 = call i64 @sha1_prf(i32* %52, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %16, i32 %54, i32* %57, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %69

62:                                               ; preds = %51
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %65 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @WPA_NONCE_LEN, align 4
  %68 = call i32 @wpa_hexdump_key(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %66, i32 %67)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %62, %61, %50, %23
  %70 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @random_get_bytes(i32*, i32) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32*, i64*, i32) #2

declare dso_local i32 @wpa_get_ntp_timestamp(i32*) #2

declare dso_local i64 @sha1_prf(i32*, i32, i8*, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
