; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2_cryptodev.c_blake2_cipher_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2_cryptodev.c_blake2_cipher_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blake2_session = type { i32, i64, i32, i32 }
%struct.cryptop = type { i32, i32, %struct.cryptodesc* }
%struct.cryptodesc = type { i64, i32, i32, i32 }
%union.anon = type { i32 }
%struct.fpu_kern_ctx = type { i32 }

@BLAKE2B_OUTBYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@FPU_KERN_NORMAL = common dso_local global i32 0, align 4
@FPU_KERN_KTHR = common dso_local global i32 0, align 4
@blake2b_applicator = common dso_local global i32 0, align 4
@BLAKE2S_OUTBYTES = common dso_local global i64 0, align 8
@blake2s_applicator = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blake2_session*, %struct.cryptop*)* @blake2_cipher_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blake2_cipher_process(%struct.blake2_session* %0, %struct.cryptop* %1) #0 {
  %3 = alloca %struct.blake2_session*, align 8
  %4 = alloca %struct.cryptop*, align 8
  %5 = alloca %union.anon, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fpu_kern_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cryptodesc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.blake2_session* %0, %struct.blake2_session** %3, align 8
  store %struct.cryptop* %1, %struct.cryptop** %4, align 8
  %15 = load i32, i32* @BLAKE2B_OUTBYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %20 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %19, i32 0, i32 2
  %21 = load %struct.cryptodesc*, %struct.cryptodesc** %20, align 8
  store %struct.cryptodesc* %21, %struct.cryptodesc** %11, align 8
  store %struct.fpu_kern_ctx* null, %struct.fpu_kern_ctx** %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %12, align 4
  %23 = call i32 @is_fpu_kern_thread(i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %29 = call i32 @ACQUIRE_CTX(i32 %27, %struct.fpu_kern_ctx* %28)
  %30 = load i32, i32* @curthread, align 4
  %31 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %32 = load i32, i32* @FPU_KERN_NORMAL, align 4
  %33 = load i32, i32* @FPU_KERN_KTHR, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @fpu_kern_enter(i32 %30, %struct.fpu_kern_ctx* %31, i32 %34)
  br label %36

36:                                               ; preds = %26, %2
  %37 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %38 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %185

42:                                               ; preds = %36
  %43 = load %struct.blake2_session*, %struct.blake2_session** %3, align 8
  %44 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %171 [
    i32 129, label %46
    i32 128, label %109
  ]

46:                                               ; preds = %42
  %47 = load %struct.blake2_session*, %struct.blake2_session** %3, align 8
  %48 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.blake2_session*, %struct.blake2_session** %3, align 8
  %53 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %14, align 8
  br label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @BLAKE2B_OUTBYTES, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %14, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.blake2_session*, %struct.blake2_session** %3, align 8
  %60 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = bitcast %union.anon* %5 to i32*
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.blake2_session*, %struct.blake2_session** %3, align 8
  %67 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.blake2_session*, %struct.blake2_session** %3, align 8
  %70 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @blake2b_init_key(i32* %64, i64 %65, i32 %68, i32 %71)
  store i32 %72, i32* %13, align 4
  br label %77

73:                                               ; preds = %58
  %74 = bitcast %union.anon* %5 to i32*
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @blake2b_init(i32* %74, i64 %75)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %73, %63
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %185

81:                                               ; preds = %77
  %82 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %83 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %86 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %89 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %92 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @blake2b_applicator, align 4
  %95 = bitcast %union.anon* %5 to i32*
  %96 = call i32 @crypto_apply(i32 %84, i32 %87, i32 %90, i32 %93, i32 %94, i32* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %81
  br label %185

100:                                              ; preds = %81
  %101 = bitcast %union.anon* %5 to i32*
  %102 = load i64, i64* %14, align 8
  %103 = call i32 @blake2b_final(i32* %101, i8* %18, i64 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @EINVAL, align 4
  store i32 %107, i32* %12, align 4
  br label %185

108:                                              ; preds = %100
  br label %173

109:                                              ; preds = %42
  %110 = load %struct.blake2_session*, %struct.blake2_session** %3, align 8
  %111 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.blake2_session*, %struct.blake2_session** %3, align 8
  %116 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %14, align 8
  br label %120

118:                                              ; preds = %109
  %119 = load i64, i64* @BLAKE2S_OUTBYTES, align 8
  store i64 %119, i64* %14, align 8
  br label %120

120:                                              ; preds = %118, %114
  %121 = load %struct.blake2_session*, %struct.blake2_session** %3, align 8
  %122 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = bitcast %union.anon* %5 to i32*
  %127 = load i64, i64* %14, align 8
  %128 = load %struct.blake2_session*, %struct.blake2_session** %3, align 8
  %129 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.blake2_session*, %struct.blake2_session** %3, align 8
  %132 = getelementptr inbounds %struct.blake2_session, %struct.blake2_session* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @blake2s_init_key(i32* %126, i64 %127, i32 %130, i32 %133)
  store i32 %134, i32* %13, align 4
  br label %139

135:                                              ; preds = %120
  %136 = bitcast %union.anon* %5 to i32*
  %137 = load i64, i64* %14, align 8
  %138 = call i32 @blake2s_init(i32* %136, i64 %137)
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %135, %125
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %185

143:                                              ; preds = %139
  %144 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %145 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %148 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %151 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %154 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @blake2s_applicator, align 4
  %157 = bitcast %union.anon* %5 to i32*
  %158 = call i32 @crypto_apply(i32 %146, i32 %149, i32 %152, i32 %155, i32 %156, i32* %157)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %143
  br label %185

162:                                              ; preds = %143
  %163 = bitcast %union.anon* %5 to i32*
  %164 = load i64, i64* %14, align 8
  %165 = call i32 @blake2s_final(i32* %163, i8* %18, i64 %164)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @EINVAL, align 4
  store i32 %169, i32* %12, align 4
  br label %185

170:                                              ; preds = %162
  br label %173

171:                                              ; preds = %42
  %172 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %170, %108
  %174 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %175 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.cryptop*, %struct.cryptop** %4, align 8
  %178 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %181 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i64, i64* %14, align 8
  %184 = call i32 @crypto_copyback(i32 %176, i32 %179, i32 %182, i64 %183, i8* %18)
  br label %185

185:                                              ; preds = %173, %168, %161, %142, %106, %99, %80, %41
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* @curthread, align 4
  %190 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %191 = call i32 @fpu_kern_leave(i32 %189, %struct.fpu_kern_ctx* %190)
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %8, align 8
  %194 = call i32 @RELEASE_CTX(i32 %192, %struct.fpu_kern_ctx* %193)
  br label %195

195:                                              ; preds = %188, %185
  %196 = load i32, i32* %12, align 4
  %197 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %197)
  ret i32 %196
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @is_fpu_kern_thread(i32) #2

declare dso_local i32 @ACQUIRE_CTX(i32, %struct.fpu_kern_ctx*) #2

declare dso_local i32 @fpu_kern_enter(i32, %struct.fpu_kern_ctx*, i32) #2

declare dso_local i32 @blake2b_init_key(i32*, i64, i32, i32) #2

declare dso_local i32 @blake2b_init(i32*, i64) #2

declare dso_local i32 @crypto_apply(i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @blake2b_final(i32*, i8*, i64) #2

declare dso_local i32 @blake2s_init_key(i32*, i64, i32, i32) #2

declare dso_local i32 @blake2s_init(i32*, i64) #2

declare dso_local i32 @blake2s_final(i32*, i8*, i64) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @crypto_copyback(i32, i32, i32, i64, i8*) #2

declare dso_local i32 @fpu_kern_leave(i32, %struct.fpu_kern_ctx*) #2

declare dso_local i32 @RELEASE_CTX(i32, %struct.fpu_kern_ctx*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
