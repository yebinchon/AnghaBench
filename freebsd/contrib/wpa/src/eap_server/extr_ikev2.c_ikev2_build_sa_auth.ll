; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_build_sa_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_build_sa_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.ikev2_initiator_data = type { i32, i32, i32, %struct.TYPE_2__, i32, i32*, i32, i32, i32* (i32, i32, i32, i64*)* }
%struct.TYPE_2__ = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"IKEV2: Could not get shared secret - use fake value\00", align 1
@IKE_SA_AUTH = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_ENCRYPTED = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_AUTHENTICATION = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_NO_NEXT_PAYLOAD = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_IDi = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"IKEV2: Sending message (SA_AUTH)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.ikev2_initiator_data*)* @ikev2_build_sa_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @ikev2_build_sa_auth(%struct.ikev2_initiator_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.ikev2_initiator_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %3, align 8
  %8 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %9 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %8, i32 0, i32 8
  %10 = load i32* (i32, i32, i32, i64*)*, i32* (i32, i32, i32, i64*)** %9, align 8
  %11 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %12 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %15 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %18 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32* %10(i32 %13, i32 %16, i32 %19, i64* %7)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %1
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %27 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %29 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @os_free(i32* %30)
  %32 = call i32* @os_malloc(i32 16)
  %33 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %34 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %33, i32 0, i32 5
  store i32* %32, i32** %34, align 8
  %35 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %36 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %138

40:                                               ; preds = %23
  %41 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %42 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %41, i32 0, i32 1
  store i32 16, i32* %42, align 4
  %43 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %44 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @random_get_bytes(i32* %45, i32 16)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %138

49:                                               ; preds = %40
  br label %70

50:                                               ; preds = %1
  %51 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %52 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @os_free(i32* %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32* @os_memdup(i32* %55, i64 %56)
  %58 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %59 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %58, i32 0, i32 5
  store i32* %57, i32** %59, align 8
  %60 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %61 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %138

65:                                               ; preds = %50
  %66 = load i64, i64* %7, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %69 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %49
  %71 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %72 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 4, %74
  %76 = add i64 %75, 1000
  %77 = call %struct.wpabuf* @wpabuf_alloc(i64 %76)
  store %struct.wpabuf* %77, %struct.wpabuf** %4, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %79 = icmp eq %struct.wpabuf* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %138

81:                                               ; preds = %70
  %82 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %83 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %84 = load i32, i32* @IKE_SA_AUTH, align 4
  %85 = load i32, i32* @IKEV2_PAYLOAD_ENCRYPTED, align 4
  %86 = call i32 @ikev2_build_hdr(%struct.ikev2_initiator_data* %82, %struct.wpabuf* %83, i32 %84, i32 %85, i32 1)
  %87 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %88 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1000
  %91 = sext i32 %90 to i64
  %92 = call %struct.wpabuf* @wpabuf_alloc(i64 %91)
  store %struct.wpabuf* %92, %struct.wpabuf** %5, align 8
  %93 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %94 = icmp eq %struct.wpabuf* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %81
  %96 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %97 = call i32 @wpabuf_free(%struct.wpabuf* %96)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %138

98:                                               ; preds = %81
  %99 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %100 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %101 = load i32, i32* @IKEV2_PAYLOAD_AUTHENTICATION, align 4
  %102 = call i64 @ikev2_build_idi(%struct.ikev2_initiator_data* %99, %struct.wpabuf* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %126, label %104

104:                                              ; preds = %98
  %105 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %106 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %107 = load i32, i32* @IKEV2_PAYLOAD_NO_NEXT_PAYLOAD, align 4
  %108 = call i64 @ikev2_build_auth(%struct.ikev2_initiator_data* %105, %struct.wpabuf* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %104
  %111 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %112 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %116 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %3, align 8
  %120 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %119, i32 0, i32 2
  %121 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %122 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %123 = load i32, i32* @IKEV2_PAYLOAD_IDi, align 4
  %124 = call i64 @ikev2_build_encrypted(i32 %114, i32 %118, i32* %120, i32 1, %struct.wpabuf* %121, %struct.wpabuf* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %110, %104, %98
  %127 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %128 = call i32 @wpabuf_free(%struct.wpabuf* %127)
  %129 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %130 = call i32 @wpabuf_free(%struct.wpabuf* %129)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %138

131:                                              ; preds = %110
  %132 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %133 = call i32 @wpabuf_free(%struct.wpabuf* %132)
  %134 = load i32, i32* @MSG_MSGDUMP, align 4
  %135 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %136 = call i32 @wpa_hexdump_buf(i32 %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.wpabuf* %135)
  %137 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %137, %struct.wpabuf** %2, align 8
  br label %138

138:                                              ; preds = %131, %126, %95, %80, %64, %48, %39
  %139 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %139
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i64 @random_get_bytes(i32*, i32) #1

declare dso_local i32* @os_memdup(i32*, i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @ikev2_build_hdr(%struct.ikev2_initiator_data*, %struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @ikev2_build_idi(%struct.ikev2_initiator_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @ikev2_build_auth(%struct.ikev2_initiator_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @ikev2_build_encrypted(i32, i32, i32*, i32, %struct.wpabuf*, %struct.wpabuf*, i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
