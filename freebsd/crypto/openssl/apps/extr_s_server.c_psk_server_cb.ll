; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_psk_server_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_psk_server_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_debug = common dso_local global i64 0, align 8
@bio_s_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"psk_server_cb\0A\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error: client did not send PSK identity\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"identity_len=%d identity=%s\0A\00", align 1
@psk_identity = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"PSK warning: client identity not what we expected (got '%s' expected '%s')\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"PSK client identity found\0A\00", align 1
@psk_key = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Could not convert PSK key '%s' to buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"psk buffer of callback is too small (%d) for key (%ld)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"fetched PSK len=%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Error in PSK server callback\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32)* @psk_server_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psk_server_cb(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* @s_debug, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @bio_s_out, align 4
  %16 = call i32 (i32, i8*, ...) @BIO_printf(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %4
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @bio_err, align 4
  %22 = call i32 (i32, i8*, ...) @BIO_printf(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %87

23:                                               ; preds = %17
  %24 = load i64, i64* @s_debug, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* @bio_s_out, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = trunc i64 %29 to i32
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i32, i8*, ...) @BIO_printf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @psk_identity, align 4
  %36 = call i64 @strcmp(i8* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @bio_s_out, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @psk_identity, align 4
  %42 = call i32 (i32, i8*, ...) @BIO_printf(i32 %39, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 %41)
  br label %50

43:                                               ; preds = %33
  %44 = load i64, i64* @s_debug, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @bio_s_out, align 4
  %48 = call i32 (i32, i8*, ...) @BIO_printf(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32, i32* @psk_key, align 4
  %52 = call i8* @OPENSSL_hexstr2buf(i32 %51, i64* %10)
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @bio_err, align 4
  %57 = load i32, i32* @psk_key, align 4
  %58 = call i32 (i32, i8*, ...) @BIO_printf(i32 %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  store i32 0, i32* %5, align 4
  br label %98

59:                                               ; preds = %50
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp sgt i64 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* @bio_err, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i64, i64* %10, align 8
  %68 = call i32 (i32, i8*, ...) @BIO_printf(i32 %65, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %66, i64 %67)
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @OPENSSL_free(i8* %69)
  store i32 0, i32* %5, align 4
  br label %98

71:                                               ; preds = %59
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @memcpy(i8* %72, i8* %73, i64 %74)
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @OPENSSL_free(i8* %76)
  %78 = load i64, i64* @s_debug, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @bio_s_out, align 4
  %82 = load i64, i64* %10, align 8
  %83 = call i32 (i32, i8*, ...) @BIO_printf(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %80, %71
  %85 = load i64, i64* %10, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %98

87:                                               ; preds = %20
  %88 = load i64, i64* @s_debug, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @bio_err, align 4
  %92 = call i32 (i32, i8*, ...) @BIO_printf(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* @bio_err, align 4
  %95 = call i32 @BIO_flush(i32 %94)
  %96 = load i32, i32* @bio_s_out, align 4
  %97 = call i32 @BIO_flush(i32 %96)
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %93, %84, %64, %55
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i32, i64*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @BIO_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
