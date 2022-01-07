; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_debug_dump_certificates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_debug_dump_certificates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509 = common dso_local global i32 0, align 4
@certs = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"OpenSSL: Configured certificate chain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @openssl_debug_dump_certificates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openssl_debug_dump_certificates(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @X509, align 4
  %5 = call i32 @STACK_OF(i32 %4)
  %6 = load i32, i32* @certs, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @SSL_CTX_get0_chain_certs(i32* %10, i32* @certs)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i32, i32* @certs, align 4
  %15 = call i32 @sk_X509_num(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %26, %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @certs, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @sk_X509_value(i32 %21, i32 %23)
  %25 = call i32 @openssl_debug_dump_certificate(i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %3, align 4
  br label %16

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @SSL_CTX_get0_certificate(i32* %31)
  %33 = call i32 @openssl_debug_dump_certificate(i32 0, i32 %32)
  ret void
}

declare dso_local i32 @STACK_OF(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @SSL_CTX_get0_chain_certs(i32*, i32*) #1

declare dso_local i32 @sk_X509_num(i32) #1

declare dso_local i32 @openssl_debug_dump_certificate(i32, i32) #1

declare dso_local i32 @sk_X509_value(i32, i32) #1

declare dso_local i32 @SSL_CTX_get0_certificate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
