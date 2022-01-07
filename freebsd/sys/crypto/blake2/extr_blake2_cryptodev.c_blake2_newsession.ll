; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2_cryptodev.c_blake2_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2_cryptodev.c_blake2_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptoini = type { i32, %struct.cryptoini* }
%struct.blake2_softc = type { i32, i64 }
%struct.blake2_session = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"no cri\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"authini already set\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unhandled algorithm\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"no cipher\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"setup failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @blake2_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blake2_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.blake2_softc*, align 8
  %9 = alloca %struct.blake2_session*, align 8
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
  br label %82

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.blake2_softc* @device_get_softc(i32 %18)
  store %struct.blake2_softc* %19, %struct.blake2_softc** %8, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %10, align 8
  br label %20

20:                                               ; preds = %39, %17
  %21 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %22 = icmp ne %struct.cryptoini* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %25 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %35 [
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %23, %23
  %28 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %29 = icmp ne %struct.cryptoini* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %82

33:                                               ; preds = %27
  %34 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %34, %struct.cryptoini** %10, align 8
  br label %38

35:                                               ; preds = %23
  %36 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %82

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %41 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %40, i32 0, i32 1
  %42 = load %struct.cryptoini*, %struct.cryptoini** %41, align 8
  store %struct.cryptoini* %42, %struct.cryptoini** %7, align 8
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %45 = icmp eq %struct.cryptoini* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %4, align 4
  br label %82

49:                                               ; preds = %43
  %50 = load %struct.blake2_softc*, %struct.blake2_softc** %8, align 8
  %51 = getelementptr inbounds %struct.blake2_softc, %struct.blake2_softc* %50, i32 0, i32 0
  %52 = call i32 @rw_wlock(i32* %51)
  %53 = load %struct.blake2_softc*, %struct.blake2_softc** %8, align 8
  %54 = getelementptr inbounds %struct.blake2_softc, %struct.blake2_softc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.blake2_softc*, %struct.blake2_softc** %8, align 8
  %59 = getelementptr inbounds %struct.blake2_softc, %struct.blake2_softc* %58, i32 0, i32 0
  %60 = call i32 @rw_wunlock(i32* %59)
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %4, align 4
  br label %82

62:                                               ; preds = %49
  %63 = load %struct.blake2_softc*, %struct.blake2_softc** %8, align 8
  %64 = getelementptr inbounds %struct.blake2_softc, %struct.blake2_softc* %63, i32 0, i32 0
  %65 = call i32 @rw_wunlock(i32* %64)
  %66 = load i32, i32* %6, align 4
  %67 = call %struct.blake2_session* @crypto_get_driver_session(i32 %66)
  store %struct.blake2_session* %67, %struct.blake2_session** %9, align 8
  %68 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %69 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.blake2_session*, %struct.blake2_session** %9, align 8
  %72 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.blake2_session*, %struct.blake2_session** %9, align 8
  %74 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %75 = call i32 @blake2_cipher_setup(%struct.blake2_session* %73, %struct.cryptoini* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = call i32 @CRYPTDEB(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %78, %57, %46, %35, %30, %14
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @CRYPTDEB(i8*) #1

declare dso_local %struct.blake2_softc* @device_get_softc(i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local %struct.blake2_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @blake2_cipher_setup(%struct.blake2_session*, %struct.cryptoini*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
