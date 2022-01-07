; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_rsa.c_crypto_rsa_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_rsa.c_crypto_rsa_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rsa_key = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_rsa_free(%struct.crypto_rsa_key* %0) #0 {
  %2 = alloca %struct.crypto_rsa_key*, align 8
  store %struct.crypto_rsa_key* %0, %struct.crypto_rsa_key** %2, align 8
  %3 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %2, align 8
  %4 = icmp ne %struct.crypto_rsa_key* %3, null
  br i1 %4, label %5, label %40

5:                                                ; preds = %1
  %6 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %2, align 8
  %7 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @bignum_deinit(i32 %8)
  %10 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %2, align 8
  %11 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bignum_deinit(i32 %12)
  %14 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %2, align 8
  %15 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bignum_deinit(i32 %16)
  %18 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %2, align 8
  %19 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bignum_deinit(i32 %20)
  %22 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %2, align 8
  %23 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bignum_deinit(i32 %24)
  %26 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %2, align 8
  %27 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bignum_deinit(i32 %28)
  %30 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %2, align 8
  %31 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bignum_deinit(i32 %32)
  %34 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %2, align 8
  %35 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bignum_deinit(i32 %36)
  %38 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %2, align 8
  %39 = call i32 @os_free(%struct.crypto_rsa_key* %38)
  br label %40

40:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @bignum_deinit(i32) #1

declare dso_local i32 @os_free(%struct.crypto_rsa_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
