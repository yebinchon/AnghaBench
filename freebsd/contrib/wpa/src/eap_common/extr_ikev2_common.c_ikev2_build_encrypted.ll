; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_build_encrypted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_build_encrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_keys = type { i32, i32, i32*, i32*, i32*, i32* }
%struct.wpabuf = type { i32 }
%struct.ikev2_payload_hdr = type { i32, i64, i32 }
%struct.ikev2_integ_alg = type { i64 }
%struct.ikev2_encr_alg = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"IKEV2: Adding Encrypted payload\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"IKEV2: Unsupported encryption type\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"IKEV2: Unsupported intergrity type\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"IKEV2: No SK_e available\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"IKEV2: No SK_a available\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"IKEV2: Could not generate IV\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ikev2_build_encrypted(i32 %0, i32 %1, %struct.ikev2_keys* %2, i32 %3, %struct.wpabuf* %4, %struct.wpabuf* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ikev2_keys*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ikev2_payload_hdr*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.ikev2_integ_alg*, align 8
  %23 = alloca %struct.ikev2_encr_alg*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.ikev2_keys* %2, %struct.ikev2_keys** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.wpabuf* %4, %struct.wpabuf** %13, align 8
  store %struct.wpabuf* %5, %struct.wpabuf** %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %7
  %29 = load %struct.ikev2_keys*, %struct.ikev2_keys** %11, align 8
  %30 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  br label %36

32:                                               ; preds = %7
  %33 = load %struct.ikev2_keys*, %struct.ikev2_keys** %11, align 8
  %34 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32* [ %31, %28 ], [ %35, %32 ]
  store i32* %37, i32** %24, align 8
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.ikev2_keys*, %struct.ikev2_keys** %11, align 8
  %42 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  br label %48

44:                                               ; preds = %36
  %45 = load %struct.ikev2_keys*, %struct.ikev2_keys** %11, align 8
  %46 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i32* [ %43, %40 ], [ %47, %44 ]
  store i32* %49, i32** %25, align 8
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %9, align 4
  %53 = call %struct.ikev2_encr_alg* @ikev2_get_encr(i32 %52)
  store %struct.ikev2_encr_alg* %53, %struct.ikev2_encr_alg** %23, align 8
  %54 = load %struct.ikev2_encr_alg*, %struct.ikev2_encr_alg** %23, align 8
  %55 = icmp eq %struct.ikev2_encr_alg* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @MSG_INFO, align 4
  %58 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %179

59:                                               ; preds = %48
  %60 = load %struct.ikev2_encr_alg*, %struct.ikev2_encr_alg** %23, align 8
  %61 = getelementptr inbounds %struct.ikev2_encr_alg, %struct.ikev2_encr_alg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %18, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.ikev2_integ_alg* @ikev2_get_integ(i32 %63)
  store %struct.ikev2_integ_alg* %64, %struct.ikev2_integ_alg** %22, align 8
  %65 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %22, align 8
  %66 = icmp eq %struct.ikev2_integ_alg* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %179

70:                                               ; preds = %59
  %71 = load i32*, i32** %24, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @MSG_INFO, align 4
  %75 = call i32 @wpa_printf(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %179

76:                                               ; preds = %70
  %77 = load i32*, i32** %25, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @MSG_INFO, align 4
  %81 = call i32 @wpa_printf(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %179

82:                                               ; preds = %76
  %83 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %84 = call i8* @wpabuf_put(%struct.wpabuf* %83, i64 24)
  %85 = bitcast i8* %84 to %struct.ikev2_payload_hdr*
  store %struct.ikev2_payload_hdr* %85, %struct.ikev2_payload_hdr** %16, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %16, align 8
  %88 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %16, align 8
  %90 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %92 = load i64, i64* %18, align 8
  %93 = call i8* @wpabuf_put(%struct.wpabuf* %91, i64 %92)
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** %21, align 8
  %95 = load i32*, i32** %21, align 8
  %96 = load i64, i64* %18, align 8
  %97 = call i64 @random_get_bytes(i32* %95, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %82
  %100 = load i32, i32* @MSG_INFO, align 4
  %101 = call i32 @wpa_printf(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %179

102:                                              ; preds = %82
  %103 = load i64, i64* %18, align 8
  %104 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %105 = call i64 @wpabuf_len(%struct.wpabuf* %104)
  %106 = add i64 %105, 1
  %107 = load i64, i64* %18, align 8
  %108 = urem i64 %106, %107
  %109 = sub i64 %103, %108
  store i64 %109, i64* %19, align 8
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* %18, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  store i64 0, i64* %19, align 8
  br label %114

114:                                              ; preds = %113, %102
  %115 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %116 = load i64, i64* %19, align 8
  %117 = call i8* @wpabuf_put(%struct.wpabuf* %115, i64 %116)
  %118 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %119 = load i64, i64* %19, align 8
  %120 = call i32 @wpabuf_put_u8(%struct.wpabuf* %118, i64 %119)
  %121 = load %struct.ikev2_encr_alg*, %struct.ikev2_encr_alg** %23, align 8
  %122 = getelementptr inbounds %struct.ikev2_encr_alg, %struct.ikev2_encr_alg* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %24, align 8
  %125 = load %struct.ikev2_keys*, %struct.ikev2_keys** %11, align 8
  %126 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %21, align 8
  %129 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %130 = call i32 @wpabuf_head(%struct.wpabuf* %129)
  %131 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %132 = call i32 @wpabuf_mhead(%struct.wpabuf* %131)
  %133 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %134 = call i64 @wpabuf_len(%struct.wpabuf* %133)
  %135 = call i64 @ikev2_encr_encrypt(i32 %123, i32* %124, i32 %127, i32* %128, i32 %130, i32 %132, i64 %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %114
  store i32 -1, i32* %8, align 4
  br label %179

138:                                              ; preds = %114
  %139 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %140 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %141 = call i32 @wpabuf_put_buf(%struct.wpabuf* %139, %struct.wpabuf* %140)
  %142 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %143 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %22, align 8
  %144 = getelementptr inbounds %struct.ikev2_integ_alg, %struct.ikev2_integ_alg* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i8* @wpabuf_put(%struct.wpabuf* %142, i64 %145)
  %147 = bitcast i8* %146 to i32*
  store i32* %147, i32** %20, align 8
  %148 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %149 = call i8* @wpabuf_put(%struct.wpabuf* %148, i64 0)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %16, align 8
  %152 = bitcast %struct.ikev2_payload_hdr* %151 to i32*
  %153 = ptrtoint i32* %150 to i64
  %154 = ptrtoint i32* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  store i64 %156, i64* %17, align 8
  %157 = load %struct.ikev2_payload_hdr*, %struct.ikev2_payload_hdr** %16, align 8
  %158 = getelementptr inbounds %struct.ikev2_payload_hdr, %struct.ikev2_payload_hdr* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i64, i64* %17, align 8
  %161 = call i32 @WPA_PUT_BE16(i32 %159, i64 %160)
  %162 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %163 = call i32 @ikev2_update_hdr(%struct.wpabuf* %162)
  %164 = load i32, i32* %10, align 4
  %165 = load i32*, i32** %25, align 8
  %166 = load %struct.ikev2_keys*, %struct.ikev2_keys** %11, align 8
  %167 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %170 = call i32 @wpabuf_head(%struct.wpabuf* %169)
  %171 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %172 = call i64 @wpabuf_len(%struct.wpabuf* %171)
  %173 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %22, align 8
  %174 = getelementptr inbounds %struct.ikev2_integ_alg, %struct.ikev2_integ_alg* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = sub i64 %172, %175
  %177 = load i32*, i32** %20, align 8
  %178 = call i32 @ikev2_integ_hash(i32 %164, i32* %165, i32 %168, i32 %170, i64 %176, i32* %177)
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %138, %137, %99, %79, %73, %67, %56
  %180 = load i32, i32* %8, align 4
  ret i32 %180
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.ikev2_encr_alg* @ikev2_get_encr(i32) #1

declare dso_local %struct.ikev2_integ_alg* @ikev2_get_integ(i32) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i64 @random_get_bytes(i32*, i64) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i64 @ikev2_encr_encrypt(i32, i32*, i32, i32*, i32, i32, i64) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i64) #1

declare dso_local i32 @ikev2_update_hdr(%struct.wpabuf*) #1

declare dso_local i32 @ikev2_integ_hash(i32, i32*, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
