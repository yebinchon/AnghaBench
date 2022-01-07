; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ikev2.c_eap_ikev2_build_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ikev2.c_eap_ikev2_build_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_ikev2_data = type { i64, i32, %struct.wpabuf*, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ikev2_integ_alg = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-IKEV2: Generating Request\00", align 1
@IKEV2_FLAGS_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@IKEV2_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"EAP-IKEV2: Add Integrity Checksum Data\00", align 1
@IKEV2_FLAGS_ICV_INCLUDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"EAP-IKEV2: Unknown INTEG transform / cannot generate ICV\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_IKEV2 = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"EAP-IKEV2: Sending out %lu bytes (message sent completely)\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"EAP-IKEV2: Sending out %lu bytes (%lu more to send)\00", align 1
@WAIT_FRAG_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_ikev2_data*, i32)* @eap_ikev2_build_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_ikev2_build_msg(%struct.eap_ikev2_data* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_ikev2_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ikev2_integ_alg*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.eap_ikev2_data* %0, %struct.eap_ikev2_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %10, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %16 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %17 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %16, i32 0, i32 2
  %18 = load %struct.wpabuf*, %struct.wpabuf** %17, align 8
  %19 = call i64 @wpabuf_len(%struct.wpabuf* %18)
  %20 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %21 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add i64 1, %24
  %26 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %27 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ugt i64 %25, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %2
  %32 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %33 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* @IKEV2_FLAGS_MORE_FRAGMENTS, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %41 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load i32, i32* @IKEV2_FLAGS_LENGTH_INCLUDED, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %48, 4
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %44, %31
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i64, i64* %8, align 8
  %53 = add i64 1, %52
  store i64 %53, i64* %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @IKEV2_FLAGS_LENGTH_INCLUDED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %63 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @IKEV2_FLAGS_ICV_INCLUDED, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %73 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.ikev2_integ_alg* @ikev2_get_integ(i32 %76)
  store %struct.ikev2_integ_alg* %77, %struct.ikev2_integ_alg** %11, align 8
  %78 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %11, align 8
  %79 = icmp eq %struct.ikev2_integ_alg* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %66
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %200

83:                                               ; preds = %66
  %84 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %11, align 8
  %85 = getelementptr inbounds %struct.ikev2_integ_alg, %struct.ikev2_integ_alg* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %83, %61
  %91 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %92 = load i32, i32* @EAP_TYPE_IKEV2, align 4
  %93 = load i64, i64* %9, align 8
  %94 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call %struct.wpabuf* @eap_msg_alloc(i32 %91, i32 %92, i64 %93, i32 %94, i32 %95)
  store %struct.wpabuf* %96, %struct.wpabuf** %6, align 8
  %97 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %98 = icmp eq %struct.wpabuf* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %200

100:                                              ; preds = %90
  %101 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @wpabuf_put_u8(%struct.wpabuf* %101, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @IKEV2_FLAGS_LENGTH_INCLUDED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %110 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %111 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %110, i32 0, i32 2
  %112 = load %struct.wpabuf*, %struct.wpabuf** %111, align 8
  %113 = call i64 @wpabuf_len(%struct.wpabuf* %112)
  %114 = call i32 @wpabuf_put_be32(%struct.wpabuf* %109, i64 %113)
  br label %115

115:                                              ; preds = %108, %100
  %116 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %117 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %118 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %117, i32 0, i32 2
  %119 = load %struct.wpabuf*, %struct.wpabuf** %118, align 8
  %120 = call i64 @wpabuf_head_u8(%struct.wpabuf* %119)
  %121 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %122 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %120, %123
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @wpabuf_put_data(%struct.wpabuf* %116, i64 %124, i64 %125)
  %127 = load i64, i64* %8, align 8
  %128 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %129 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @IKEV2_FLAGS_ICV_INCLUDED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %162

136:                                              ; preds = %115
  %137 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %138 = call i32* @wpabuf_head(%struct.wpabuf* %137)
  store i32* %138, i32** %12, align 8
  %139 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %140 = call i64 @wpabuf_len(%struct.wpabuf* %139)
  store i64 %140, i64* %13, align 8
  %141 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %142 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %147 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %152 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32*, i32** %12, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @wpabuf_put(%struct.wpabuf* %158, i64 %159)
  %161 = call i32 @ikev2_integ_hash(i32 %145, i32 %150, i32 %155, i32* %156, i64 %157, i32 %160)
  br label %162

162:                                              ; preds = %136, %115
  %163 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %164 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %167 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %166, i32 0, i32 2
  %168 = load %struct.wpabuf*, %struct.wpabuf** %167, align 8
  %169 = call i64 @wpabuf_len(%struct.wpabuf* %168)
  %170 = icmp eq i64 %165, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %162
  %172 = load i32, i32* @MSG_DEBUG, align 4
  %173 = load i64, i64* %8, align 8
  %174 = call i32 (i32, i8*, ...) @wpa_printf(i32 %172, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %173)
  %175 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %176 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %175, i32 0, i32 2
  %177 = load %struct.wpabuf*, %struct.wpabuf** %176, align 8
  %178 = call i32 @wpabuf_free(%struct.wpabuf* %177)
  %179 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %180 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %179, i32 0, i32 2
  store %struct.wpabuf* null, %struct.wpabuf** %180, align 8
  %181 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %182 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %181, i32 0, i32 0
  store i64 0, i64* %182, align 8
  br label %198

183:                                              ; preds = %162
  %184 = load i32, i32* @MSG_DEBUG, align 4
  %185 = load i64, i64* %8, align 8
  %186 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %187 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %186, i32 0, i32 2
  %188 = load %struct.wpabuf*, %struct.wpabuf** %187, align 8
  %189 = call i64 @wpabuf_len(%struct.wpabuf* %188)
  %190 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %191 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = sub i64 %189, %192
  %194 = call i32 (i32, i8*, ...) @wpa_printf(i32 %184, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %185, i64 %193)
  %195 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %4, align 8
  %196 = load i32, i32* @WAIT_FRAG_ACK, align 4
  %197 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %195, i32 %196)
  br label %198

198:                                              ; preds = %183, %171
  %199 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %199, %struct.wpabuf** %3, align 8
  br label %200

200:                                              ; preds = %198, %99, %80
  %201 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %201
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.ikev2_integ_alg* @ikev2_get_integ(i32) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

declare dso_local i64 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @ikev2_integ_hash(i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @eap_ikev2_state(%struct.eap_ikev2_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
