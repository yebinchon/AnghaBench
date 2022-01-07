; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_cred.c_tlsv1_set_ca_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_cred.c_tlsv1_set_ca_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_credentials = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"hash://\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"server/sha256/\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"TLSv1: Unsupported ca_cert hash value '%s'\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"TLSv1: Unexpected SHA256 hash length in ca_cert '%s'\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"TLSv1: Invalid SHA256 hash value in ca_cert '%s'\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"TLSv1: Checking only server certificate match\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"probe://\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"TLSv1: Only probe server certificate\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"TLSv1: Use of CA certificate directory not yet supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_set_ca_cert(%struct.tlsv1_credentials* %0, i8* %1, i32* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlsv1_credentials*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.tlsv1_credentials* %0, %struct.tlsv1_credentials** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %57

15:                                               ; preds = %5
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @os_strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 7
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i64 @os_strncmp(i8* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 14)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  store i32 -1, i32* %6, align 4
  br label %100

29:                                               ; preds = %19
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 14
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @os_strlen(i8* %32)
  %34 = icmp ne i32 %33, 64
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  store i32 -1, i32* %6, align 4
  br label %100

39:                                               ; preds = %29
  %40 = load i8*, i8** %12, align 8
  %41 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %7, align 8
  %42 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @hexstr2bin(i8* %40, i32 %43, i32 32)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  store i32 -1, i32* %6, align 4
  br label %100

50:                                               ; preds = %39
  %51 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %7, align 8
  %52 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %7, align 8
  %54 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %53, i32 0, i32 3
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %100

57:                                               ; preds = %15, %5
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = call i64 @os_strncmp(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %7, align 8
  %66 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %7, align 8
  %68 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %67, i32 0, i32 3
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %100

71:                                               ; preds = %60, %57
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ne i8* %78, null
  br label %80

80:                                               ; preds = %77, %74, %71
  %81 = phi i1 [ true, %74 ], [ true, %71 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  %83 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %7, align 8
  %84 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %7, align 8
  %86 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %85, i32 0, i32 2
  %87 = load i8*, i8** %8, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @tlsv1_set_cert_chain(i32* %86, i8* %87, i32* %88, i64 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  store i32 -1, i32* %6, align 4
  br label %100

93:                                               ; preds = %80
  %94 = load i8*, i8** %11, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @MSG_INFO, align 4
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %100

99:                                               ; preds = %93
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %96, %92, %64, %50, %46, %35, %25
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i32) #1

declare dso_local i64 @tlsv1_set_cert_chain(i32*, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
