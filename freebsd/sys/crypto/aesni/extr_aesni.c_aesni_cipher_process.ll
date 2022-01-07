; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni.c_aesni_cipher_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni.c_aesni_cipher_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aesni_session = type { i32 }
%struct.cryptodesc = type { i64, i32 }
%struct.cryptop = type { %struct.cryptodesc* }
%struct.fpu_kern_ctx = type { i32 }

@CRYPTO_AES_ICM = common dso_local global i64 0, align 8
@CRYPTO_AES_CCM_16 = common dso_local global i64 0, align 8
@CRYPTO_AES_NIST_GCM_16 = common dso_local global i64 0, align 8
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@FPU_KERN_NORMAL = common dso_local global i32 0, align 4
@FPU_KERN_KTHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aesni_session*, %struct.cryptodesc*, %struct.cryptodesc*, %struct.cryptop*)* @aesni_cipher_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aesni_cipher_process(%struct.aesni_session* %0, %struct.cryptodesc* %1, %struct.cryptodesc* %2, %struct.cryptop* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aesni_session*, align 8
  %7 = alloca %struct.cryptodesc*, align 8
  %8 = alloca %struct.cryptodesc*, align 8
  %9 = alloca %struct.cryptop*, align 8
  %10 = alloca %struct.fpu_kern_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.aesni_session* %0, %struct.aesni_session** %6, align 8
  store %struct.cryptodesc* %1, %struct.cryptodesc** %7, align 8
  store %struct.cryptodesc* %2, %struct.cryptodesc** %8, align 8
  store %struct.cryptop* %3, %struct.cryptop** %9, align 8
  %14 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %15 = icmp ne %struct.cryptodesc* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %4
  %17 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %18 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CRYPTO_AES_ICM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %24 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CRYPTO_AES_CCM_16, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %30 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CRYPTO_AES_NIST_GCM_16, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28, %22, %16
  %35 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %36 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %5, align 4
  br label %135

43:                                               ; preds = %34, %28
  br label %44

44:                                               ; preds = %43, %4
  store %struct.fpu_kern_ctx* null, %struct.fpu_kern_ctx** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %45 = call i32 @is_fpu_kern_thread(i32 0)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %10, align 8
  %51 = call i32 @ACQUIRE_CTX(i32 %49, %struct.fpu_kern_ctx* %50)
  %52 = load i32, i32* @curthread, align 4
  %53 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %10, align 8
  %54 = load i32, i32* @FPU_KERN_NORMAL, align 4
  %55 = load i32, i32* @FPU_KERN_KTHR, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @fpu_kern_enter(i32 %52, %struct.fpu_kern_ctx* %53, i32 %56)
  br label %58

58:                                               ; preds = %48, %44
  %59 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %60 = icmp ne %struct.cryptodesc* %59, null
  br i1 %60, label %61, label %103

61:                                               ; preds = %58
  %62 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %63 = icmp ne %struct.cryptodesc* %62, null
  br i1 %63, label %64, label %103

64:                                               ; preds = %61
  %65 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %66 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %65, i32 0, i32 0
  %67 = load %struct.cryptodesc*, %struct.cryptodesc** %66, align 8
  %68 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %69 = icmp eq %struct.cryptodesc* %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %72 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %73 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %74 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %75 = call i32 @aesni_cipher_crypt(%struct.aesni_session* %71, %struct.cryptodesc* %72, %struct.cryptodesc* %73, %struct.cryptop* %74)
  store i32 %75, i32* %11, align 4
  br label %81

76:                                               ; preds = %64
  %77 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %78 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %79 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %80 = call i32 @aesni_cipher_mac(%struct.aesni_session* %77, %struct.cryptodesc* %78, %struct.cryptop* %79)
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %76, %70
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %123

85:                                               ; preds = %81
  %86 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %87 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %86, i32 0, i32 0
  %88 = load %struct.cryptodesc*, %struct.cryptodesc** %87, align 8
  %89 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %90 = icmp eq %struct.cryptodesc* %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %93 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %94 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %95 = call i32 @aesni_cipher_mac(%struct.aesni_session* %92, %struct.cryptodesc* %93, %struct.cryptop* %94)
  store i32 %95, i32* %11, align 4
  br label %102

96:                                               ; preds = %85
  %97 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %98 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %99 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %100 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %101 = call i32 @aesni_cipher_crypt(%struct.aesni_session* %97, %struct.cryptodesc* %98, %struct.cryptodesc* %99, %struct.cryptop* %100)
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %96, %91
  br label %118

103:                                              ; preds = %61, %58
  %104 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %105 = icmp ne %struct.cryptodesc* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %108 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %109 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %110 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %111 = call i32 @aesni_cipher_crypt(%struct.aesni_session* %107, %struct.cryptodesc* %108, %struct.cryptodesc* %109, %struct.cryptop* %110)
  store i32 %111, i32* %11, align 4
  br label %117

112:                                              ; preds = %103
  %113 = load %struct.aesni_session*, %struct.aesni_session** %6, align 8
  %114 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %115 = load %struct.cryptop*, %struct.cryptop** %9, align 8
  %116 = call i32 @aesni_cipher_mac(%struct.aesni_session* %113, %struct.cryptodesc* %114, %struct.cryptop* %115)
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %112, %106
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %123

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122, %121, %84
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @curthread, align 4
  %128 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %10, align 8
  %129 = call i32 @fpu_kern_leave(i32 %127, %struct.fpu_kern_ctx* %128)
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %10, align 8
  %132 = call i32 @RELEASE_CTX(i32 %130, %struct.fpu_kern_ctx* %131)
  br label %133

133:                                              ; preds = %126, %123
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %41
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @is_fpu_kern_thread(i32) #1

declare dso_local i32 @ACQUIRE_CTX(i32, %struct.fpu_kern_ctx*) #1

declare dso_local i32 @fpu_kern_enter(i32, %struct.fpu_kern_ctx*, i32) #1

declare dso_local i32 @aesni_cipher_crypt(%struct.aesni_session*, %struct.cryptodesc*, %struct.cryptodesc*, %struct.cryptop*) #1

declare dso_local i32 @aesni_cipher_mac(%struct.aesni_session*, %struct.cryptodesc*, %struct.cryptop*) #1

declare dso_local i32 @fpu_kern_leave(i32, %struct.fpu_kern_ctx*) #1

declare dso_local i32 @RELEASE_CTX(i32, %struct.fpu_kern_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
