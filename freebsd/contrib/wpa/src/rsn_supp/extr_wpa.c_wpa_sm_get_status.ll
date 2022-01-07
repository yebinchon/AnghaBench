; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.wpa_ie_data = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"pairwise_cipher=%s\0Agroup_cipher=%s\0Akey_mgmt=%s\0A\00", align 1
@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@WPA_CAPABILITY_MFPR = common dso_local global i32 0, align 4
@WPA_CAPABILITY_MFPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"pmf=%d\0Amgmt_group_cipher=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_sm_get_status(%struct.wpa_sm* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpa_ie_data, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %26 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wpa_cipher_txt(i32 %27)
  %29 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %30 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @wpa_cipher_txt(i32 %31)
  %33 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %34 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %37 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @wpa_key_mgmt_txt(i32 %35, i32 %38)
  %40 = call i32 (i8*, i32, i8*, i32, i32, ...) @os_snprintf(i8* %18, i32 %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @os_snprintf_error(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %4
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %138

57:                                               ; preds = %4
  %58 = load i32, i32* %12, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %10, align 8
  %62 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %63 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NO_MGMT_FRAME_PROTECTION, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %131

67:                                               ; preds = %57
  %68 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %69 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %131

72:                                               ; preds = %67
  %73 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %74 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %77 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @wpa_parse_wpa_ie_rsn(i64 %75, i32 %78, %struct.wpa_ie_data* %13)
  %80 = icmp sge i64 %79, 0
  br i1 %80, label %81, label %130

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %13, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @WPA_CAPABILITY_MFPR, align 4
  %85 = load i32, i32* @WPA_CAPABILITY_MFPC, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %81
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %13, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @WPA_CAPABILITY_MFPR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 2, i32 1
  %104 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %105 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @wpa_cipher_txt(i32 %106)
  %108 = call i32 (i8*, i32, i8*, i32, i32, ...) @os_snprintf(i8* %90, i32 %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* %12, align 4
  %116 = call i64 @os_snprintf_error(i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %89
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %5, align 4
  br label %138

125:                                              ; preds = %89
  %126 = load i32, i32* %12, align 4
  %127 = load i8*, i8** %10, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %10, align 8
  br label %130

130:                                              ; preds = %125, %81, %72
  br label %131

131:                                              ; preds = %130, %67, %57
  %132 = load i8*, i8** %10, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %131, %118, %50
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @wpa_cipher_txt(i32) #1

declare dso_local i32 @wpa_key_mgmt_txt(i32, i32) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i64 @wpa_parse_wpa_ie_rsn(i64, i32, %struct.wpa_ie_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
