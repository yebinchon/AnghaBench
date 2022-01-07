; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_keygen_configurator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_keygen_configurator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_configurator = type { i32, i8*, i32, i32* }
%struct.wpabuf = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@dpp_curves = common dso_local global i32* null, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DPP: Unsupported curve: %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"DPP: Failed to extract C-sign-key\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"DPP: Failed to derive kid for C-sign-key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpp_configurator* @dpp_keygen_configurator(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.dpp_configurator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dpp_configurator*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [1 x i32*], align 8
  %13 = alloca [1 x i64], align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  %15 = load i32, i32* @SHA256_MAC_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = call %struct.dpp_configurator* @os_zalloc(i32 32)
  store %struct.dpp_configurator* %19, %struct.dpp_configurator** %8, align 8
  %20 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %21 = icmp ne %struct.dpp_configurator* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.dpp_configurator* null, %struct.dpp_configurator** %4, align 8
  store i32 1, i32* %14, align 4
  br label %117

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** @dpp_curves, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %30 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  br label %47

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = call i32* @dpp_get_curve_name(i8* %32)
  %34 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %35 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %37 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %45 = call i32 @os_free(%struct.dpp_configurator* %44)
  store %struct.dpp_configurator* null, %struct.dpp_configurator** %4, align 8
  store i32 1, i32* %14, align 4
  br label %117

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %26
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %52 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %51, i32 0, i32 3
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @dpp_set_keypair(i32** %52, i32* %53, i64 %54)
  %56 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %57 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %65

58:                                               ; preds = %47
  %59 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %60 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @dpp_gen_keypair(i32* %61)
  %63 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %64 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %58, %50
  %66 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %67 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %114

71:                                               ; preds = %65
  %72 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %73 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %75 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %76, i32 1)
  store %struct.wpabuf* %77, %struct.wpabuf** %9, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %79 = icmp ne %struct.wpabuf* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* @MSG_INFO, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %114

83:                                               ; preds = %71
  %84 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %85 = call i32* @wpabuf_head(%struct.wpabuf* %84)
  %86 = getelementptr inbounds [1 x i32*], [1 x i32*]* %12, i64 0, i64 0
  store i32* %85, i32** %86, align 8
  %87 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %88 = call i64 @wpabuf_len(%struct.wpabuf* %87)
  %89 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds [1 x i32*], [1 x i32*]* %12, i64 0, i64 0
  %91 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  %92 = call i64 @sha256_vector(i32 1, i32** %90, i64* %91, i32* %18)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %114

97:                                               ; preds = %83
  %98 = mul nuw i64 4, %16
  %99 = trunc i64 %98 to i32
  %100 = call i64 @base64_url_encode(i32* %18, i32 %99, i32* null, i32 0)
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %103 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %105 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %97
  br label %114

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %114, %109
  %111 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %112 = call i32 @wpabuf_free(%struct.wpabuf* %111)
  %113 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  store %struct.dpp_configurator* %113, %struct.dpp_configurator** %4, align 8
  store i32 1, i32* %14, align 4
  br label %117

114:                                              ; preds = %108, %94, %80, %70
  %115 = load %struct.dpp_configurator*, %struct.dpp_configurator** %8, align 8
  %116 = call i32 @dpp_configurator_free(%struct.dpp_configurator* %115)
  store %struct.dpp_configurator* null, %struct.dpp_configurator** %8, align 8
  br label %110

117:                                              ; preds = %110, %40, %22
  %118 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load %struct.dpp_configurator*, %struct.dpp_configurator** %4, align 8
  ret %struct.dpp_configurator* %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.dpp_configurator* @os_zalloc(i32) #2

declare dso_local i32* @dpp_get_curve_name(i8*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @os_free(%struct.dpp_configurator*) #2

declare dso_local i32 @dpp_set_keypair(i32**, i32*, i64) #2

declare dso_local i32 @dpp_gen_keypair(i32*) #2

declare dso_local %struct.wpabuf* @dpp_get_pubkey_point(i32, i32) #2

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i64 @sha256_vector(i32, i32**, i64*, i32*) #2

declare dso_local i64 @base64_url_encode(i32*, i32, i32*, i32) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i32 @dpp_configurator_free(%struct.dpp_configurator*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
