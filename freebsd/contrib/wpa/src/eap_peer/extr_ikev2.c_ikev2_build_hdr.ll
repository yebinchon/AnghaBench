; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_responder_data = type { i32, i32 }
%struct.wpabuf = type { i32 }
%struct.ikev2_hdr = type { i32, i32, i8*, i32, i8*, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"IKEV2: Adding HDR\00", align 1
@IKEV2_SPI_LEN = common dso_local global i32 0, align 4
@IKEV2_VERSION = common dso_local global i32 0, align 4
@IKEV2_HDR_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ikev2_responder_data*, %struct.wpabuf*, i8*, i8*, i32)* @ikev2_build_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ikev2_build_hdr(%struct.ikev2_responder_data* %0, %struct.wpabuf* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ikev2_responder_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ikev2_hdr*, align 8
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %6, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %15 = call %struct.ikev2_hdr* @wpabuf_put(%struct.wpabuf* %14, i32 40)
  store %struct.ikev2_hdr* %15, %struct.ikev2_hdr** %11, align 8
  %16 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %11, align 8
  %17 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %6, align 8
  %20 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %23 = call i32 @os_memcpy(i32 %18, i32 %21, i32 %22)
  %24 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %11, align 8
  %25 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %6, align 8
  %28 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %31 = call i32 @os_memcpy(i32 %26, i32 %29, i32 %30)
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %11, align 8
  %34 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @IKEV2_VERSION, align 4
  %36 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %11, align 8
  %37 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %11, align 8
  %40 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @IKEV2_HDR_RESPONSE, align 4
  %42 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %11, align 8
  %43 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %11, align 8
  %45 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @WPA_PUT_BE32(i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.ikev2_hdr* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @WPA_PUT_BE32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
