; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_fake_identity_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_fake_identity_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_hdr = type { i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"EAP-TTLS: empty data in beginning of Phase 2 - use fake EAP-Request Identity\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"EAP-TTLS: failed to allocate memory for fake EAP-Identity Request\00", align 1
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@EAP_TYPE_IDENTITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @eap_ttls_fake_identity_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_ttls_fake_identity_request() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.eap_hdr*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @MSG_DEBUG, align 4
  %5 = call i32 @wpa_printf(i32 %4, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %6 = call i32* @os_malloc(i32 25)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @MSG_WARNING, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  br label %27

12:                                               ; preds = %0
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to %struct.eap_hdr*
  store %struct.eap_hdr* %14, %struct.eap_hdr** %2, align 8
  %15 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %16 = load %struct.eap_hdr*, %struct.eap_hdr** %2, align 8
  %17 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.eap_hdr*, %struct.eap_hdr** %2, align 8
  %19 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = call i32 @host_to_be16(i32 25)
  %21 = load %struct.eap_hdr*, %struct.eap_hdr** %2, align 8
  %22 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @EAP_TYPE_IDENTITY, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 24
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %3, align 8
  store i32* %26, i32** %1, align 8
  br label %27

27:                                               ; preds = %12, %9
  %28 = load i32*, i32** %1, align 8
  ret i32* %28
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @host_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
