; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gtc.c_eap_gtc_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gtc.c_eap_gtc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, %struct.TYPE_2__*, i64*, i64 }
%struct.TYPE_2__ = type { i64, i32*, i64 }
%struct.wpabuf = type { i32 }
%struct.eap_gtc_data = type { i8*, i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_GTC = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"EAP-GTC: Response\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"EAP-GTC: Plaintext password not configured\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"EAP-GTC: Done - Failure\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"EAP-GTC: Done - Success\00", align 1
@SUCCESS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_gtc_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_gtc_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_gtc_data*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.eap_gtc_data*
  store %struct.eap_gtc_data* %11, %struct.eap_gtc_data** %7, align 8
  %12 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %13 = load i32, i32* @EAP_TYPE_GTC, align 4
  %14 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %15 = call i64* @eap_hdr_validate(i32 %12, i32 %13, %struct.wpabuf* %14, i64* %9)
  store i64* %15, i64** %8, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  br label %81

22:                                               ; preds = %18
  %23 = load i32, i32* @MSG_MSGDUMP, align 4
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @wpa_hexdump_ascii_key(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64* %24, i64 %25)
  %27 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %28 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp eq %struct.TYPE_2__* %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %22
  %32 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %33 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %40 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38, %31, %22
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** @FAILURE, align 8
  %49 = load %struct.eap_gtc_data*, %struct.eap_gtc_data** %7, align 8
  %50 = getelementptr inbounds %struct.eap_gtc_data, %struct.eap_gtc_data* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %81

51:                                               ; preds = %38
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %54 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %51
  %60 = load i64*, i64** %8, align 8
  %61 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %62 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @os_memcmp_const(i64* %60, i32* %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %59, %51
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i8*, i8** @FAILURE, align 8
  %73 = load %struct.eap_gtc_data*, %struct.eap_gtc_data** %7, align 8
  %74 = getelementptr inbounds %struct.eap_gtc_data, %struct.eap_gtc_data* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %81

75:                                               ; preds = %59
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = call i32 @wpa_printf(i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i8*, i8** @SUCCESS, align 8
  %79 = load %struct.eap_gtc_data*, %struct.eap_gtc_data** %7, align 8
  %80 = getelementptr inbounds %struct.eap_gtc_data, %struct.eap_gtc_data* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %21, %45, %75, %69
  ret void
}

declare dso_local i64* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i64*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @os_memcmp_const(i64*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
