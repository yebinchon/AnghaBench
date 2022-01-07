; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_dh5_derive_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_dh5_derive_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @dh5_derive_shared(i8* %0, %struct.wpabuf* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %20 = call i32 @wpabuf_head(%struct.wpabuf* %19)
  %21 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %22 = call i32 @wpabuf_len(%struct.wpabuf* %21)
  %23 = call i32* @BN_bin2bn(i32 %20, i32 %22, i32* null)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %56

27:                                               ; preds = %18
  %28 = load i32*, i32** %11, align 8
  %29 = call i64 @DH_size(i32* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call %struct.wpabuf* @wpabuf_alloc(i64 %30)
  store %struct.wpabuf* %31, %struct.wpabuf** %9, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %33 = icmp eq %struct.wpabuf* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %51

35:                                               ; preds = %27
  %36 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %37 = call i32 @wpabuf_mhead(%struct.wpabuf* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @DH_compute_key(i32 %37, i32* %38, i32* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %51

44:                                               ; preds = %35
  %45 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @wpabuf_put(%struct.wpabuf* %45, i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @BN_clear_free(i32* %48)
  %50 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %50, %struct.wpabuf** %4, align 8
  br label %56

51:                                               ; preds = %43, %34
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @BN_clear_free(i32* %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %55 = call i32 @wpabuf_clear_free(%struct.wpabuf* %54)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %56

56:                                               ; preds = %51, %44, %26, %17
  %57 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %57
}

declare dso_local i32* @BN_bin2bn(i32, i32, i32*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i64 @DH_size(i32*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @DH_compute_key(i32, i32*, i32*) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
