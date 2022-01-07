; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock.c_padlock_newsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock.c_padlock_newsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cryptoini = type { i32, %struct.cryptoini* }
%struct.padlock_softc = type { i32 }
%struct.padlock_session = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FPU_KERN_NORMAL = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@FPU_KERN_KTHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cryptoini*)* @padlock_newsession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padlock_newsession(i32 %0, i32 %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.padlock_softc*, align 8
  %9 = alloca %struct.padlock_session*, align 8
  %10 = alloca %struct.cryptoini*, align 8
  %11 = alloca %struct.cryptoini*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.padlock_softc* @device_get_softc(i32 %14)
  store %struct.padlock_softc* %15, %struct.padlock_softc** %8, align 8
  store %struct.padlock_session* null, %struct.padlock_session** %9, align 8
  %16 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %17 = icmp eq %struct.cryptoini* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %101

20:                                               ; preds = %3
  store %struct.cryptoini* null, %struct.cryptoini** %11, align 8
  store %struct.cryptoini* null, %struct.cryptoini** %10, align 8
  br label %21

21:                                               ; preds = %45, %20
  %22 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %23 = icmp ne %struct.cryptoini* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %26 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %42 [
    i32 133, label %28
    i32 134, label %28
    i32 131, label %28
    i32 132, label %28
    i32 130, label %28
    i32 129, label %28
    i32 128, label %28
    i32 135, label %35
  ]

28:                                               ; preds = %24, %24, %24, %24, %24, %24, %24
  %29 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %30 = icmp ne %struct.cryptoini* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %101

33:                                               ; preds = %28
  %34 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %34, %struct.cryptoini** %11, align 8
  br label %44

35:                                               ; preds = %24
  %36 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %37 = icmp ne %struct.cryptoini* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %4, align 4
  br label %101

40:                                               ; preds = %35
  %41 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  store %struct.cryptoini* %41, %struct.cryptoini** %10, align 8
  br label %44

42:                                               ; preds = %24
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %101

44:                                               ; preds = %40, %33
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %47 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %46, i32 0, i32 1
  %48 = load %struct.cryptoini*, %struct.cryptoini** %47, align 8
  store %struct.cryptoini* %48, %struct.cryptoini** %7, align 8
  br label %21

49:                                               ; preds = %21
  %50 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %51 = icmp eq %struct.cryptoini* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %4, align 4
  br label %101

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = call %struct.padlock_session* @crypto_get_driver_session(i32 %55)
  store %struct.padlock_session* %56, %struct.padlock_session** %9, align 8
  %57 = load i32, i32* @FPU_KERN_NORMAL, align 4
  %58 = call i32 @fpu_kern_alloc_ctx(i32 %57)
  %59 = load %struct.padlock_session*, %struct.padlock_session** %9, align 8
  %60 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.padlock_session*, %struct.padlock_session** %9, align 8
  %62 = load %struct.cryptoini*, %struct.cryptoini** %10, align 8
  %63 = call i32 @padlock_cipher_setup(%struct.padlock_session* %61, %struct.cryptoini* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %54
  %67 = load %struct.padlock_softc*, %struct.padlock_softc** %8, align 8
  %68 = load %struct.padlock_session*, %struct.padlock_session** %9, align 8
  %69 = call i32 @padlock_freesession_one(%struct.padlock_softc* %67, %struct.padlock_session* %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %4, align 4
  br label %101

71:                                               ; preds = %54
  %72 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %73 = icmp ne %struct.cryptoini* %72, null
  br i1 %73, label %74, label %100

74:                                               ; preds = %71
  %75 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %75, %struct.thread** %12, align 8
  %76 = load %struct.thread*, %struct.thread** %12, align 8
  %77 = load %struct.padlock_session*, %struct.padlock_session** %9, align 8
  %78 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FPU_KERN_NORMAL, align 4
  %81 = load i32, i32* @FPU_KERN_KTHR, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @fpu_kern_enter(%struct.thread* %76, i32 %79, i32 %82)
  %84 = load %struct.padlock_session*, %struct.padlock_session** %9, align 8
  %85 = load %struct.cryptoini*, %struct.cryptoini** %11, align 8
  %86 = call i32 @padlock_hash_setup(%struct.padlock_session* %84, %struct.cryptoini* %85)
  store i32 %86, i32* %13, align 4
  %87 = load %struct.thread*, %struct.thread** %12, align 8
  %88 = load %struct.padlock_session*, %struct.padlock_session** %9, align 8
  %89 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @fpu_kern_leave(%struct.thread* %87, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %74
  %95 = load %struct.padlock_softc*, %struct.padlock_softc** %8, align 8
  %96 = load %struct.padlock_session*, %struct.padlock_session** %9, align 8
  %97 = call i32 @padlock_freesession_one(%struct.padlock_softc* %95, %struct.padlock_session* %96)
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %4, align 4
  br label %101

99:                                               ; preds = %74
  br label %100

100:                                              ; preds = %99, %71
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %94, %66, %52, %42, %38, %31, %18
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.padlock_softc* @device_get_softc(i32) #1

declare dso_local %struct.padlock_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @fpu_kern_alloc_ctx(i32) #1

declare dso_local i32 @padlock_cipher_setup(%struct.padlock_session*, %struct.cryptoini*) #1

declare dso_local i32 @padlock_freesession_one(%struct.padlock_softc*, %struct.padlock_session*) #1

declare dso_local i32 @fpu_kern_enter(%struct.thread*, i32, i32) #1

declare dso_local i32 @padlock_hash_setup(%struct.padlock_session*, %struct.cryptoini*) #1

declare dso_local i32 @fpu_kern_leave(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
