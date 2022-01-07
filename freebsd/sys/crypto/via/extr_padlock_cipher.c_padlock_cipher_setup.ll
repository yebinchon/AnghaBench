; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_cipher.c_padlock_cipher_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_cipher.c_padlock_cipher_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padlock_session = type { i32, %union.padlock_cw }
%union.padlock_cw = type { i64 }
%struct.cryptoini = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PADLOCK_ALGORITHM_TYPE_AES = common dso_local global i32 0, align 4
@PADLOCK_KEY_GENERATION_SW = common dso_local global i32 0, align 4
@PADLOCK_ROUND_COUNT_AES128 = common dso_local global i32 0, align 4
@PADLOCK_KEY_SIZE_128 = common dso_local global i32 0, align 4
@PADLOCK_ROUND_COUNT_AES192 = common dso_local global i32 0, align 4
@PADLOCK_KEY_SIZE_192 = common dso_local global i32 0, align 4
@PADLOCK_ROUND_COUNT_AES256 = common dso_local global i32 0, align 4
@PADLOCK_KEY_SIZE_256 = common dso_local global i32 0, align 4
@PADLOCK_KEY_GENERATION_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @padlock_cipher_setup(%struct.padlock_session* %0, %struct.cryptoini* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.padlock_session*, align 8
  %5 = alloca %struct.cryptoini*, align 8
  %6 = alloca %union.padlock_cw*, align 8
  store %struct.padlock_session* %0, %struct.padlock_session** %4, align 8
  store %struct.cryptoini* %1, %struct.cryptoini** %5, align 8
  %7 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %8 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 128
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %13 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 192
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %18 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 256
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %79

23:                                               ; preds = %16, %11, %2
  %24 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %25 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %24, i32 0, i32 1
  store %union.padlock_cw* %25, %union.padlock_cw** %6, align 8
  %26 = load %union.padlock_cw*, %union.padlock_cw** %6, align 8
  %27 = call i32 @bzero(%union.padlock_cw* %26, i32 8)
  %28 = load i32, i32* @PADLOCK_ALGORITHM_TYPE_AES, align 4
  %29 = load %union.padlock_cw*, %union.padlock_cw** %6, align 8
  %30 = bitcast %union.padlock_cw* %29 to i32*
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @PADLOCK_KEY_GENERATION_SW, align 4
  %32 = load %union.padlock_cw*, %union.padlock_cw** %6, align 8
  %33 = bitcast %union.padlock_cw* %32 to i32*
  store i32 %31, i32* %33, align 8
  %34 = load %union.padlock_cw*, %union.padlock_cw** %6, align 8
  %35 = bitcast %union.padlock_cw* %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %37 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %60 [
    i32 128, label %39
    i32 192, label %46
    i32 256, label %53
  ]

39:                                               ; preds = %23
  %40 = load i32, i32* @PADLOCK_ROUND_COUNT_AES128, align 4
  %41 = load %union.padlock_cw*, %union.padlock_cw** %6, align 8
  %42 = bitcast %union.padlock_cw* %41 to i32*
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @PADLOCK_KEY_SIZE_128, align 4
  %44 = load %union.padlock_cw*, %union.padlock_cw** %6, align 8
  %45 = bitcast %union.padlock_cw* %44 to i32*
  store i32 %43, i32* %45, align 8
  br label %60

46:                                               ; preds = %23
  %47 = load i32, i32* @PADLOCK_ROUND_COUNT_AES192, align 4
  %48 = load %union.padlock_cw*, %union.padlock_cw** %6, align 8
  %49 = bitcast %union.padlock_cw* %48 to i32*
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @PADLOCK_KEY_SIZE_192, align 4
  %51 = load %union.padlock_cw*, %union.padlock_cw** %6, align 8
  %52 = bitcast %union.padlock_cw* %51 to i32*
  store i32 %50, i32* %52, align 8
  br label %60

53:                                               ; preds = %23
  %54 = load i32, i32* @PADLOCK_ROUND_COUNT_AES256, align 4
  %55 = load %union.padlock_cw*, %union.padlock_cw** %6, align 8
  %56 = bitcast %union.padlock_cw* %55 to i32*
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @PADLOCK_KEY_SIZE_256, align 4
  %58 = load %union.padlock_cw*, %union.padlock_cw** %6, align 8
  %59 = bitcast %union.padlock_cw* %58 to i32*
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %23, %53, %46, %39
  %61 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %62 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %67 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %68 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %71 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @padlock_cipher_key_setup(%struct.padlock_session* %66, i32* %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %60
  %75 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %76 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @arc4rand(i32 %77, i32 4, i32 0)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @bzero(%union.padlock_cw*, i32) #1

declare dso_local i32 @padlock_cipher_key_setup(%struct.padlock_session*, i32*, i32) #1

declare dso_local i32 @arc4rand(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
