; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_global_dh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_global_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_data = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"TLS: Failed to open DH file '%s': %s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"TLS: Failed to parse DH file '%s': %s - trying to parse as DSA params\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"TLS: Failed to parse DSA file '%s': %s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"TLS: DH file in DSA param format\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"TLS: Failed to convert DSA params into DH params\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"TLS: Failed to read/parse DH/DSA file '%s'\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"TLS: Failed to set DH params from '%s': %s\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_data*, i8*)* @tls_global_dh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_global_dh(%struct.tls_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tls_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.tls_data* %0, %struct.tls_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.tls_data*, %struct.tls_data** %4, align 8
  %11 = getelementptr inbounds %struct.tls_data, %struct.tls_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %99

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = call i32* @BIO_new_file(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (...) @ERR_get_error()
  %29 = call i32 @ERR_error_string(i32 %28, i32* null)
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %29)
  store i32 -1, i32* %3, align 4
  br label %99

31:                                               ; preds = %20
  %32 = load i32*, i32** %8, align 8
  %33 = call i32* @PEM_read_bio_DHparams(i32* %32, i32* null, i32* null, i32* null)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @BIO_free(i32* %34)
  br label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %7, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (...) @ERR_get_error()
  %43 = call i32 @ERR_error_string(i32 %42, i32* null)
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %41, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i32* @BIO_new_file(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %76

50:                                               ; preds = %39
  %51 = load i32*, i32** %8, align 8
  %52 = call i32* @PEM_read_bio_DSAparams(i32* %51, i32* null, i32* null, i32* null)
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @BIO_free(i32* %53)
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 (...) @ERR_get_error()
  %61 = call i32 @ERR_error_string(i32 %60, i32* null)
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %59, i32 %61)
  br label %76

63:                                               ; preds = %50
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32*, i32** %9, align 8
  %67 = call i32* @DSA_dup_DH(i32* %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @DSA_free(i32* %68)
  %70 = load i32*, i32** %7, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @MSG_INFO, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %76

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %72, %57, %49, %36
  %77 = load i32*, i32** %7, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @MSG_INFO, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %81)
  store i32 -1, i32* %3, align 4
  br label %99

83:                                               ; preds = %76
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @SSL_CTX_set_tmp_dh(i32* %84, i32* %85)
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i32, i32* @MSG_INFO, align 4
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 (...) @ERR_get_error()
  %92 = call i32 @ERR_error_string(i32 %91, i32* null)
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %90, i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @DH_free(i32* %94)
  store i32 -1, i32* %3, align 4
  br label %99

96:                                               ; preds = %83
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @DH_free(i32* %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %88, %79, %25, %19, %15
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32* @PEM_read_bio_DHparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32* @PEM_read_bio_DSAparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @DSA_dup_DH(i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32 @SSL_CTX_set_tmp_dh(i32*, i32*) #1

declare dso_local i32 @DH_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
