; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configurator_get_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configurator_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_configurator = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp_configurator_get_key(%struct.dpp_configurator* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpp_configurator*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.dpp_configurator* %0, %struct.dpp_configurator** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 -1, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %12 = load %struct.dpp_configurator*, %struct.dpp_configurator** %5, align 8
  %13 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.dpp_configurator*, %struct.dpp_configurator** %5, align 8
  %19 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @EVP_PKEY_get1_EC_KEY(i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %42

25:                                               ; preds = %17
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @i2d_ECPrivateKey(i32* %26, i8** %11)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @wpa_snprintf_hex(i8* %31, i64 %32, i8* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @EC_KEY_free(i32* %37)
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @OPENSSL_free(i8* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %24, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32) #1

declare dso_local i32 @i2d_ECPrivateKey(i32*, i8**) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i64, i8*, i32) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
