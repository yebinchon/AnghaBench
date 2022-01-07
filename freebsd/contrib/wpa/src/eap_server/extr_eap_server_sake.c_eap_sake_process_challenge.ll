; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_process_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_process_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.eap_sake_data = type { i64, i32, i32*, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sake_parse_attr = type { i32, i32, i64, i32 }

@EAP_SAKE_MIC_LEN = common dso_local global i32 0, align 4
@CHALLENGE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP-SAKE: Received Response/Challenge\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"EAP-SAKE: Response/Challenge did not include AT_RAND_P or AT_MIC_P\00", align 1
@EAP_SAKE_RAND_LEN = common dso_local global i32 0, align 4
@EAP_SAKE_ROOT_SECRET_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"EAP-SAKE: Plaintext password with %d-byte key not configured\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"EAP-SAKE: Failed to derive keys\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"EAP-SAKE: Failed to compute MIC\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"EAP-SAKE: Incorrect AT_MIC_P\00", align 1
@CONFIRM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_sake_data*, %struct.wpabuf*, i32*, i64)* @eap_sake_process_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sake_process_challenge(%struct.eap_sm* %0, %struct.eap_sake_data* %1, %struct.wpabuf* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_sake_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.eap_sake_parse_attr, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_sake_data* %1, %struct.eap_sake_data** %7, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i32, i32* @EAP_SAKE_MIC_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %20 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CHALLENGE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  br label %203

25:                                               ; preds = %5
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @eap_sake_parse_attributes(i32* %28, i64 %29, %struct.eap_sake_parse_attr* %11)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %14, align 4
  br label %203

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %203

44:                                               ; preds = %37
  %45 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %46 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %51 = call i32 @os_memcpy(i32 %47, i32 %49, i32 %50)
  %52 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %53 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @os_free(i32* %54)
  %56 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %57 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %59 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %58, i32 0, i32 1
  store i32 0, i32* %59, align 8
  %60 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %44
  %64 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32* @os_memdup(i64 %65, i32 %67)
  %69 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %70 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %72 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  store i32 1, i32* %14, align 4
  br label %203

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %80 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %44
  %82 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %83 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = icmp eq %struct.TYPE_3__* %84, null
  br i1 %85, label %102, label %86

86:                                               ; preds = %81
  %87 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %88 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %86
  %94 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %95 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @EAP_SAKE_ROOT_SECRET_LEN, align 4
  %100 = mul nsw i32 2, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %93, %86, %81
  %103 = load i32, i32* @MSG_INFO, align 4
  %104 = load i32, i32* @EAP_SAKE_ROOT_SECRET_LEN, align 4
  %105 = mul nsw i32 2, %104
  %106 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i8*, i8** @FAILURE, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %110 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  store i32 1, i32* %14, align 4
  br label %203

111:                                              ; preds = %93
  %112 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %113 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %112, i32 0, i32 2
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %118 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %117, i32 0, i32 2
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @EAP_SAKE_ROOT_SECRET_LEN, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %126 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %129 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %132 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %131, i32 0, i32 5
  %133 = bitcast %struct.TYPE_4__* %132 to i32*
  %134 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %135 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %138 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @eap_sake_derive_keys(i32* %116, i32* %124, i32 %127, i32 %130, i32* %133, i32 %136, i32 %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %111
  %143 = load i32, i32* @MSG_INFO, align 4
  %144 = call i32 (i32, i8*, ...) @wpa_printf(i32 %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i8*, i8** @FAILURE, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %148 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  store i32 1, i32* %14, align 4
  br label %203

149:                                              ; preds = %111
  %150 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %151 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %155 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %158 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %161 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %164 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %167 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %170 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %173 = call i32 @wpabuf_head(%struct.wpabuf* %172)
  %174 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %175 = call i32 @wpabuf_len(%struct.wpabuf* %174)
  %176 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @eap_sake_compute_mic(i32 %153, i32 %156, i32 %159, i32 %162, i32 %165, i32* %168, i32 %171, i32 1, i32 %173, i32 %175, i32 %177, i32* %18)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %149
  %181 = load i32, i32* @MSG_INFO, align 4
  %182 = call i32 (i32, i8*, ...) @wpa_printf(i32 %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %183 = load i8*, i8** @FAILURE, align 8
  %184 = ptrtoint i8* %183 to i64
  %185 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %186 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  store i32 1, i32* %14, align 4
  br label %203

187:                                              ; preds = %149
  %188 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %11, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @EAP_SAKE_MIC_LEN, align 4
  %191 = call i64 @os_memcmp_const(i32 %189, i32* %18, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %187
  %194 = load i32, i32* @MSG_INFO, align 4
  %195 = call i32 (i32, i8*, ...) @wpa_printf(i32 %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %196 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %197 = load i8*, i8** @FAILURE, align 8
  %198 = call i32 @eap_sake_state(%struct.eap_sake_data* %196, i8* %197)
  store i32 1, i32* %14, align 4
  br label %203

199:                                              ; preds = %187
  %200 = load %struct.eap_sake_data*, %struct.eap_sake_data** %7, align 8
  %201 = load i8*, i8** @CONFIRM, align 8
  %202 = call i32 @eap_sake_state(%struct.eap_sake_data* %200, i8* %201)
  store i32 0, i32* %14, align 4
  br label %203

203:                                              ; preds = %199, %193, %180, %142, %102, %75, %41, %32, %24
  %204 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %14, align 4
  switch i32 %205, label %207 [
    i32 0, label %206
    i32 1, label %206
  ]

206:                                              ; preds = %203, %203
  ret void

207:                                              ; preds = %203
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @eap_sake_parse_attributes(i32*, i64, %struct.eap_sake_parse_attr*) #2

declare dso_local i32 @os_memcpy(i32, i32, i32) #2

declare dso_local i32 @os_free(i32*) #2

declare dso_local i32* @os_memdup(i64, i32) #2

declare dso_local i64 @eap_sake_derive_keys(i32*, i32*, i32, i32, i32*, i32, i32) #2

declare dso_local i64 @eap_sake_compute_mic(i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i64 @os_memcmp_const(i32, i32*, i32) #2

declare dso_local i32 @eap_sake_state(%struct.eap_sake_data*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
