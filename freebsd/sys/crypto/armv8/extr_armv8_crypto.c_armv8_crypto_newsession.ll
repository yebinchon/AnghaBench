; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/armv8/extr_armv8_crypto.c_armv8_crypto_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/armv8/extr_armv8_crypto.c_armv8_crypto_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptoini = type { i32, %struct.cryptoini* }
%struct.armv8_crypto_softc = type { i32, i64 }
%struct.armv8_crypto_session = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"no cri\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"encini already set\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unhandled algorithm\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"no cipher\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"setup failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @armv8_crypto_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8_crypto_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.armv8_crypto_softc*, align 8
  %9 = alloca %struct.armv8_crypto_session*, align 8
  %10 = alloca %struct.cryptoini*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %12 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %13 = icmp eq %struct.cryptoini* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %92

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.armv8_crypto_softc* @device_get_softc(i32 %18)
  store %struct.armv8_crypto_softc* %19, %struct.armv8_crypto_softc** %8, align 8
  %20 = load %struct.armv8_crypto_softc*, %struct.armv8_crypto_softc** %8, align 8
  %21 = getelementptr inbounds %struct.armv8_crypto_softc, %struct.armv8_crypto_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %92

26:                                               ; preds = %17
  store %struct.armv8_crypto_session* null, %struct.armv8_crypto_session** %9, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %10, align 8
  br label %27

27:                                               ; preds = %46, %26
  %28 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %29 = icmp ne %struct.cryptoini* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %32 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %42 [
    i32 128, label %34
  ]

34:                                               ; preds = %30
  %35 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %36 = icmp ne %struct.cryptoini* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %4, align 4
  br label %92

40:                                               ; preds = %34
  %41 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %41, %struct.cryptoini** %10, align 8
  br label %45

42:                                               ; preds = %30
  %43 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %92

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %48 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %47, i32 0, i32 1
  %49 = load %struct.cryptoini*, %struct.cryptoini** %48, align 8
  store %struct.cryptoini* %49, %struct.cryptoini** %7, align 8
  br label %27

50:                                               ; preds = %27
  %51 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %52 = icmp eq %struct.cryptoini* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %4, align 4
  br label %92

56:                                               ; preds = %50
  %57 = load %struct.armv8_crypto_softc*, %struct.armv8_crypto_softc** %8, align 8
  %58 = getelementptr inbounds %struct.armv8_crypto_softc, %struct.armv8_crypto_softc* %57, i32 0, i32 0
  %59 = call i32 @rw_wlock(i32* %58)
  %60 = load %struct.armv8_crypto_softc*, %struct.armv8_crypto_softc** %8, align 8
  %61 = getelementptr inbounds %struct.armv8_crypto_softc, %struct.armv8_crypto_softc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.armv8_crypto_softc*, %struct.armv8_crypto_softc** %8, align 8
  %66 = getelementptr inbounds %struct.armv8_crypto_softc, %struct.armv8_crypto_softc* %65, i32 0, i32 0
  %67 = call i32 @rw_wunlock(i32* %66)
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %4, align 4
  br label %92

69:                                               ; preds = %56
  %70 = load i32, i32* %6, align 4
  %71 = call %struct.armv8_crypto_session* @crypto_get_driver_session(i32 %70)
  store %struct.armv8_crypto_session* %71, %struct.armv8_crypto_session** %9, align 8
  %72 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %73 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %9, align 8
  %76 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %9, align 8
  %78 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %79 = call i32 @armv8_crypto_cipher_setup(%struct.armv8_crypto_session* %77, %struct.cryptoini* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %69
  %83 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.armv8_crypto_softc*, %struct.armv8_crypto_softc** %8, align 8
  %85 = getelementptr inbounds %struct.armv8_crypto_softc, %struct.armv8_crypto_softc* %84, i32 0, i32 0
  %86 = call i32 @rw_wunlock(i32* %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %92

88:                                               ; preds = %69
  %89 = load %struct.armv8_crypto_softc*, %struct.armv8_crypto_softc** %8, align 8
  %90 = getelementptr inbounds %struct.armv8_crypto_softc, %struct.armv8_crypto_softc* %89, i32 0, i32 0
  %91 = call i32 @rw_wunlock(i32* %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %82, %64, %53, %42, %37, %24, %14
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @CRYPTDEB(i8*) #1

declare dso_local %struct.armv8_crypto_softc* @device_get_softc(i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local %struct.armv8_crypto_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @armv8_crypto_cipher_setup(%struct.armv8_crypto_session*, %struct.cryptoini*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
