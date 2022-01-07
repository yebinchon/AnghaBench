; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_debug_dump_certificate_chains.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_openssl_debug_dump_certificate_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_CERT_SET_FIRST = common dso_local global i32 0, align 4
@SSL_CERT_SET_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @openssl_debug_dump_certificate_chains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openssl_debug_dump_certificate_chains(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @SSL_CERT_SET_FIRST, align 4
  %6 = call i32 @SSL_CTX_set_current_cert(i32* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %13, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @openssl_debug_dump_certificates(i32* %11)
  br label %13

13:                                               ; preds = %10
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @SSL_CERT_SET_NEXT, align 4
  %16 = call i32 @SSL_CTX_set_current_cert(i32* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %7

17:                                               ; preds = %7
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @SSL_CERT_SET_FIRST, align 4
  %20 = call i32 @SSL_CTX_set_current_cert(i32* %18, i32 %19)
  ret void
}

declare dso_local i32 @SSL_CTX_set_current_cert(i32*, i32) #1

declare dso_local i32 @openssl_debug_dump_certificates(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
