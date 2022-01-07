; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_service_instance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_service_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i32 }
%struct.p2ps_advertisement = type { i32, i32, i32, i32, %struct.p2ps_advertisement* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"P2PS: Probe Request service hash values\00", align 1
@P2PS_HASH_LEN = common dso_local global i64 0, align 8
@MAX_SVC_ADV_IE_LEN = common dso_local global i64 0, align 8
@P2P_ATTR_ADVERTISED_SERVICE = common dso_local global i32 0, align 4
@P2PS_WILD_HASH_STR = common dso_local global i32 0, align 4
@MAX_SVC_ADV_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_buf_add_service_instance(%struct.wpabuf* %0, %struct.p2p_data* %1, i64 %2, i64* %3, %struct.p2ps_advertisement* %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.p2p_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.p2ps_advertisement*, align 8
  %11 = alloca %struct.p2ps_advertisement*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %6, align 8
  store %struct.p2p_data* %1, %struct.p2p_data** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.p2ps_advertisement* %4, %struct.p2ps_advertisement** %10, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  store i64* null, i64** %17, align 8
  %20 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %10, align 8
  %21 = icmp ne %struct.p2ps_advertisement* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i64*, i64** %9, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %22, %5
  br label %144

29:                                               ; preds = %25
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @P2PS_HASH_LEN, align 8
  %34 = mul nsw i64 %32, %33
  %35 = call i32 @wpa_hexdump(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64* %31, i64 %34)
  %36 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @p2ps_wildcard_hash(%struct.p2p_data* %36, i64* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %43 = call i64 @p2p_wfa_service_adv(%struct.p2p_data* %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %41, %29
  %46 = phi i1 [ false, %29 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i64, i64* @MAX_SVC_ADV_IE_LEN, align 8
  %49 = add nsw i64 %48, 256
  %50 = load i64, i64* @P2PS_HASH_LEN, align 8
  %51 = add nsw i64 %49, %50
  %52 = call %struct.wpabuf* @wpabuf_alloc(i64 %51)
  store %struct.wpabuf* %52, %struct.wpabuf** %14, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %54 = icmp ne %struct.wpabuf* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %144

56:                                               ; preds = %45
  %57 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %58 = call i64* @p2p_buf_add_ie_hdr(%struct.wpabuf* %57)
  store i64* %58, i64** %17, align 8
  store i64 0, i64* %13, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %60 = load i32, i32* @P2P_ATTR_ADVERTISED_SERVICE, align 4
  %61 = call i32 @wpabuf_put_u8(%struct.wpabuf* %59, i32 %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %63 = call i64* @wpabuf_put(%struct.wpabuf* %62, i32 4)
  store i64* %63, i64** %16, align 8
  %64 = load i64*, i64** %16, align 8
  %65 = load i64, i64* %13, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @WPA_PUT_LE16(i64* %64, i32 %66)
  %68 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %69 = load i64*, i64** %17, align 8
  %70 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %68, i64* %69)
  %71 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %72 = call i64* @wpabuf_put(%struct.wpabuf* %71, i32 0)
  store i64* %72, i64** %15, align 8
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %56
  %76 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %77 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %78 = load i32, i32* @P2PS_WILD_HASH_STR, align 4
  %79 = load i64*, i64** %16, align 8
  %80 = call i64 @p2p_buf_add_service_info(%struct.wpabuf* %76, %struct.p2p_data* %77, i32 0, i32 0, i32 %78, i64** %17, i64** %15, i64* %13, i64* %79)
  br label %81

81:                                               ; preds = %75, %56
  %82 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %10, align 8
  store %struct.p2ps_advertisement* %82, %struct.p2ps_advertisement** %11, align 8
  br label %83

83:                                               ; preds = %130, %81
  %84 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %85 = icmp ne %struct.p2ps_advertisement* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* @MAX_SVC_ADV_LEN, align 8
  %89 = icmp ule i64 %87, %88
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %134

92:                                               ; preds = %90
  %93 = load i64*, i64** %9, align 8
  store i64* %93, i64** %18, align 8
  store i64 0, i64* %19, align 8
  br label %94

94:                                               ; preds = %126, %92
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %129

98:                                               ; preds = %94
  %99 = load i64*, i64** %18, align 8
  %100 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %101 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* @P2PS_HASH_LEN, align 8
  %104 = call i64 @os_memcmp(i64* %99, i32 %102, i64 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %98
  %107 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %108 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %109 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %110 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %113 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %116 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i64*, i64** %16, align 8
  %119 = call i64 @p2p_buf_add_service_info(%struct.wpabuf* %107, %struct.p2p_data* %108, i32 %111, i32 %114, i32 %117, i64** %17, i64** %15, i64* %13, i64* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %106
  br label %129

122:                                              ; preds = %106, %98
  %123 = load i64, i64* @P2PS_HASH_LEN, align 8
  %124 = load i64*, i64** %18, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 %123
  store i64* %125, i64** %18, align 8
  br label %126

126:                                              ; preds = %122
  %127 = load i64, i64* %19, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %19, align 8
  br label %94

129:                                              ; preds = %121, %94
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %11, align 8
  %132 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %131, i32 0, i32 4
  %133 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %132, align 8
  store %struct.p2ps_advertisement* %133, %struct.p2ps_advertisement** %11, align 8
  br label %83

134:                                              ; preds = %90
  %135 = load i64, i64* %13, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %139 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %140 = call i32 @wpabuf_put_buf(%struct.wpabuf* %138, %struct.wpabuf* %139)
  br label %141

141:                                              ; preds = %137, %134
  %142 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %143 = call i32 @wpabuf_free(%struct.wpabuf* %142)
  br label %144

144:                                              ; preds = %141, %55, %28
  ret void
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i64 @p2ps_wildcard_hash(%struct.p2p_data*, i64*, i64) #1

declare dso_local i64 @p2p_wfa_service_adv(%struct.p2p_data*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i64* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @WPA_PUT_LE16(i64*, i32) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i64*) #1

declare dso_local i64 @p2p_buf_add_service_info(%struct.wpabuf*, %struct.p2p_data*, i32, i32, i32, i64**, i64**, i64*, i64*) #1

declare dso_local i64 @os_memcmp(i64*, i32, i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
