; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_copy_netaccesskey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_copy_netaccesskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpp_authentication*)* @dpp_copy_netaccesskey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp_copy_netaccesskey(%struct.dpp_authentication* %0) #0 {
  %2 = alloca %struct.dpp_authentication*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %2, align 8
  store i8* null, i8** %3, align 8
  %6 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %7 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32* @EVP_PKEY_get1_EC_KEY(i32 %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %35

13:                                               ; preds = %1
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @i2d_ECPrivateKey(i32* %14, i8** %3)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @EC_KEY_free(i32* %19)
  br label %35

21:                                               ; preds = %13
  %22 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %23 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wpabuf_free(i32 %24)
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @wpabuf_alloc_copy(i8* %26, i32 %27)
  %29 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %30 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @OPENSSL_free(i8* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @EC_KEY_free(i32* %33)
  br label %35

35:                                               ; preds = %21, %18, %12
  ret void
}

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32) #1

declare dso_local i32 @i2d_ECPrivateKey(i32*, i8**) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_alloc_copy(i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
