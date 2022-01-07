; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_sa_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_build_sa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.ikev2_responder_data = type { i64, %struct.wpabuf*, i32, i32, %struct.TYPE_2__, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IKEV2_SPI_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"IKEV2: IKE_SA Responder's SPI\00", align 1
@IKEV2_NONCE_MIN_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"IKEV2: Nr\00", align 1
@IKE_SA_INIT = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_SA = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_KEY_EXCHANGE = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_NONCE = common dso_local global i32 0, align 4
@PEER_AUTH_SECRET = common dso_local global i64 0, align 8
@IKEV2_PAYLOAD_ENCRYPTED = common dso_local global i32 0, align 4
@IKEV2_PAYLOAD_NO_NEXT_PAYLOAD = common dso_local global i32 0, align 4
@PEER_AUTH_CERT = common dso_local global i64 0, align 8
@IKEV2_PAYLOAD_IDr = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"IKEV2: Sending message (SA_INIT)\00", align 1
@SA_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.ikev2_responder_data*)* @ikev2_build_sa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @ikev2_build_sa_init(%struct.ikev2_responder_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.ikev2_responder_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %3, align 8
  %6 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %7 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %10 = call i64 @os_get_random(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %165

13:                                               ; preds = %1
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %16 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %19 = call i32 @wpa_hexdump(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* @IKEV2_NONCE_MIN_LEN, align 4
  %21 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %22 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %24 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %27 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @random_get_bytes(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %165

32:                                               ; preds = %13
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %35 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %38 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @wpa_hexdump(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %42 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = add i64 4, %43
  %45 = add i64 %44, 1500
  %46 = call %struct.wpabuf* @wpabuf_alloc(i64 %45)
  store %struct.wpabuf* %46, %struct.wpabuf** %4, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %48 = icmp eq %struct.wpabuf* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %165

50:                                               ; preds = %32
  %51 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %52 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %53 = load i32, i32* @IKE_SA_INIT, align 4
  %54 = load i32, i32* @IKEV2_PAYLOAD_SA, align 4
  %55 = call i32 @ikev2_build_hdr(%struct.ikev2_responder_data* %51, %struct.wpabuf* %52, i32 %53, i32 %54, i32 0)
  %56 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %58 = load i32, i32* @IKEV2_PAYLOAD_KEY_EXCHANGE, align 4
  %59 = call i64 @ikev2_build_sar1(%struct.ikev2_responder_data* %56, %struct.wpabuf* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %50
  %62 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %63 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %64 = load i32, i32* @IKEV2_PAYLOAD_NONCE, align 4
  %65 = call i64 @ikev2_build_ker(%struct.ikev2_responder_data* %62, %struct.wpabuf* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %61
  %68 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %70 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %71 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PEER_AUTH_SECRET, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @IKEV2_PAYLOAD_ENCRYPTED, align 4
  br label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @IKEV2_PAYLOAD_NO_NEXT_PAYLOAD, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = call i64 @ikev2_build_nr(%struct.ikev2_responder_data* %68, %struct.wpabuf* %69, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %61, %50
  %84 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %85 = call i32 @wpabuf_free(%struct.wpabuf* %84)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %165

86:                                               ; preds = %79
  %87 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %88 = call i64 @ikev2_derive_keys(%struct.ikev2_responder_data* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %92 = call i32 @wpabuf_free(%struct.wpabuf* %91)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %165

93:                                               ; preds = %86
  %94 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %95 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PEER_AUTH_CERT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %93
  %101 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %102 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PEER_AUTH_SECRET, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %147

106:                                              ; preds = %100
  %107 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %108 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1000
  %111 = call %struct.wpabuf* @wpabuf_alloc(i64 %110)
  store %struct.wpabuf* %111, %struct.wpabuf** %5, align 8
  %112 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %113 = icmp eq %struct.wpabuf* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %116 = call i32 @wpabuf_free(%struct.wpabuf* %115)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %165

117:                                              ; preds = %106
  %118 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %119 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %120 = load i32, i32* @IKEV2_PAYLOAD_NO_NEXT_PAYLOAD, align 4
  %121 = call i64 @ikev2_build_idr(%struct.ikev2_responder_data* %118, %struct.wpabuf* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %117
  %124 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %125 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %129 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %133 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %132, i32 0, i32 3
  %134 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %135 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %136 = load i32, i32* @IKEV2_PAYLOAD_IDr, align 4
  %137 = call i64 @ikev2_build_encrypted(i32 %127, i32 %131, i32* %133, i32 0, %struct.wpabuf* %134, %struct.wpabuf* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %123, %117
  %140 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %141 = call i32 @wpabuf_free(%struct.wpabuf* %140)
  %142 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %143 = call i32 @wpabuf_free(%struct.wpabuf* %142)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %165

144:                                              ; preds = %123
  %145 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %146 = call i32 @wpabuf_free(%struct.wpabuf* %145)
  br label %147

147:                                              ; preds = %144, %100
  %148 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %149 = call i32 @ikev2_update_hdr(%struct.wpabuf* %148)
  %150 = load i32, i32* @MSG_MSGDUMP, align 4
  %151 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %152 = call i32 @wpa_hexdump_buf(i32 %150, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %151)
  %153 = load i32, i32* @SA_AUTH, align 4
  %154 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %155 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %157 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %156, i32 0, i32 1
  %158 = load %struct.wpabuf*, %struct.wpabuf** %157, align 8
  %159 = call i32 @wpabuf_free(%struct.wpabuf* %158)
  %160 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %161 = call %struct.wpabuf* @wpabuf_dup(%struct.wpabuf* %160)
  %162 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %163 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %162, i32 0, i32 1
  store %struct.wpabuf* %161, %struct.wpabuf** %163, align 8
  %164 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %164, %struct.wpabuf** %2, align 8
  br label %165

165:                                              ; preds = %147, %139, %114, %90, %83, %49, %31, %12
  %166 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %166
}

declare dso_local i64 @os_get_random(i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @ikev2_build_hdr(%struct.ikev2_responder_data*, %struct.wpabuf*, i32, i32, i32) #1

declare dso_local i64 @ikev2_build_sar1(%struct.ikev2_responder_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @ikev2_build_ker(%struct.ikev2_responder_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @ikev2_build_nr(%struct.ikev2_responder_data*, %struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @ikev2_derive_keys(%struct.ikev2_responder_data*) #1

declare dso_local i64 @ikev2_build_idr(%struct.ikev2_responder_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @ikev2_build_encrypted(i32, i32, i32*, i32, %struct.wpabuf*, %struct.wpabuf*, i32) #1

declare dso_local i32 @ikev2_update_hdr(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_dup(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
