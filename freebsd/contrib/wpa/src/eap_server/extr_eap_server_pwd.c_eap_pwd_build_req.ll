; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_build_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_build_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i32, i64, i64, %struct.wpabuf*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-pwd: ACKing a fragment!!\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PWD = common dso_local global i32 0, align 4
@EAP_PWD_HDR_SIZE = common dso_local global i64 0, align 8
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@EAP_PWD_OPCODE_ID_EXCH = common dso_local global i32 0, align 4
@EAP_PWD_OPCODE_COMMIT_EXCH = common dso_local global i32 0, align 4
@EAP_PWD_OPCODE_CONFIRM_EXCH = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"EAP-pwd: Unknown state %d in build_req\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"EAP-pwd: Fragmenting output, total length = %d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"EAP-pwd: Send a %d byte fragment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, i32)* @eap_pwd_build_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_pwd_build_req(%struct.eap_sm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_pwd_data*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.eap_pwd_data*
  store %struct.eap_pwd_data* %15, %struct.eap_pwd_data** %8, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %17 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %3
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %24 = load i32, i32* @EAP_TYPE_PWD, align 4
  %25 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %26 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.wpabuf* @eap_msg_alloc(i32 %23, i32 %24, i64 %25, i32 %26, i32 %27)
  store %struct.wpabuf* %28, %struct.wpabuf** %9, align 8
  %29 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %30 = icmp eq %struct.wpabuf* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %33 = load i32, i32* @FAILURE, align 4
  %34 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %32, i32 %33)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %214

35:                                               ; preds = %20
  %36 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %37 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %51 [
    i32 128, label %39
    i32 130, label %43
    i32 129, label %47
  ]

39:                                               ; preds = %35
  %40 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %41 = load i32, i32* @EAP_PWD_OPCODE_ID_EXCH, align 4
  %42 = call i32 @wpabuf_put_u8(%struct.wpabuf* %40, i32 %41)
  br label %57

43:                                               ; preds = %35
  %44 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %45 = load i32, i32* @EAP_PWD_OPCODE_COMMIT_EXCH, align 4
  %46 = call i32 @wpabuf_put_u8(%struct.wpabuf* %44, i32 %45)
  br label %57

47:                                               ; preds = %35
  %48 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %49 = load i32, i32* @EAP_PWD_OPCODE_CONFIRM_EXCH, align 4
  %50 = call i32 @wpabuf_put_u8(%struct.wpabuf* %48, i32 %49)
  br label %57

51:                                               ; preds = %35
  %52 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %53 = load i32, i32* @FAILURE, align 4
  %54 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %52, i32 %53)
  %55 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %56 = call i32 @wpabuf_free(%struct.wpabuf* %55)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %214

57:                                               ; preds = %47, %43, %39
  %58 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %58, %struct.wpabuf** %4, align 8
  br label %214

59:                                               ; preds = %3
  %60 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %61 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %81 [
    i32 128, label %63
    i32 130, label %69
    i32 129, label %75
  ]

63:                                               ; preds = %59
  %64 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %65 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @eap_pwd_build_id_req(%struct.eap_sm* %64, %struct.eap_pwd_data* %65, i32 %66)
  %68 = load i32, i32* @EAP_PWD_OPCODE_ID_EXCH, align 4
  store i32 %68, i32* %10, align 4
  br label %90

69:                                               ; preds = %59
  %70 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %71 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @eap_pwd_build_commit_req(%struct.eap_sm* %70, %struct.eap_pwd_data* %71, i32 %72)
  %74 = load i32, i32* @EAP_PWD_OPCODE_COMMIT_EXCH, align 4
  store i32 %74, i32* %10, align 4
  br label %90

75:                                               ; preds = %59
  %76 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %77 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @eap_pwd_build_confirm_req(%struct.eap_sm* %76, %struct.eap_pwd_data* %77, i32 %78)
  %80 = load i32, i32* @EAP_PWD_OPCODE_CONFIRM_EXCH, align 4
  store i32 %80, i32* %10, align 4
  br label %90

81:                                               ; preds = %59
  %82 = load i32, i32* @MSG_INFO, align 4
  %83 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %84 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %88 = load i32, i32* @FAILURE, align 4
  %89 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %87, i32 %88)
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %81, %75, %69, %63
  %91 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %92 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FAILURE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %214

