; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_supported_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_supported_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_supported_groups = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@SSL_SECOP_CURVE_SUPPORTED = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_supported_groups(i32* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @use_ecc(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %20, i32* %6, align 4
  br label %92

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @tls1_get_supported_groups(i32* %22, i32** %12, i64* %13)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @TLSEXT_TYPE_supported_groups, align 4
  %26 = call i32 @WPACKET_put_bytes_u16(i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @WPACKET_start_sub_packet_u16(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @WPACKET_start_sub_packet_u16(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32, %28, %21
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %39 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS, align 4
  %40 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %41 = call i32 @SSLfatal(i32* %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %42, i32* %6, align 4
  br label %92

43:                                               ; preds = %32
  store i64 0, i64* %14, align 8
  br label %44

44:                                               ; preds = %72, %43
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %15, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @SSL_SECOP_CURVE_SUPPORTED, align 4
  %56 = call i64 @tls_curve_allowed(i32* %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %48
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @WPACKET_put_bytes_u16(i32* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %66 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS, align 4
  %67 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %68 = call i32 @SSLfatal(i32* %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %69, i32* %6, align 4
  br label %92

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %48
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %14, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %14, align 8
  br label %44

75:                                               ; preds = %44
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @WPACKET_close(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @WPACKET_close(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79, %75
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %86 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS, align 4
  %87 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %88 = call i32 @SSLfatal(i32* %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %89, i32* %6, align 4
  br label %92

90:                                               ; preds = %79
  %91 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %83, %63, %36, %19
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @use_ecc(i32*) #1

declare dso_local i32 @tls1_get_supported_groups(i32*, i32**, i64*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i64 @tls_curve_allowed(i32*, i32, i32) #1

declare dso_local i32 @WPACKET_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
