; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_eke_data = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_EKE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EAP-EKE: Received payload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_eke_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_eke_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_eke_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.eap_eke_data*
  store %struct.eap_eke_data* %13, %struct.eap_eke_data** %7, align 8
  %14 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %15 = load i32, i32* @EAP_TYPE_EKE, align 4
  %16 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %17 = call i32* @eap_hdr_validate(i32 %14, i32 %15, %struct.wpabuf* %16, i64* %9)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %3
  br label %95

24:                                               ; preds = %20
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %10, align 8
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @wpa_hexdump(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %33, i32 %40)
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %95 [
    i32 128, label %43
    i32 131, label %56
    i32 130, label %69
    i32 129, label %82
  ]

43:                                               ; preds = %24
  %44 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %45 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @eap_eke_process_identity(%struct.eap_sm* %44, %struct.eap_eke_data* %45, %struct.wpabuf* %46, i32* %47, i32 %54)
  br label %95

56:                                               ; preds = %24
  %57 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %58 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = ptrtoint i32* %61 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32 @eap_eke_process_commit(%struct.eap_sm* %57, %struct.eap_eke_data* %58, %struct.wpabuf* %59, i32* %60, i32 %67)
  br label %95

69:                                               ; preds = %24
  %70 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %71 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %72 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = ptrtoint i32* %74 to i64
  %77 = ptrtoint i32* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i32 @eap_eke_process_confirm(%struct.eap_sm* %70, %struct.eap_eke_data* %71, %struct.wpabuf* %72, i32* %73, i32 %80)
  br label %95

82:                                               ; preds = %24
  %83 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %84 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %85 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = ptrtoint i32* %87 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @eap_eke_process_failure(%struct.eap_sm* %83, %struct.eap_eke_data* %84, %struct.wpabuf* %85, i32* %86, i32 %93)
  br label %95

95:                                               ; preds = %23, %24, %82, %69, %56, %43
  ret void
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @eap_eke_process_identity(%struct.eap_sm*, %struct.eap_eke_data*, %struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @eap_eke_process_commit(%struct.eap_sm*, %struct.eap_eke_data*, %struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @eap_eke_process_confirm(%struct.eap_sm*, %struct.eap_eke_data*, %struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @eap_eke_process_failure(%struct.eap_sm*, %struct.eap_eke_data*, %struct.wpabuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
