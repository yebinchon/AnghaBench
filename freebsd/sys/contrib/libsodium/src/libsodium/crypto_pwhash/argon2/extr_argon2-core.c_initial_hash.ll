; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-core.c_initial_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-core.c_initial_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }

@ARGON2_PREHASH_DIGEST_LENGTH = common dso_local global i32 0, align 4
@ARGON2_VERSION_NUMBER = common dso_local global i32 0, align 4
@ARGON2_FLAG_CLEAR_PASSWORD = common dso_local global i32 0, align 4
@ARGON2_FLAG_CLEAR_SECRET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initial_hash(i32* %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp eq %struct.TYPE_3__* null, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* null, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  br label %174

15:                                               ; preds = %11
  %16 = load i32, i32* @ARGON2_PREHASH_DIGEST_LENGTH, align 4
  %17 = call i32 @crypto_generichash_blake2b_init(i32* %7, i32* null, i32 0, i32 %16)
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @STORE32_LE(i32* %18, i32 %21)
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %24 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %23, i32 16)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @STORE32_LE(i32* %25, i32 %28)
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %31 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %30, i32 16)
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @STORE32_LE(i32* %32, i32 %35)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %38 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %37, i32 16)
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @STORE32_LE(i32* %39, i32 %42)
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %45 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %44, i32 16)
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %47 = load i32, i32* @ARGON2_VERSION_NUMBER, align 4
  %48 = call i32 @STORE32_LE(i32* %46, i32 %47)
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %50 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %49, i32 16)
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @STORE32_LE(i32* %51, i32 %53)
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %56 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %55, i32 16)
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @STORE32_LE(i32* %57, i32 %60)
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %63 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %62, i32 16)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 12
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %15
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 12
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %71, i32 %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ARGON2_FLAG_CLEAR_PASSWORD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %68
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 12
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @sodium_memzero(i32* %85, i32 %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %82, %68
  br label %93

93:                                               ; preds = %92, %15
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @STORE32_LE(i32* %94, i32 %97)
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %100 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %99, i32 16)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 11
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %93
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 11
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %108, i32 %111)
  br label %113

113:                                              ; preds = %105, %93
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @STORE32_LE(i32* %114, i32 %117)
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %120 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %119, i32 16)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 10
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %150

125:                                              ; preds = %113
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 10
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %128, i32 %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ARGON2_FLAG_CLEAR_SECRET, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %125
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 10
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @sodium_memzero(i32* %142, i32 %145)
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 7
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %139, %125
  br label %150

150:                                              ; preds = %149, %113
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @STORE32_LE(i32* %151, i32 %154)
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %157 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %156, i32 16)
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 9
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %150
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 9
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @crypto_generichash_blake2b_update(i32* %7, i32* %165, i32 %168)
  br label %170

170:                                              ; preds = %162, %150
  %171 = load i32*, i32** %4, align 8
  %172 = load i32, i32* @ARGON2_PREHASH_DIGEST_LENGTH, align 4
  %173 = call i32 @crypto_generichash_blake2b_final(i32* %7, i32* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %14
  ret void
}

declare dso_local i32 @crypto_generichash_blake2b_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @STORE32_LE(i32*, i32) #1

declare dso_local i32 @crypto_generichash_blake2b_update(i32*, i32*, i32) #1

declare dso_local i32 @sodium_memzero(i32*, i32) #1

declare dso_local i32 @crypto_generichash_blake2b_final(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
