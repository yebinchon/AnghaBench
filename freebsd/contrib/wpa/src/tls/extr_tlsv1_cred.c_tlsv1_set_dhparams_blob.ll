; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_cred.c_tlsv1_set_dhparams_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_cred.c_tlsv1_set_dhparams_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_credentials = type { i32 }

@pem_dhparams_begin = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"TLSv1: No PEM dhparams tag found - assume DER format\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"TLSv1: Converting PEM format dhparams into DER format\00", align 1
@pem_dhparams_end = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"TLSv1: Could not find PEM dhparams end tag (%s)\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"TLSv1: Could not decode PEM dhparams\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"TLSv1: Failed to parse PEM dhparams DER conversion\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_credentials*, i8*, i64)* @tlsv1_set_dhparams_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlsv1_set_dhparams_blob(%struct.tlsv1_credentials* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_credentials*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.tlsv1_credentials* %0, %struct.tlsv1_credentials** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @pem_dhparams_begin, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i8* @search_tag(i32 %12, i8* %13, i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @tlsv1_set_dhparams_der(%struct.tlsv1_credentials* %22, i8* %23, i64 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %80

27:                                               ; preds = %3
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @pem_dhparams_begin, align 4
  %31 = call i32 @os_strlen(i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %8, align 8
  %35 = load i32, i32* @pem_dhparams_end, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8*, i8** %8, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8* @search_tag(i32 %35, i8* %36, i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = load i32, i32* @pem_dhparams_end, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  store i32 -1, i32* %4, align 4
  br label %80

52:                                               ; preds = %27
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = call i8* @base64_decode(i8* %53, i32 %59, i64* %11)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %80

66:                                               ; preds = %52
  %67 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @tlsv1_set_dhparams_der(%struct.tlsv1_credentials* %67, i8* %68, i64 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32, i32* @MSG_INFO, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @os_free(i8* %75)
  store i32 -1, i32* %4, align 4
  br label %80

77:                                               ; preds = %66
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @os_free(i8* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %72, %63, %48, %19
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i8* @search_tag(i32, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @tlsv1_set_dhparams_der(%struct.tlsv1_credentials*, i8*, i64) #1

declare dso_local i32 @os_strlen(i32) #1

declare dso_local i8* @base64_decode(i8*, i32, i64*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
