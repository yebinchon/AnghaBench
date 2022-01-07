; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_get_x509_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_get_x509_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32*)* @get_x509_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @get_x509_cert(i32* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @i2d_X509(i32* %7, i32** null)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.wpabuf* @wpabuf_alloc(i32 %13)
  store %struct.wpabuf* %14, %struct.wpabuf** %4, align 8
  %15 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %16 = icmp eq %struct.wpabuf* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %25

18:                                               ; preds = %12
  %19 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32* @wpabuf_put(%struct.wpabuf* %19, i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @i2d_X509(i32* %22, i32** %5)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %24, %struct.wpabuf** %2, align 8
  br label %25

25:                                               ; preds = %18, %17, %11
  %26 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %26
}

declare dso_local i32 @i2d_X509(i32*, i32**) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
