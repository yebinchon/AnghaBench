; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_sa_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_sa_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.ikev2_responder_data = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@IKE_SA_AUTH = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_ENCRYPTED = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_AUTHENTICATION = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_NO_NEXT_PAYLOAD = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_IDr = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"IKEV2: Sending message (SA_AUTH)\00", align 1
@IKEV2_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.ikev2_responder_data*)* @ikev2_build_sa_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @ikev2_build_sa_auth(%struct.ikev2_responder_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.ikev2_responder_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %3, align 8
  %6 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %7 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = add i64 4, %8
  %10 = add i64 %9, 1000
  %11 = call %struct.wpabuf* @wpabuf_alloc(i64 %10)
  store %struct.wpabuf* %11, %struct.wpabuf** %4, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %74

15:                                               ; preds = %1
  %16 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %18 = load i32, i32* @IKE_SA_AUTH, align 4
  %19 = load i32, i32* @IKEV2_PAYLOAD_ENCRYPTED, align 4
  %20 = call i32 @ikev2_build_hdr(%struct.ikev2_responder_data* %16, %struct.wpabuf* %17, i32 %18, i32 %19, i32 1)
  %21 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %22 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1000
  %25 = call %struct.wpabuf* @wpabuf_alloc(i64 %24)
  store %struct.wpabuf* %25, %struct.wpabuf** %5, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %27 = icmp eq %struct.wpabuf* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %30 = call i32 @wpabuf_free(%struct.wpabuf* %29)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %74

31:                                               ; preds = %15
  %32 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %33 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %34 = load i32, i32* @IKEV2_PAYLOAD_AUTHENTICATION, align 4
  %35 = call i64 @ikev2_build_idr(%struct.ikev2_responder_data* %32, %struct.wpabuf* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %31
  %38 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %40 = load i32, i32* @IKEV2_PAYLOAD_NO_NEXT_PAYLOAD, align 4
  %41 = call i64 @ikev2_build_auth(%struct.ikev2_responder_data* %38, %struct.wpabuf* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %37
  %44 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %45 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %49 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %53 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %52, i32 0, i32 1
  %54 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %55 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %56 = load i32, i32* @IKEV2_PAYLOAD_IDr, align 4
  %57 = call i64 @ikev2_build_encrypted(i32 %47, i32 %51, i32* %53, i32 0, %struct.wpabuf* %54, %struct.wpabuf* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %43, %37, %31
  %60 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %61 = call i32 @wpabuf_free(%struct.wpabuf* %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %63 = call i32 @wpabuf_free(%struct.wpabuf* %62)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %74

64:                                               ; preds = %43
  %65 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %66 = call i32 @wpabuf_free(%struct.wpabuf* %65)
  %67 = load i32, i32* @MSG_MSGDUMP, align 4
  %68 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %69 = call i32 @wpa_hexdump_buf(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.wpabuf* %68)
  %70 = load i32, i32* @IKEV2_DONE, align 4
  %71 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %72 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %73, %struct.wpabuf** %2, align 8
  br label %74

74:                                               ; preds = %64, %59, %28, %14
  %75 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %75
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @ikev2_build_hdr(%struct.ikev2_responder_data*, %struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @ikev2_build_idr(%struct.ikev2_responder_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @ikev2_build_auth(%struct.ikev2_responder_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @ikev2_build_encrypted(i32, i32, i32*, i32, %struct.wpabuf*, %struct.wpabuf*, i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
