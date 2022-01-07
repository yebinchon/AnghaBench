; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/armv8/extr_armv8_crypto.c_armv8_crypto_cipher_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/armv8/extr_armv8_crypto.c_armv8_crypto_cipher_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armv8_crypto_session = type { i32, i8**, i8**, i32 }
%struct.cryptoini = type { i32, i32 }

@AES128_ROUNDS = common dso_local global i32 0, align 4
@AES192_ROUNDS = common dso_local global i32 0, align 4
@AES256_ROUNDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid CBC/ICM/GCM key length\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armv8_crypto_session*, %struct.cryptoini*)* @armv8_crypto_cipher_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8_crypto_cipher_setup(%struct.armv8_crypto_session* %0, %struct.cryptoini* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.armv8_crypto_session*, align 8
  %5 = alloca %struct.cryptoini*, align 8
  %6 = alloca i32, align 4
  store %struct.armv8_crypto_session* %0, %struct.armv8_crypto_session** %4, align 8
  store %struct.cryptoini* %1, %struct.cryptoini** %5, align 8
  %7 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %4, align 8
  %8 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %30 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %12 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 128, label %14
    i32 192, label %18
    i32 256, label %22
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* @AES128_ROUNDS, align 4
  %16 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %4, align 8
  %17 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  br label %29

18:                                               ; preds = %10
  %19 = load i32, i32* @AES192_ROUNDS, align 4
  %20 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %4, align 8
  %21 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  br label %29

22:                                               ; preds = %10
  %23 = load i32, i32* @AES256_ROUNDS, align 4
  %24 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %4, align 8
  %25 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  br label %29

26:                                               ; preds = %10
  %27 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %93

29:                                               ; preds = %22, %18, %14
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %93

32:                                               ; preds = %29
  %33 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %4, align 8
  %34 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %37 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %40 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rijndaelKeySetupEnc(i8** %35, i32 %38, i32 %41)
  %43 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %4, align 8
  %44 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %47 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %50 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rijndaelKeySetupDec(i8** %45, i32 %48, i32 %51)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %89, %32
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %4, align 8
  %56 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = call i32 @nitems(i8** %57)
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %53
  %61 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %4, align 8
  %62 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %61, i32 0, i32 2
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @bswap32(i8* %67)
  %69 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %4, align 8
  %70 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %69, i32 0, i32 2
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %68, i8** %74, align 8
  %75 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %4, align 8
  %76 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @bswap32(i8* %81)
  %83 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %4, align 8
  %84 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %82, i8** %88, align 8
  br label %89

89:                                               ; preds = %60
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %53

92:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %30, %26
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @CRYPTDEB(i8*) #1

declare dso_local i32 @rijndaelKeySetupEnc(i8**, i32, i32) #1

declare dso_local i32 @rijndaelKeySetupDec(i8**, i32, i32) #1

declare dso_local i32 @nitems(i8**) #1

declare dso_local i8* @bswap32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
