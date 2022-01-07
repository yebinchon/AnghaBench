; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_processNotify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_processNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_NOTIFICATION = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EAP: EAP-Request Notification data\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@WPA_EVENT_EAP_NOTIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.wpabuf*)* @eap_sm_processNotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sm_processNotify(%struct.eap_sm* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %9 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %10 = load i32, i32* @EAP_TYPE_NOTIFICATION, align 4
  %11 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %12 = call i64* @eap_hdr_validate(i32 %9, i32 %10, %struct.wpabuf* %11, i64* %8)
  store i64* %12, i64** %5, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %69

16:                                               ; preds = %2
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @wpa_hexdump_ascii(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64* %18, i64 %19)
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %21, 1
  %23 = call i8* @os_malloc(i64 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %69

27:                                               ; preds = %16
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %53, %27
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @isprint(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i8
  %45 = sext i8 %44 to i32
  br label %47

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %39
  %48 = phi i32 [ %45, %39 ], [ 95, %46 ]
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 %49, i8* %52, align 1
  br label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %28

56:                                               ; preds = %28
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %61 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = load i32, i32* @WPA_EVENT_EAP_NOTIFICATION, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @wpa_msg(i32 %62, i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %65)
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @os_free(i8* %67)
  br label %69

69:                                               ; preds = %56, %26, %15
  ret void
}

declare dso_local i64* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i64*, i64) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i64 @isprint(i64) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
