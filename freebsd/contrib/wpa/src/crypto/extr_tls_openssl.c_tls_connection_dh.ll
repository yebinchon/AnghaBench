; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_dh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_connection*, i8*)* @tls_connection_dh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_connection_dh(%struct.tls_connection* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tls_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

12:                                               ; preds = %2
  %13 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %14 = icmp eq %struct.tls_connection* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %97

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @BIO_new_file(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 (...) @ERR_get_error()
  %25 = call i32 @ERR_error_string(i32 %24, i32* null)
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %25)
  store i32 -1, i32* %3, align 4
  br label %97

27:                                               ; preds = %16
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @PEM_read_bio_DHparams(i32* %28, i32* null, i32* null, i32* null)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @BIO_free(i32* %30)
  br label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %72

35:                                               ; preds = %32
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (...) @ERR_get_error()
  %39 = call i32 @ERR_error_string(i32 %38, i32* null)
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32* @BIO_new_file(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %72

46:                                               ; preds = %35
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @PEM_read_bio_DSAparams(i32* %47, i32* null, i32* null, i32* null)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @BIO_free(i32* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (...) @ERR_get_error()
  %57 = call i32 @ERR_error_string(i32 %56, i32* null)
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %57)
  br label %72

59:                                               ; preds = %46
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32*, i32** %8, align 8
  %63 = call i32* @DSA_dup_DH(i32* %62)
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @DSA_free(i32* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @MSG_INFO, align 4
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %72

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %68, %53, %45, %32
  %73 = load i32*, i32** %6, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* @MSG_INFO, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  store i32 -1, i32* %3, align 4
  br label %97

79:                                               ; preds = %72
  %80 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %81 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @SSL_set_tmp_dh(i32 %82, i32* %83)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load i32, i32* @MSG_INFO, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 (...) @ERR_get_error()
  %90 = call i32 @ERR_error_string(i32 %89, i32* null)
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %88, i32 %90)
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @DH_free(i32* %92)
  store i32 -1, i32* %3, align 4
  br label %97

94:                                               ; preds = %79
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @DH_free(i32* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %86, %75, %21, %15, %11
  %98 = load i32, i32* %3, align 4
  ret i32 %98
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

declare dso_local i32 @SSL_set_tmp_dh(i32, i32*) #1

declare dso_local i32 @DH_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
