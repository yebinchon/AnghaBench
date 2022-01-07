; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2_cryptodev.c_blake2_cipher_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2_cryptodev.c_blake2_cipher_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blake2_session = type { i32, i32, i64, i32 }
%struct.cryptoini = type { i64, i32, i32 }

@BLAKE2S_OUTBYTES = common dso_local global i64 0, align 8
@BLAKE2B_OUTBYTES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BLAKE2S_KEYBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blake2_session*, %struct.cryptoini*)* @blake2_cipher_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blake2_cipher_setup(%struct.blake2_session* %0, %struct.cryptoini* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blake2_session*, align 8
  %5 = alloca %struct.cryptoini*, align 8
  %6 = alloca i32, align 4
  store %struct.blake2_session* %0, %struct.blake2_session** %4, align 8
  store %struct.cryptoini* %1, %struct.cryptoini** %5, align 8
  %7 = load i64, i64* @BLAKE2S_OUTBYTES, align 8
  %8 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %9 = icmp ule i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @CTASSERT(i32 %10)
  %12 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %13 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %94

18:                                               ; preds = %2
  %19 = load %struct.blake2_session*, %struct.blake2_session** %4, align 8
  %20 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %93 [
    i32 128, label %22
    i32 129, label %36
  ]

22:                                               ; preds = %18
  %23 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %24 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %29 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BLAKE2S_OUTBYTES, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %94

35:                                               ; preds = %27, %22
  br label %36

36:                                               ; preds = %18, %35
  %37 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %38 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %43 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %3, align 4
  br label %94

49:                                               ; preds = %41, %36
  %50 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %51 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = srem i32 %52, 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %3, align 4
  br label %94

57:                                               ; preds = %49
  %58 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %59 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %60, 8
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ugt i64 %63, 4
  br i1 %64, label %74, label %65

65:                                               ; preds = %57
  %66 = load %struct.blake2_session*, %struct.blake2_session** %4, align 8
  %67 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @BLAKE2S_KEYBYTES, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %57
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %3, align 4
  br label %94

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.blake2_session*, %struct.blake2_session** %4, align 8
  %79 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.blake2_session*, %struct.blake2_session** %4, align 8
  %81 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %84 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @memcpy(i32 %82, i32 %85, i32 %86)
  %88 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %89 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.blake2_session*, %struct.blake2_session** %4, align 8
  %92 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %76, %18
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %74, %55, %47, %33, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
