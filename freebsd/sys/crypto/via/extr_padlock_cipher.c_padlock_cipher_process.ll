; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_cipher.c_padlock_cipher_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_cipher.c_padlock_cipher_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.padlock_session = type { i32*, i32, i32*, i32*, %union.padlock_cw }
%union.padlock_cw = type { i64 }
%struct.cryptodesc = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.cryptop = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CRD_F_KEY_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@PADLOCK_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@PADLOCK_DIRECTION_DECRYPT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@FPU_KERN_NORMAL = common dso_local global i32 0, align 4
@FPU_KERN_KTHR = common dso_local global i32 0, align 4
@M_PADLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @padlock_cipher_process(%struct.padlock_session* %0, %struct.cryptodesc* %1, %struct.cryptop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.padlock_session*, align 8
  %6 = alloca %struct.cryptodesc*, align 8
  %7 = alloca %struct.cryptop*, align 8
  %8 = alloca %union.padlock_cw*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.padlock_session* %0, %struct.padlock_session** %5, align 8
  store %struct.cryptodesc* %1, %struct.cryptodesc** %6, align 8
  store %struct.cryptop* %2, %struct.cryptop** %7, align 8
  %14 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %15 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %16 = call i32* @padlock_cipher_alloc(%struct.cryptodesc* %14, %struct.cryptop* %15, i32* %13)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %4, align 4
  br label %246

21:                                               ; preds = %3
  %22 = load i32*, i32** %10, align 8
  %23 = call i32* @PADLOCK_ALIGN(i32* %22)
  store i32* %23, i32** %11, align 8
  %24 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %25 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %32 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %33 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %36 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @padlock_cipher_key_setup(%struct.padlock_session* %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %30, %21
  %40 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %41 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %40, i32 0, i32 4
  store %union.padlock_cw* %41, %union.padlock_cw** %8, align 8
  %42 = load %union.padlock_cw*, %union.padlock_cw** %8, align 8
  %43 = bitcast %union.padlock_cw* %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load %union.padlock_cw*, %union.padlock_cw** %8, align 8
  %45 = bitcast %union.padlock_cw* %44 to i64*
  store i64 0, i64* %45, align 8
  %46 = load %union.padlock_cw*, %union.padlock_cw** %8, align 8
  %47 = bitcast %union.padlock_cw* %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = load %union.padlock_cw*, %union.padlock_cw** %8, align 8
  %49 = bitcast %union.padlock_cw* %48 to i64*
  store i64 0, i64* %49, align 8
  %50 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %51 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %101

56:                                               ; preds = %39
  %57 = load i32, i32* @PADLOCK_DIRECTION_ENCRYPT, align 4
  %58 = load %union.padlock_cw*, %union.padlock_cw** %8, align 8
  %59 = bitcast %union.padlock_cw* %58 to i32*
  store i32 %57, i32* %59, align 8
  %60 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %61 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %12, align 8
  %63 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %64 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %56
  %70 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %71 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %74 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @AES_BLOCK_LEN, align 4
  %77 = call i32 @bcopy(i32 %72, i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %56
  %79 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %80 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %87 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %90 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %93 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @AES_BLOCK_LEN, align 4
  %96 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %97 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @crypto_copyback(i32 %88, i32 %91, i64 %94, i32 %95, i32* %98)
  br label %100

100:                                              ; preds = %85, %78
  br label %139

101:                                              ; preds = %39
  %102 = load i32, i32* @PADLOCK_DIRECTION_DECRYPT, align 4
  %103 = load %union.padlock_cw*, %union.padlock_cw** %8, align 8
  %104 = bitcast %union.padlock_cw* %103 to i32*
  store i32 %102, i32* %104, align 8
  %105 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %106 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %12, align 8
  %108 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %109 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %101
  %115 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %116 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %119 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @AES_BLOCK_LEN, align 4
  %122 = call i32 @bcopy(i32 %117, i32* %120, i32 %121)
  br label %138

123:                                              ; preds = %101
  %124 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %125 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %128 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %131 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @AES_BLOCK_LEN, align 4
  %134 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %135 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @crypto_copydata(i32 %126, i32 %129, i64 %132, i32 %133, i32* %136)
  br label %138

138:                                              ; preds = %123, %114
  br label %139

139:                                              ; preds = %138, %100
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %144 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %147 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %150 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %153 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 @crypto_copydata(i32 %145, i32 %148, i64 %151, i32 %154, i32* %155)
  br label %157

157:                                              ; preds = %142, %139
  %158 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %158, %struct.thread** %9, align 8
  %159 = load %struct.thread*, %struct.thread** %9, align 8
  %160 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %161 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @FPU_KERN_NORMAL, align 4
  %164 = load i32, i32* @FPU_KERN_KTHR, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @fpu_kern_enter(%struct.thread* %159, i32 %162, i32 %165)
  %167 = load i32*, i32** %11, align 8
  %168 = load i32*, i32** %11, align 8
  %169 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %170 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @AES_BLOCK_LEN, align 4
  %173 = sdiv i32 %171, %172
  %174 = load i32*, i32** %12, align 8
  %175 = load %union.padlock_cw*, %union.padlock_cw** %8, align 8
  %176 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %177 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @padlock_cbc(i32* %167, i32* %168, i32 %173, i32* %174, %union.padlock_cw* %175, i32* %178)
  %180 = load %struct.thread*, %struct.thread** %9, align 8
  %181 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %182 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @fpu_kern_leave(%struct.thread* %180, i32 %183)
  %185 = load i32, i32* %13, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %157
  %188 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %189 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %192 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %195 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %198 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %11, align 8
  %201 = call i32 @crypto_copyback(i32 %190, i32 %193, i64 %196, i32 %199, i32* %200)
  br label %202

202:                                              ; preds = %187, %157
  %203 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %204 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %232

209:                                              ; preds = %202
  %210 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %211 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %214 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %217 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %220 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %218, %222
  %224 = load i32, i32* @AES_BLOCK_LEN, align 4
  %225 = sext i32 %224 to i64
  %226 = sub nsw i64 %223, %225
  %227 = load i32, i32* @AES_BLOCK_LEN, align 4
  %228 = load %struct.padlock_session*, %struct.padlock_session** %5, align 8
  %229 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @crypto_copydata(i32 %212, i32 %215, i64 %226, i32 %227, i32* %230)
  br label %232

232:                                              ; preds = %209, %202
  %233 = load i32, i32* %13, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %232
  %236 = load i32*, i32** %10, align 8
  %237 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %238 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 16
  %241 = call i32 @bzero(i32* %236, i32 %240)
  %242 = load i32*, i32** %10, align 8
  %243 = load i32, i32* @M_PADLOCK, align 4
  %244 = call i32 @free(i32* %242, i32 %243)
  br label %245

245:                                              ; preds = %235, %232
  store i32 0, i32* %4, align 4
  br label %246

246:                                              ; preds = %245, %19
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local i32* @padlock_cipher_alloc(%struct.cryptodesc*, %struct.cryptop*, i32*) #1

declare dso_local i32* @PADLOCK_ALIGN(i32*) #1

declare dso_local i32 @padlock_cipher_key_setup(%struct.padlock_session*, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @crypto_copyback(i32, i32, i64, i32, i32*) #1

declare dso_local i32 @crypto_copydata(i32, i32, i64, i32, i32*) #1

declare dso_local i32 @fpu_kern_enter(%struct.thread*, i32, i32) #1

declare dso_local i32 @padlock_cbc(i32*, i32*, i32, i32*, %union.padlock_cw*, i32*) #1

declare dso_local i32 @fpu_kern_leave(%struct.thread*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
