; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_secretstream/xchacha20poly1305/extr_secretstream_xchacha20poly1305.c_crypto_secretstream_xchacha20poly1305_pull.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_secretstream/xchacha20poly1305/extr_secretstream_xchacha20poly1305.c_crypto_secretstream_xchacha20poly1305_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@crypto_onetimeauth_poly1305_BYTES = common dso_local global i32 0, align 4
@crypto_secretstream_xchacha20poly1305_ABYTES = common dso_local global i64 0, align 8
@crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8
@_pad0 = common dso_local global i8* null, align 8
@crypto_secretstream_xchacha20poly1305_INONCEBYTES = common dso_local global i32 0, align 4
@crypto_secretstream_xchacha20poly1305_COUNTERBYTES = common dso_local global i32 0, align 4
@crypto_secretstream_xchacha20poly1305_TAG_REKEY = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_secretstream_xchacha20poly1305_pull(%struct.TYPE_6__* %0, i8* %1, i64* %2, i8* %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca [64 x i8], align 16
  %20 = alloca [8 x i8], align 1
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8, align 1
  %27 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64* %2, i64** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %28 = load i32, i32* @crypto_onetimeauth_poly1305_BYTES, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %21, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %22, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i64*, i64** %12, align 8
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %34, %8
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i8*, i8** %13, align 8
  store i8 -1, i8* %40, align 1
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* @crypto_secretstream_xchacha20poly1305_ABYTES, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %185

46:                                               ; preds = %41
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* @crypto_secretstream_xchacha20poly1305_ABYTES, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %25, align 8
  %50 = load i64, i64* %25, align 8
  %51 = load i64, i64* @crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 (...) @sodium_misuse()
  br label %55

55:                                               ; preds = %53, %46
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @crypto_stream_chacha20_ietf(i8* %56, i32 64, i32 %59, i32 %62)
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %65 = call i32 @crypto_onetimeauth_poly1305_init(i8* %18, i8* %64)
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %67 = call i32 @sodium_memzero(i8* %66, i32 64)
  %68 = load i8*, i8** %16, align 8
  %69 = load i64, i64* %17, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @crypto_onetimeauth_poly1305_update(i8* %18, i8* %68, i32 %70)
  %72 = load i8*, i8** @_pad0, align 8
  %73 = load i64, i64* %17, align 8
  %74 = sub i64 16, %73
  %75 = and i64 %74, 15
  %76 = trunc i64 %75 to i32
  %77 = call i32 @crypto_onetimeauth_poly1305_update(i8* %18, i8* %72, i32 %76)
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %79 = call i32 @memset(i8* %78, i32 0, i32 64)
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  store i8 %82, i8* %83, align 16
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @crypto_stream_chacha20_ietf_xor_ic(i8* %84, i8* %85, i64 64, i32 %88, i32 1, i32 %91)
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %94 = load i8, i8* %93, align 16
  store i8 %94, i8* %26, align 1
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  store i8 %97, i8* %98, align 16
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %100 = call i32 @crypto_onetimeauth_poly1305_update(i8* %18, i8* %99, i32 64)
  %101 = load i8*, i8** %14, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8* %102, i8** %23, align 8
  %103 = load i8*, i8** %23, align 8
  %104 = load i64, i64* %25, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @crypto_onetimeauth_poly1305_update(i8* %18, i8* %103, i32 %105)
  %107 = load i8*, i8** @_pad0, align 8
  %108 = load i64, i64* %25, align 8
  %109 = add i64 -48, %108
  %110 = and i64 %109, 15
  %111 = trunc i64 %110 to i32
  %112 = call i32 @crypto_onetimeauth_poly1305_update(i8* %18, i8* %107, i32 %111)
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 0
  %114 = load i64, i64* %17, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @STORE64_LE(i8* %113, i32 %115)
  %117 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 0
  %118 = call i32 @crypto_onetimeauth_poly1305_update(i8* %18, i8* %117, i32 8)
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 0
  %120 = load i64, i64* %25, align 8
  %121 = add i64 64, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @STORE64_LE(i8* %119, i32 %122)
  %124 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i64 0, i64 0
  %125 = call i32 @crypto_onetimeauth_poly1305_update(i8* %18, i8* %124, i32 8)
  %126 = call i32 @crypto_onetimeauth_poly1305_final(i8* %18, i8* %31)
  %127 = call i32 @sodium_memzero(i8* %18, i32 1)
  %128 = load i8*, i8** %23, align 8
  %129 = load i64, i64* %25, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %24, align 8
  %131 = load i8*, i8** %24, align 8
  %132 = trunc i64 %29 to i32
  %133 = call i64 @sodium_memcmp(i8* %31, i8* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %55
  %136 = trunc i64 %29 to i32
  %137 = call i32 @sodium_memzero(i8* %31, i32 %136)
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %185

138:                                              ; preds = %55
  %139 = load i8*, i8** %11, align 8
  %140 = load i8*, i8** %23, align 8
  %141 = load i64, i64* %25, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @crypto_stream_chacha20_ietf_xor_ic(i8* %139, i8* %140, i64 %141, i32 %144, i32 2, i32 %147)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = call i32 @STATE_INONCE(%struct.TYPE_6__* %149)
  %151 = load i32, i32* @crypto_secretstream_xchacha20poly1305_INONCEBYTES, align 4
  %152 = call i32 @XOR_BUF(i32 %150, i8* %31, i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %154 = call i32 @STATE_COUNTER(%struct.TYPE_6__* %153)
  %155 = load i32, i32* @crypto_secretstream_xchacha20poly1305_COUNTERBYTES, align 4
  %156 = call i32 @sodium_increment(i32 %154, i32 %155)
  %157 = load i8, i8* %26, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8, i8* @crypto_secretstream_xchacha20poly1305_TAG_REKEY, align 1
  %160 = zext i8 %159 to i32
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %138
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %165 = call i32 @STATE_COUNTER(%struct.TYPE_6__* %164)
  %166 = load i32, i32* @crypto_secretstream_xchacha20poly1305_COUNTERBYTES, align 4
  %167 = call i64 @sodium_is_zero(i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163, %138
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %171 = call i32 @crypto_secretstream_xchacha20poly1305_rekey(%struct.TYPE_6__* %170)
  br label %172

172:                                              ; preds = %169, %163
  %173 = load i64*, i64** %12, align 8
  %174 = icmp ne i64* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i64, i64* %25, align 8
  %177 = load i64*, i64** %12, align 8
  store i64 %176, i64* %177, align 8
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i8*, i8** %13, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i8, i8* %26, align 1
  %183 = load i8*, i8** %13, align 8
  store i8 %182, i8* %183, align 1
  br label %184

184:                                              ; preds = %181, %178
  store i32 0, i32* %9, align 4
  store i32 1, i32* %27, align 4
  br label %185

185:                                              ; preds = %184, %135, %45
  %186 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %9, align 4
  ret i32 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sodium_misuse(...) #2

declare dso_local i32 @crypto_stream_chacha20_ietf(i8*, i32, i32, i32) #2

declare dso_local i32 @crypto_onetimeauth_poly1305_init(i8*, i8*) #2

declare dso_local i32 @sodium_memzero(i8*, i32) #2

declare dso_local i32 @crypto_onetimeauth_poly1305_update(i8*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @crypto_stream_chacha20_ietf_xor_ic(i8*, i8*, i64, i32, i32, i32) #2

declare dso_local i32 @STORE64_LE(i8*, i32) #2

declare dso_local i32 @crypto_onetimeauth_poly1305_final(i8*, i8*) #2

declare dso_local i64 @sodium_memcmp(i8*, i8*, i32) #2

declare dso_local i32 @XOR_BUF(i32, i8*, i32) #2

declare dso_local i32 @STATE_INONCE(%struct.TYPE_6__*) #2

declare dso_local i32 @sodium_increment(i32, i32) #2

declare dso_local i32 @STATE_COUNTER(%struct.TYPE_6__*) #2

declare dso_local i64 @sodium_is_zero(i32, i32) #2

declare dso_local i32 @crypto_secretstream_xchacha20poly1305_rekey(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
