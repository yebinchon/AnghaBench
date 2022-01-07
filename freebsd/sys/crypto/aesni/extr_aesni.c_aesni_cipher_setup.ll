; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni.c_aesni_cipher_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni.c_aesni_cipher_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aesni_session = type { i32, i32 }
%struct.cryptoini = type { i32, i32, i32 }
%struct.fpu_kern_ctx = type { i32 }

@curthread = common dso_local global i32 0, align 4
@FPU_KERN_NORMAL = common dso_local global i32 0, align 4
@FPU_KERN_KTHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aesni_session*, %struct.cryptoini*, %struct.cryptoini*)* @aesni_cipher_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aesni_cipher_setup(%struct.aesni_session* %0, %struct.cryptoini* %1, %struct.cryptoini* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aesni_session*, align 8
  %6 = alloca %struct.cryptoini*, align 8
  %7 = alloca %struct.cryptoini*, align 8
  %8 = alloca %struct.fpu_kern_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aesni_session* %0, %struct.aesni_session** %5, align 8
  store %struct.cryptoini* %1, %struct.cryptoini** %6, align 8
  store %struct.cryptoini* %2, %struct.cryptoini** %7, align 8
  %12 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %13 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %34 [
    i32 133, label %15
    i32 132, label %15
    i32 131, label %15
    i32 130, label %15
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %3, %3, %3, %3, %3, %3
  %16 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %17 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %18 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %21 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @aesni_authprepare(%struct.aesni_session* %16, i32 %19, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %79

28:                                               ; preds = %15
  %29 = load %struct.cryptoini*, %struct.cryptoini** %7, align 8
  %30 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %33 = getelementptr inbounds %struct.aesni_session, %struct.aesni_session* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %3
  %35 = call i64 @is_fpu_kern_thread(i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.cryptoini*, %struct.cryptoini** %6, align 8
  %39 = icmp eq %struct.cryptoini* %38, null
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ true, %34 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %48 = call i32 @ACQUIRE_CTX(i32 %46, %struct.fpu_kern_ctx* %47)
  %49 = load i32, i32* @curthread, align 4
  %50 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %51 = load i32, i32* @FPU_KERN_NORMAL, align 4
  %52 = load i32, i32* @FPU_KERN_KTHR, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @fpu_kern_enter(i32 %49, %struct.fpu_kern_ctx* %50, i32 %53)
  br label %55

55:                                               ; preds = %45, %40
  store i32 0, i32* %11, align 4
  %56 = load %struct.cryptoini*, %struct.cryptoini** %6, align 8
  %57 = icmp ne %struct.cryptoini* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.aesni_session*, %struct.aesni_session** %5, align 8
  %60 = load %struct.cryptoini*, %struct.cryptoini** %6, align 8
  %61 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cryptoini*, %struct.cryptoini** %6, align 8
  %64 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @aesni_cipher_setup_common(%struct.aesni_session* %59, i32 %62, i32 %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %58, %55
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @curthread, align 4
  %72 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %73 = call i32 @fpu_kern_leave(i32 %71, %struct.fpu_kern_ctx* %72)
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %76 = call i32 @RELEASE_CTX(i32 %74, %struct.fpu_kern_ctx* %75)
  br label %77

77:                                               ; preds = %70, %67
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %26
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @aesni_authprepare(%struct.aesni_session*, i32, i32) #1

declare dso_local i64 @is_fpu_kern_thread(i32) #1

declare dso_local i32 @ACQUIRE_CTX(i32, %struct.fpu_kern_ctx*) #1

declare dso_local i32 @fpu_kern_enter(i32, %struct.fpu_kern_ctx*, i32) #1

declare dso_local i32 @aesni_cipher_setup_common(%struct.aesni_session*, i32, i32) #1

declare dso_local i32 @fpu_kern_leave(i32, %struct.fpu_kern_ctx*) #1

declare dso_local i32 @RELEASE_CTX(i32, %struct.fpu_kern_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
