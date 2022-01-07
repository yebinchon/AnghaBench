; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sake_data = type { i32 }
%struct.eap_sake_hdr = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_SAKE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-SAKE: Received attributes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_sake_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sake_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sake_data*, align 8
  %8 = alloca %struct.eap_sake_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.eap_sake_data*
  store %struct.eap_sake_data* %14, %struct.eap_sake_data** %7, align 8
  %15 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %16 = load i32, i32* @EAP_TYPE_SAKE, align 4
  %17 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %18 = call i32* @eap_hdr_validate(i32 %15, i32 %16, %struct.wpabuf* %17, i64* %10)
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %3
  br label %100

25:                                               ; preds = %21
  %26 = load i32*, i32** %11, align 8
  %27 = bitcast i32* %26 to %struct.eap_sake_hdr*
  store %struct.eap_sake_hdr* %27, %struct.eap_sake_hdr** %8, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %12, align 8
  %31 = load %struct.eap_sake_hdr*, %struct.eap_sake_hdr** %8, align 8
  %32 = getelementptr inbounds %struct.eap_sake_hdr, %struct.eap_sake_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.eap_sake_hdr*, %struct.eap_sake_hdr** %8, align 8
  %35 = getelementptr inbounds %struct.eap_sake_hdr, %struct.eap_sake_hdr* %34, i64 1
  %36 = bitcast %struct.eap_sake_hdr* %35 to i32*
  store i32* %36, i32** %11, align 8
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @wpa_hexdump(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %38, i32 %45)
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %100 [
    i32 128, label %48
    i32 130, label %61
    i32 129, label %74
    i32 131, label %87
  ]

48:                                               ; preds = %25
  %49 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %50 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = ptrtoint i32* %53 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32 @eap_sake_process_identity(%struct.eap_sm* %49, %struct.eap_sake_data* %50, %struct.wpabuf* %51, i32* %52, i32 %59)
  br label %100

61:                                               ; preds = %25
  %62 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %63 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %64 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @eap_sake_process_challenge(%struct.eap_sm* %62, %struct.eap_sake_data* %63, %struct.wpabuf* %64, i32* %65, i32 %72)
  br label %100

74:                                               ; preds = %25
  %75 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %76 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %77 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i32 @eap_sake_process_confirm(%struct.eap_sm* %75, %struct.eap_sake_data* %76, %struct.wpabuf* %77, i32* %78, i32 %85)
  br label %100

87:                                               ; preds = %25
  %88 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %89 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %90 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @eap_sake_process_auth_reject(%struct.eap_sm* %88, %struct.eap_sake_data* %89, %struct.wpabuf* %90, i32* %91, i32 %98)
  br label %100

100:                                              ; preds = %24, %25, %87, %74, %61, %48
  ret void
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @eap_sake_process_identity(%struct.eap_sm*, %struct.eap_sake_data*, %struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @eap_sake_process_challenge(%struct.eap_sm*, %struct.eap_sake_data*, %struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @eap_sake_process_confirm(%struct.eap_sm*, %struct.eap_sake_data*, %struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @eap_sake_process_auth_reject(%struct.eap_sm*, %struct.eap_sake_data*, %struct.wpabuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
