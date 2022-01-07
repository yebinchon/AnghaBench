; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_keygen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_keygen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_bootstrap_info = type { i32, i32, i32, i32* }
%struct.wpabuf = type { i32 }

@dpp_curves = common dso_local global i32* null, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DPP: Unsupported curve: %s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"DPP: Compressed public key (DER)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DPP: Failed to hash public key\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"DPP: Public key hash\00", align 1
@SHA256_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dpp_keygen(%struct.dpp_bootstrap_info* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dpp_bootstrap_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca [1 x i32*], align 8
  %16 = alloca i32, align 4
  store %struct.dpp_bootstrap_info* %0, %struct.dpp_bootstrap_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** @dpp_curves, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %23 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %22, i32 0, i32 3
  store i32* %21, i32** %23, align 8
  br label %38

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32* @dpp_get_curve_name(i8* %25)
  %27 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %28 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %30 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i8* null, i8** %5, align 8
  br label %137

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %43 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %42, i32 0, i32 3
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @dpp_set_keypair(i32** %43, i32* %44, i64 %45)
  %47 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %48 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %56

49:                                               ; preds = %38
  %50 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %51 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @dpp_gen_keypair(i32* %52)
  %54 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %55 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %41
  %57 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %58 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %132

62:                                               ; preds = %56
  %63 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %64 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %66 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.wpabuf* @dpp_bootstrap_key_der(i32 %67)
  store %struct.wpabuf* %68, %struct.wpabuf** %14, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %70 = icmp ne %struct.wpabuf* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %132

72:                                               ; preds = %62
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %75 = call i32 @wpa_hexdump_buf(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.wpabuf* %74)
  %76 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %77 = call i32* @wpabuf_head(%struct.wpabuf* %76)
  %78 = getelementptr inbounds [1 x i32*], [1 x i32*]* %15, i64 0, i64 0
  store i32* %77, i32** %78, align 8
  %79 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %80 = call i64 @wpabuf_len(%struct.wpabuf* %79)
  store i64 %80, i64* %13, align 8
  %81 = getelementptr inbounds [1 x i32*], [1 x i32*]* %15, i64 0, i64 0
  %82 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %83 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @sha256_vector(i32 1, i32** %81, i64* %13, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %72
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %132

91:                                               ; preds = %72
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %6, align 8
  %94 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SHA256_MAC_LEN, align 4
  %97 = call i32 @wpa_hexdump(i32 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %99 = call i32* @wpabuf_head(%struct.wpabuf* %98)
  %100 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %101 = call i64 @wpabuf_len(%struct.wpabuf* %100)
  %102 = call i8* @base64_encode(i32* %99, i64 %101, i64* %13)
  store i8* %102, i8** %10, align 8
  %103 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %104 = call i32 @wpabuf_free(%struct.wpabuf* %103)
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %91
  br label %132

108:                                              ; preds = %91
  %109 = load i8*, i8** %10, align 8
  store i8* %109, i8** %11, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %12, align 8
  br label %113

113:                                              ; preds = %119, %108
  %114 = load i8*, i8** %11, align 8
  %115 = call i8* @os_strchr(i8* %114, i8 signext 10)
  store i8* %115, i8** %11, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  br label %130

119:                                              ; preds = %113
  %120 = load i8*, i8** %11, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = call i32 @os_memmove(i8* %120, i8* %122, i32 %128)
  br label %113

130:                                              ; preds = %118
  %131 = load i8*, i8** %10, align 8
  store i8* %131, i8** %5, align 8
  br label %137

132:                                              ; preds = %107, %88, %71, %61
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @os_free(i8* %133)
  %135 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %136 = call i32 @wpabuf_free(%struct.wpabuf* %135)
  store i8* null, i8** %5, align 8
  br label %137

137:                                              ; preds = %132, %130, %33
  %138 = load i8*, i8** %5, align 8
  ret i8* %138
}

declare dso_local i32* @dpp_get_curve_name(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @dpp_set_keypair(i32**, i32*, i64) #1

declare dso_local i32 @dpp_gen_keypair(i32*) #1

declare dso_local %struct.wpabuf* @dpp_bootstrap_key_der(i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @sha256_vector(i32, i32**, i64*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i8* @base64_encode(i32*, i64, i64*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @os_memmove(i8*, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
