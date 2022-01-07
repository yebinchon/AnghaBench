; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_build_sa_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_build_sa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.ikev2_initiator_data = type { %struct.wpabuf*, i32, i32, i32 }

@IKEV2_SPI_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"IKEV2: IKE_SA Initiator's SPI\00", align 1
@IKEV2_NONCE_MIN_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"IKEV2: Ni\00", align 1
@IKE_SA_INIT = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_SA = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_KEY_EXCHANGE = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_NONCE = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_NO_NEXT_PAYLOAD = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"IKEV2: Sending message (SA_INIT)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.ikev2_initiator_data*)* @ikev2_build_sa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @ikev2_build_sa_init(%struct.ikev2_initiator_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.ikev2_initiator_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %3, align 8
  %5 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %6 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %9 = call i64 @os_get_random(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %85

12:                                               ; preds = %1
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %15 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %18 = call i32 @wpa_hexdump(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* @IKEV2_NONCE_MIN_LEN, align 4
  %20 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %21 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %23 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %26 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @random_get_bytes(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %12
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %85

31:                                               ; preds = %12
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %34 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %37 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @wpa_hexdump(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  %40 = call %struct.wpabuf* @wpabuf_alloc(i32 1004)
  store %struct.wpabuf* %40, %struct.wpabuf** %4, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %42 = icmp eq %struct.wpabuf* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %85

44:                                               ; preds = %31
  %45 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %47 = load i32, i32* @IKE_SA_INIT, align 4
  %48 = load i32, i32* @IKEV2_PAYLOAD_SA, align 4
  %49 = call i32 @ikev2_build_hdr(%struct.ikev2_initiator_data* %45, %struct.wpabuf* %46, i32 %47, i32 %48, i32 0)
  %50 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %52 = load i32, i32* @IKEV2_PAYLOAD_KEY_EXCHANGE, align 4
  %53 = call i64 @ikev2_build_sai(%struct.ikev2_initiator_data* %50, %struct.wpabuf* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %44
  %56 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %58 = load i32, i32* @IKEV2_PAYLOAD_NONCE, align 4
  %59 = call i64 @ikev2_build_kei(%struct.ikev2_initiator_data* %56, %struct.wpabuf* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %63 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %64 = load i32, i32* @IKEV2_PAYLOAD_NO_NEXT_PAYLOAD, align 4
  %65 = call i64 @ikev2_build_ni(%struct.ikev2_initiator_data* %62, %struct.wpabuf* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61, %55, %44
  %68 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %69 = call i32 @wpabuf_free(%struct.wpabuf* %68)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %85

70:                                               ; preds = %61
  %71 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %72 = call i32 @ikev2_update_hdr(%struct.wpabuf* %71)
  %73 = load i32, i32* @MSG_MSGDUMP, align 4
  %74 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %75 = call i32 @wpa_hexdump_buf(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %74)
  %76 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %77 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %76, i32 0, i32 0
  %78 = load %struct.wpabuf*, %struct.wpabuf** %77, align 8
  %79 = call i32 @wpabuf_free(%struct.wpabuf* %78)
  %80 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %81 = call %struct.wpabuf* @wpabuf_dup(%struct.wpabuf* %80)
  %82 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %83 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %82, i32 0, i32 0
  store %struct.wpabuf* %81, %struct.wpabuf** %83, align 8
  %84 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %84, %struct.wpabuf** %2, align 8
  br label %85

85:                                               ; preds = %70, %67, %43, %30, %11
  %86 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %86
}

declare dso_local i64 @os_get_random(i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @ikev2_build_hdr(%struct.ikev2_initiator_data*, %struct.wpabuf*, i32, i32, i32) #1

declare dso_local i64 @ikev2_build_sai(%struct.ikev2_initiator_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @ikev2_build_kei(%struct.ikev2_initiator_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @ikev2_build_ni(%struct.ikev2_initiator_data*, %struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @ikev2_update_hdr(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_dup(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
