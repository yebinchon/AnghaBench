; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sake.c_eap_sake_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sake.c_eap_sake_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i64, i8*, i8*, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sake_data = type { i32, i64 }
%struct.eap_sake_hdr = type { i64, i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_SAKE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"EAP-SAKE: Received frame: subtype %d session_id %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"EAP-SAKE: Received attributes\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-SAKE: Session ID mismatch (%d,%d)\00", align 1
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i64 0, align 8
@DECISION_FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"EAP-SAKE: Ignoring message with unknown subtype %d\00", align 1
@METHOD_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_sake_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sake_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_sake_data*, align 8
  %11 = alloca %struct.eap_sake_hdr*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.eap_sake_data*
  store %struct.eap_sake_data* %20, %struct.eap_sake_data** %10, align 8
  %21 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %22 = load i32, i32* @EAP_TYPE_SAKE, align 4
  %23 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %24 = call i64* @eap_hdr_validate(i32 %21, i32 %22, %struct.wpabuf* %23, i64* %15)
  store i64* %24, i64** %13, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i64, i64* %15, align 8
  %29 = icmp ult i64 %28, 16
  br i1 %29, label %30, label %34

30:                                               ; preds = %27, %4
  %31 = load i8*, i8** @TRUE, align 8
  %32 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %33 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %166

34:                                               ; preds = %27
  %35 = load i64*, i64** %13, align 8
  %36 = bitcast i64* %35 to %struct.eap_sake_hdr*
  store %struct.eap_sake_hdr* %36, %struct.eap_sake_hdr** %11, align 8
  %37 = load i64*, i64** %13, align 8
  %38 = load i64, i64* %15, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64* %39, i64** %14, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %41 = call i64 @eap_get_id(%struct.wpabuf* %40)
  store i64 %41, i64* %18, align 8
  %42 = load %struct.eap_sake_hdr*, %struct.eap_sake_hdr** %11, align 8
  %43 = getelementptr inbounds %struct.eap_sake_hdr, %struct.eap_sake_hdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %16, align 8
  %45 = load %struct.eap_sake_hdr*, %struct.eap_sake_hdr** %11, align 8
  %46 = getelementptr inbounds %struct.eap_sake_hdr, %struct.eap_sake_hdr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %17, align 8
  %48 = load %struct.eap_sake_hdr*, %struct.eap_sake_hdr** %11, align 8
  %49 = getelementptr inbounds %struct.eap_sake_hdr, %struct.eap_sake_hdr* %48, i64 1
  %50 = bitcast %struct.eap_sake_hdr* %49 to i64*
  store i64* %50, i64** %13, align 8
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %17, align 8
  %54 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %53)
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load i64*, i64** %13, align 8
  %57 = load i64*, i64** %14, align 8
  %58 = load i64*, i64** %13, align 8
  %59 = ptrtoint i64* %57 to i64
  %60 = ptrtoint i64* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @wpa_hexdump(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64* %56, i32 %63)
  %65 = load %struct.eap_sake_data*, %struct.eap_sake_data** %10, align 8
  %66 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %34
  %70 = load %struct.eap_sake_data*, %struct.eap_sake_data** %10, align 8
  %71 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %17, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load i32, i32* @MSG_INFO, align 4
  %77 = load i64, i64* %17, align 8
  %78 = load %struct.eap_sake_data*, %struct.eap_sake_data** %10, align 8
  %79 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %77, i64 %80)
  %82 = load i8*, i8** @TRUE, align 8
  %83 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %84 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %166

85:                                               ; preds = %69, %34
  %86 = load i64, i64* %17, align 8
  %87 = load %struct.eap_sake_data*, %struct.eap_sake_data** %10, align 8
  %88 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.eap_sake_data*, %struct.eap_sake_data** %10, align 8
  %90 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i8*, i8** @FALSE, align 8
  %92 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %93 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i64, i64* @METHOD_MAY_CONT, align 8
  %95 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %96 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* @DECISION_FAIL, align 4
  %98 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %99 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load i8*, i8** @TRUE, align 8
  %101 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %102 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i64, i64* %16, align 8
  switch i64 %103, label %147 [
    i64 128, label %104
    i64 130, label %118
    i64 129, label %132
  ]

