; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_secretstream/xchacha20poly1305/extr_secretstream_xchacha20poly1305.c_crypto_secretstream_xchacha20poly1305_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_secretstream/xchacha20poly1305/extr_secretstream_xchacha20poly1305.c_crypto_secretstream_xchacha20poly1305_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8
@_pad0 = common dso_local global i8* null, align 8
@crypto_onetimeauth_poly1305_BYTES = common dso_local global i64 0, align 8
@crypto_secretstream_xchacha20poly1305_INONCEBYTES = common dso_local global i64 0, align 8
@crypto_secretstream_xchacha20poly1305_COUNTERBYTES = common dso_local global i32 0, align 4
@crypto_secretstream_xchacha20poly1305_TAG_REKEY = common dso_local global i8 0, align 1
@crypto_secretstream_xchacha20poly1305_ABYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_secretstream_xchacha20poly1305_push(%struct.TYPE_6__* %0, i8* %1, i64* %2, i8* %3, i64 %4, i8* %5, i64 %6, i8 zeroext %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca [64 x i8], align 16
  %19 = alloca [8 x i8], align 1
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64* %2, i64** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i8 %7, i8* %16, align 1
  %22 = load i64*, i64** %11, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i64*, i64** %11, align 8
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %24, %8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @sodium_misuse()
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @crypto_stream_chacha20_ietf(i8* %33, i32 64, i32 %36, i32 %39)
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %42 = call i32 @crypto_onetimeauth_poly1305_init(i8* %17, i8* %41)
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %44 = call i32 @sodium_memzero(i8* %43, i32 64)
  %45 = load i8*, i8** %14, align 8
  %46 = load i64, i64* %15, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %45, i32 %47)
  %49 = load i8*, i8** @_pad0, align 8
  %50 = load i64, i64* %15, align 8
  %51 = sub i64 16, %50
  %52 = and i64 %51, 15
  %53 = trunc i64 %52 to i32
  %54 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %49, i32 %53)
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %56 = call i32 @memset(i8* %55, i32 0, i32 64)
  %57 = load i8, i8* %16, align 1
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  store i8 %57, i8* %58, align 16
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @crypto_stream_chacha20_ietf_xor_ic(i8* %59, i8* %60, i64 64, i32 %63, i32 1, i32 %66)
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %69 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %68, i32 64)
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %71 = load i8, i8* %70, align 16
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 %71, i8* %73, align 1
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %75, i8** %20, align 8
  %76 = load i8*, i8** %20, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @crypto_stream_chacha20_ietf_xor_ic(i8* %76, i8* %77, i64 %78, i32 %81, i32 2, i32 %84)
  %86 = load i8*, i8** %20, align 8
  %87 = load i64, i64* %13, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %86, i32 %88)
  %90 = load i8*, i8** @_pad0, align 8
  %91 = load i64, i64* %13, align 8
  %92 = add i64 -48, %91
  %93 = and i64 %92, 15
  %94 = trunc i64 %93 to i32
  %95 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %90, i32 %94)
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %97 = load i64, i64* %15, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @STORE64_LE(i8* %96, i32 %98)
  %100 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %101 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %100, i32 8)
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %103 = load i64, i64* %13, align 8
  %104 = add i64 64, %103
  %105 = trunc i64 %104 to i32
  %106 = call i32 @STORE64_LE(i8* %102, i32 %105)
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %108 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %107, i32 8)
  %109 = load i8*, i8** %20, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %21, align 8
  %112 = load i8*, i8** %21, align 8
  %113 = call i32 @crypto_onetimeauth_poly1305_final(i8* %17, i8* %112)
  %114 = call i32 @sodium_memzero(i8* %17, i32 1)
  %115 = load i64, i64* @crypto_onetimeauth_poly1305_BYTES, align 8
  %116 = load i64, i64* @crypto_secretstream_xchacha20poly1305_INONCEBYTES, align 8
  %117 = icmp sge i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @COMPILER_ASSERT(i32 %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %121 = call i32 @STATE_INONCE(%struct.TYPE_6__* %120)
  %122 = load i8*, i8** %21, align 8
  %123 = load i64, i64* @crypto_secretstream_xchacha20poly1305_INONCEBYTES, align 8
  %124 = call i32 @XOR_BUF(i32 %121, i8* %122, i64 %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %126 = call i32 @STATE_COUNTER(%struct.TYPE_6__* %125)
  %127 = load i32, i32* @crypto_secretstream_xchacha20poly1305_COUNTERBYTES, align 4
  %128 = call i32 @sodium_increment(i32 %126, i32 %127)
  %129 = load i8, i8* %16, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* @crypto_secretstream_xchacha20poly1305_TAG_REKEY, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %32
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %137 = call i32 @STATE_COUNTER(%struct.TYPE_6__* %136)
  %138 = load i32, i32* @crypto_secretstream_xchacha20poly1305_COUNTERBYTES, align 4
  %139 = call i64 @sodium_is_zero(i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135, %32
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %143 = call i32 @crypto_secretstream_xchacha20poly1305_rekey(%struct.TYPE_6__* %142)
  br label %144

144:                                              ; preds = %141, %135
  %145 = load i64*, i64** %11, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i64, i64* @crypto_secretstream_xchacha20poly1305_ABYTES, align 8
  %149 = load i64, i64* %13, align 8
  %150 = add i64 %148, %149
  %151 = load i64*, i64** %11, align 8
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %147, %144
  ret i32 0
}

declare dso_local i32 @sodium_misuse(...) #1

declare dso_local i32 @crypto_stream_chacha20_ietf(i8*, i32, i32, i32) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_init(i8*, i8*) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_update(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @crypto_stream_chacha20_ietf_xor_ic(i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @STORE64_LE(i8*, i32) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_final(i8*, i8*) #1

declare dso_local i32 @COMPILER_ASSERT(i32) #1

declare dso_local i32 @XOR_BUF(i32, i8*, i64) #1

declare dso_local i32 @STATE_INONCE(%struct.TYPE_6__*) #1

declare dso_local i32 @sodium_increment(i32, i32) #1

declare dso_local i32 @STATE_COUNTER(%struct.TYPE_6__*) #1

declare dso_local i64 @sodium_is_zero(i32, i32) #1

declare dso_local i32 @crypto_secretstream_xchacha20poly1305_rekey(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