97:                                               ; preds = %90
  %98 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %99 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %98, i32 0, i32 3
  %100 = load %struct.wpabuf*, %struct.wpabuf** %99, align 8
  %101 = call i64 @wpabuf_len(%struct.wpabuf* %100)
  %102 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %103 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %101, %104
  store i64 %105, i64* %13, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %108 = add i64 %106, %107
  %109 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %110 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ugt i64 %108, %111
  br i1 %112, label %113, label %146

113:                                              ; preds = %97
  %114 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %115 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %118 = sub nsw i64 %116, %117
  store i64 %118, i64* %13, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @EAP_PWD_SET_MORE_BIT(i32 %119)
  %121 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %122 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %113
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @EAP_PWD_SET_LENGTH_BIT(i32 %126)
  %128 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %129 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %128, i32 0, i32 3
  %130 = load %struct.wpabuf*, %struct.wpabuf** %129, align 8
  %131 = call i64 @wpabuf_len(%struct.wpabuf* %130)
  %132 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %133 = add nsw i64 %131, %132
  %134 = add i64 %133, 4
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %12, align 4
  %136 = load i64, i64* %13, align 8
  %137 = sub i64 %136, 4
  store i64 %137, i64* %13, align 8
  %138 = load i32, i32* @MSG_DEBUG, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 (i32, i8*, ...) @wpa_printf(i32 %138, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %125, %113
  %142 = load i32, i32* @MSG_DEBUG, align 4
  %143 = load i64, i64* %13, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 (i32, i8*, ...) @wpa_printf(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %141, %97
  %147 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %148 = load i32, i32* @EAP_TYPE_PWD, align 4
  %149 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %150 = load i64, i64* %13, align 8
  %151 = add i64 %149, %150
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i64 4, i64 0
  %156 = add i64 %151, %155
  %157 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call %struct.wpabuf* @eap_msg_alloc(i32 %147, i32 %148, i64 %156, i32 %157, i32 %158)
  store %struct.wpabuf* %159, %struct.wpabuf** %9, align 8
  %160 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %161 = icmp eq %struct.wpabuf* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %146
  %163 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %164 = load i32, i32* @FAILURE, align 4
  %165 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %163, i32 %164)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %214

166:                                              ; preds = %146
  %167 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @wpabuf_put_u8(%struct.wpabuf* %167, i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = call i64 @EAP_PWD_GET_LENGTH_BIT(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @wpabuf_put_be16(%struct.wpabuf* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %166
  %178 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %179 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %178, i32 0, i32 3
  %180 = load %struct.wpabuf*, %struct.wpabuf** %179, align 8
  %181 = call i32* @wpabuf_head_u8(%struct.wpabuf* %180)
  store i32* %181, i32** %11, align 8
  %182 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %185 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i64, i64* %13, align 8
  %189 = call i32 @wpabuf_put_data(%struct.wpabuf* %182, i32* %187, i64 %188)
  %190 = load i64, i64* %13, align 8
  %191 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %192 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, %190
  store i64 %194, i64* %192, align 8
  %195 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %196 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %199 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %198, i32 0, i32 3
  %200 = load %struct.wpabuf*, %struct.wpabuf** %199, align 8
  %201 = call i64 @wpabuf_len(%struct.wpabuf* %200)
  %202 = icmp sge i64 %197, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %177
  %204 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %205 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %204, i32 0, i32 3
  %206 = load %struct.wpabuf*, %struct.wpabuf** %205, align 8
  %207 = call i32 @wpabuf_free(%struct.wpabuf* %206)
  %208 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %209 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %208, i32 0, i32 3
  store %struct.wpabuf* null, %struct.wpabuf** %209, align 8
  %210 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %211 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %210, i32 0, i32 1
  store i64 0, i64* %211, align 8
  br label %212

212:                                              ; preds = %203, %177
  %213 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %213, %struct.wpabuf** %4, align 8
  br label %214

214:                                              ; preds = %212, %162, %96, %57, %51, %31
  %215 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %215
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @eap_pwd_build_id_req(%struct.eap_sm*, %struct.eap_pwd_data*, i32) #1

declare dso_local i32 @eap_pwd_build_commit_req(%struct.eap_sm*, %struct.eap_pwd_data*, i32) #1

declare dso_local i32 @eap_pwd_build_confirm_req(%struct.eap_sm*, %struct.eap_pwd_data*, i32) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @EAP_PWD_SET_MORE_BIT(i32) #1

declare dso_local i32 @EAP_PWD_SET_LENGTH_BIT(i32) #1

declare dso_local i64 @EAP_PWD_GET_LENGTH_BIT(i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