104:                                              ; preds = %85
  %105 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %106 = load %struct.eap_sake_data*, %struct.eap_sake_data** %10, align 8
  %107 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %108 = load i64, i64* %18, align 8
  %109 = load i64*, i64** %13, align 8
  %110 = load i64*, i64** %14, align 8
  %111 = load i64*, i64** %13, align 8
  %112 = ptrtoint i64* %110 to i64
  %113 = ptrtoint i64* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 8
  %116 = trunc i64 %115 to i32
  %117 = call %struct.wpabuf* @eap_sake_process_identity(%struct.eap_sm* %105, %struct.eap_sake_data* %106, %struct.eap_method_ret* %107, i64 %108, i64* %109, i32 %116)
  store %struct.wpabuf* %117, %struct.wpabuf** %12, align 8
  br label %154

118:                                              ; preds = %85
  %119 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %120 = load %struct.eap_sake_data*, %struct.eap_sake_data** %10, align 8
  %121 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %122 = load i64, i64* %18, align 8
  %123 = load i64*, i64** %13, align 8
  %124 = load i64*, i64** %14, align 8
  %125 = load i64*, i64** %13, align 8
  %126 = ptrtoint i64* %124 to i64
  %127 = ptrtoint i64* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 8
  %130 = trunc i64 %129 to i32
  %131 = call %struct.wpabuf* @eap_sake_process_challenge(%struct.eap_sm* %119, %struct.eap_sake_data* %120, %struct.eap_method_ret* %121, i64 %122, i64* %123, i32 %130)
  store %struct.wpabuf* %131, %struct.wpabuf** %12, align 8
  br label %154

132:                                              ; preds = %85
  %133 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %134 = load %struct.eap_sake_data*, %struct.eap_sake_data** %10, align 8
  %135 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %136 = load i64, i64* %18, align 8
  %137 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %138 = load i64*, i64** %13, align 8
  %139 = load i64*, i64** %14, align 8
  %140 = load i64*, i64** %13, align 8
  %141 = ptrtoint i64* %139 to i64
  %142 = ptrtoint i64* %140 to i64
  %143 = sub i64 %141, %142
  %144 = sdiv exact i64 %143, 8
  %145 = trunc i64 %144 to i32
  %146 = call %struct.wpabuf* @eap_sake_process_confirm(%struct.eap_sm* %133, %struct.eap_sake_data* %134, %struct.eap_method_ret* %135, i64 %136, %struct.wpabuf* %137, i64* %138, i32 %145)
  store %struct.wpabuf* %146, %struct.wpabuf** %12, align 8
  br label %154

147:                                              ; preds = %85
  %148 = load i32, i32* @MSG_DEBUG, align 4
  %149 = load i64, i64* %16, align 8
  %150 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %148, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %149)
  %151 = load i8*, i8** @TRUE, align 8
  %152 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %153 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %166

154:                                              ; preds = %132, %118, %104
  %155 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %156 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @METHOD_DONE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i8*, i8** @FALSE, align 8
  %162 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %163 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %160, %154
  %165 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %165, %struct.wpabuf** %5, align 8
  br label %166

166:                                              ; preds = %164, %147, %75, %30
  %167 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %167
}

declare dso_local i64* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i64 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #1

declare dso_local %struct.wpabuf* @eap_sake_process_identity(%struct.eap_sm*, %struct.eap_sake_data*, %struct.eap_method_ret*, i64, i64*, i32) #1

declare dso_local %struct.wpabuf* @eap_sake_process_challenge(%struct.eap_sm*, %struct.eap_sake_data*, %struct.eap_method_ret*, i64, i64*, i32) #1

declare dso_local %struct.wpabuf* @eap_sake_process_confirm(%struct.eap_sm*, %struct.eap_sake_data*, %struct.eap_method_ret*, i64, %struct.wpabuf*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
