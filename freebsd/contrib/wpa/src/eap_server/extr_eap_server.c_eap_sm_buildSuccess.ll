; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_buildSuccess.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_buildSuccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_hdr = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP: Building EAP-Success (id=%d)\00", align 1
@EAP_CODE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i32)* @eap_sm_buildSuccess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sm_buildSuccess(%struct.eap_sm* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_hdr*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call %struct.wpabuf* @wpabuf_alloc(i32 12)
  store %struct.wpabuf* %11, %struct.wpabuf** %6, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %17 = call %struct.eap_hdr* @wpabuf_put(%struct.wpabuf* %16, i32 12)
  store %struct.eap_hdr* %17, %struct.eap_hdr** %7, align 8
  %18 = load i32, i32* @EAP_CODE_SUCCESS, align 4
  %19 = load %struct.eap_hdr*, %struct.eap_hdr** %7, align 8
  %20 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.eap_hdr*, %struct.eap_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = call i32 @host_to_be16(i32 12)
  %25 = load %struct.eap_hdr*, %struct.eap_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %27, %struct.wpabuf** %3, align 8
  br label %28

28:                                               ; preds = %15, %14
  %29 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %29
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local %struct.eap_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @host_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
