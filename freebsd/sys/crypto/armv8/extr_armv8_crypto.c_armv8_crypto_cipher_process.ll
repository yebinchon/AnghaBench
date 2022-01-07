; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/armv8/extr_armv8_crypto.c_armv8_crypto_cipher_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/armv8/extr_armv8_crypto.c_armv8_crypto_cipher_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armv8_crypto_session = type { i32, i32, i32, i32 }
%struct.cryptodesc = type { i32, i32, i32, i32, i32, i32 }
%struct.cryptop = type { i32, i32 }
%struct.fpu_kern_ctx = type { i32 }

@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@FPU_KERN_NORMAL = common dso_local global i32 0, align 4
@FPU_KERN_KTHR = common dso_local global i32 0, align 4
@CRD_F_KEY_EXPLICIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CRD_F_KEY_EXPLICIT\00", align 1
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@M_ARMV8_CRYPTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armv8_crypto_session*, %struct.cryptodesc*, %struct.cryptop*)* @armv8_crypto_cipher_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8_crypto_cipher_process(%struct.armv8_crypto_session* %0, %struct.cryptodesc* %1, %struct.cryptop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.armv8_crypto_session*, align 8
  %6 = alloca %struct.cryptodesc*, align 8
  %7 = alloca %struct.cryptop*, align 8
  %8 = alloca %struct.fpu_kern_ctx*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.armv8_crypto_session* %0, %struct.armv8_crypto_session** %5, align 8
  store %struct.cryptodesc* %1, %struct.cryptodesc** %6, align 8
  store %struct.cryptop* %2, %struct.cryptop** %7, align 8
  %18 = load i32, i32* @AES_BLOCK_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %23 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %14, align 4
  %30 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %31 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %32 = call i32* @armv8_crypto_cipher_alloc(%struct.cryptodesc* %30, %struct.cryptop* %31, i32* %12)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %205

37:                                               ; preds = %3
  %38 = call i32 @is_fpu_kern_thread(i32 0)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %44 = call i32 @AQUIRE_CTX(i32 %42, %struct.fpu_kern_ctx* %43)
  %45 = load i32, i32* @curthread, align 4
  %46 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %47 = load i32, i32* @FPU_KERN_NORMAL, align 4
  %48 = load i32, i32* @FPU_KERN_KTHR, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @fpu_kern_enter(i32 %45, %struct.fpu_kern_ctx* %46, i32 %49)
  br label %51

51:                                               ; preds = %41, %37
  %52 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %53 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %51
  %61 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %62 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %66 [
    i32 128, label %64
  ]

64:                                               ; preds = %60
  %65 = load i32, i32* @AES_BLOCK_LEN, align 4
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %60, %64
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %66
  %70 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %71 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %78 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @bcopy(i32 %79, i32* %21, i32 %80)
  br label %85

82:                                               ; preds = %69
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @arc4rand(i32* %21, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %82, %76
  %86 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %87 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %94 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %97 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %100 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @crypto_copyback(i32 %95, i32 %98, i32 %101, i32 %102, i32* %21)
  br label %104

104:                                              ; preds = %92, %85
  br label %131

105:                                              ; preds = %66
  %106 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %107 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %114 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @bcopy(i32 %115, i32* %21, i32 %116)
  br label %130

118:                                              ; preds = %105
  %119 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %120 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %123 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %126 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @crypto_copydata(i32 %121, i32 %124, i32 %127, i32 %128, i32* %21)
  br label %130

130:                                              ; preds = %118, %112
  br label %131

131:                                              ; preds = %130, %104
  %132 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %5, align 8
  %133 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  switch i32 %134, label %164 [
    i32 128, label %135
  ]

135:                                              ; preds = %131
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %5, align 8
  %140 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %5, align 8
  %143 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %146 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 @armv8_aes_encrypt_cbc(i32 %141, i32 %144, i32 %147, i32* %148, i32* %149, i32* %21)
  br label %163

151:                                              ; preds = %135
  %152 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %5, align 8
  %153 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.armv8_crypto_session*, %struct.armv8_crypto_session** %5, align 8
  %156 = getelementptr inbounds %struct.armv8_crypto_session, %struct.armv8_crypto_session* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %159 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @armv8_aes_decrypt_cbc(i32 %154, i32 %157, i32 %160, i32* %161, i32* %21)
  br label %163

163:                                              ; preds = %151, %138
  br label %164

164:                                              ; preds = %131, %163
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %164
  %168 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %169 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %172 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %175 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %178 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = call i32 @crypto_copyback(i32 %170, i32 %173, i32 %176, i32 %179, i32* %180)
  br label %182

182:                                              ; preds = %167, %164
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* @curthread, align 4
  %187 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %188 = call i32 @fpu_kern_leave(i32 %186, %struct.fpu_kern_ctx* %187)
  %189 = load i32, i32* %13, align 4
  %190 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %191 = call i32 @RELEASE_CTX(i32 %189, %struct.fpu_kern_ctx* %190)
  br label %192

192:                                              ; preds = %185, %182
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load i32*, i32** %9, align 8
  %197 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %198 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @bzero(i32* %196, i32 %199)
  %201 = load i32*, i32** %9, align 8
  %202 = load i32, i32* @M_ARMV8_CRYPTO, align 4
  %203 = call i32 @free(i32* %201, i32 %202)
  br label %204

204:                                              ; preds = %195, %192
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %205

205:                                              ; preds = %204, %35
  %206 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @armv8_crypto_cipher_alloc(%struct.cryptodesc*, %struct.cryptop*, i32*) #2

declare dso_local i32 @is_fpu_kern_thread(i32) #2

declare dso_local i32 @AQUIRE_CTX(i32, %struct.fpu_kern_ctx*) #2

declare dso_local i32 @fpu_kern_enter(i32, %struct.fpu_kern_ctx*, i32) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #2

declare dso_local i32 @arc4rand(i32*, i32, i32) #2

declare dso_local i32 @crypto_copyback(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @crypto_copydata(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @armv8_aes_encrypt_cbc(i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @armv8_aes_decrypt_cbc(i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @fpu_kern_leave(i32, %struct.fpu_kern_ctx*) #2

declare dso_local i32 @RELEASE_CTX(i32, %struct.fpu_kern_ctx*) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @free(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
