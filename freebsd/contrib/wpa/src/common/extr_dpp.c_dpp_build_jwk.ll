; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_jwk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_jwk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_curve_params = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\22:{\22kty\22:\22EC\22,\22crv\22:\22\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\22,\22x\22:\22\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\22,\22y\22:\22\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\22,\22kid\22:\22\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\22}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf*, i8*, i32*, i8*, %struct.dpp_curve_params*)* @dpp_build_jwk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_build_jwk(%struct.wpabuf* %0, i8* %1, i32* %2, i8* %3, %struct.dpp_curve_params* %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dpp_curve_params*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.dpp_curve_params* %4, %struct.dpp_curve_params** %10, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call %struct.wpabuf* @dpp_get_pubkey_point(i32* %16, i32 0)
  store %struct.wpabuf* %17, %struct.wpabuf** %11, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %19 = icmp ne %struct.wpabuf* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %82

21:                                               ; preds = %5
  %22 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %23 = call i32* @wpabuf_head(%struct.wpabuf* %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %10, align 8
  %26 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @base64_url_encode(i32* %24, i32 %27, i32* null, i32 0)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %13, align 8
  %30 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %10, align 8
  %31 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %10, align 8
  %38 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @base64_url_encode(i32* %36, i32 %39, i32* null, i32 0)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %21
  %45 = load i8*, i8** %14, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44, %21
  br label %82

48:                                               ; preds = %44
  %49 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %50 = call i32 @wpabuf_put_str(%struct.wpabuf* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @wpabuf_put_str(%struct.wpabuf* %51, i8* %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %55 = call i32 @wpabuf_put_str(%struct.wpabuf* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %57 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %10, align 8
  %58 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @wpabuf_put_str(%struct.wpabuf* %56, i8* %59)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %62 = call i32 @wpabuf_put_str(%struct.wpabuf* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @wpabuf_put_str(%struct.wpabuf* %63, i8* %64)
  %66 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %67 = call i32 @wpabuf_put_str(%struct.wpabuf* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @wpabuf_put_str(%struct.wpabuf* %68, i8* %69)
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %48
  %74 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %75 = call i32 @wpabuf_put_str(%struct.wpabuf* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @wpabuf_put_str(%struct.wpabuf* %76, i8* %77)
  br label %79

79:                                               ; preds = %73, %48
  %80 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %81 = call i32 @wpabuf_put_str(%struct.wpabuf* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %79, %47, %20
  %83 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %84 = call i32 @wpabuf_free(%struct.wpabuf* %83)
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 @os_free(i8* %85)
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 @os_free(i8* %87)
  %89 = load i32, i32* %15, align 4
  ret i32 %89
}

declare dso_local %struct.wpabuf* @dpp_get_pubkey_point(i32*, i32) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @base64_url_encode(i32*, i32, i32*, i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
