; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_internal.c_crypto_hash_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_internal.c_crypto_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32, i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_hash* @crypto_hash_init(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.crypto_hash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.crypto_hash*, align 8
  %9 = alloca [64 x i32], align 16
  %10 = alloca [32 x i32], align 16
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = call %struct.crypto_hash* @os_zalloc(i32 48)
  store %struct.crypto_hash* %12, %struct.crypto_hash** %8, align 8
  %13 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %14 = icmp eq %struct.crypto_hash* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.crypto_hash* null, %struct.crypto_hash** %4, align 8
  br label %170

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %19 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %165 [
    i32 132, label %21
    i32 131, label %26
    i32 135, label %31
    i32 134, label %98
  ]

21:                                               ; preds = %16
  %22 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %23 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = call i32 @MD5Init(i32* %24)
  br label %168

26:                                               ; preds = %16
  %27 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %28 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @SHA1Init(i32* %29)
  br label %168

31:                                               ; preds = %16
  %32 = load i64, i64* %7, align 8
  %33 = icmp ugt i64 %32, 256
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %36 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = call i32 @MD5Init(i32* %37)
  %39 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %40 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @MD5Update(i32* %41, i32* %42, i32 %44)
  %46 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %47 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %48 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = call i32 @MD5Final(i32* %46, i32* %49)
  %51 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  store i32* %51, i32** %6, align 8
  store i64 16, i64* %7, align 8
  br label %52

52:                                               ; preds = %34, %31
  %53 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %54 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @os_memcpy(i32* %55, i32* %56, i64 %57)
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %61 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @os_memcpy(i32* %62, i32* %63, i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = icmp ult i64 %66, 256
  br i1 %67, label %68, label %76

68:                                               ; preds = %52
  %69 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 256, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @os_memset(i32* %71, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %68, %52
  store i64 0, i64* %11, align 8
  br label %77

77:                                               ; preds = %85, %76
  %78 = load i64, i64* %11, align 8
  %79 = icmp ult i64 %78, 256
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, 54
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %11, align 8
  br label %77

88:                                               ; preds = %77
  %89 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %90 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = call i32 @MD5Init(i32* %91)
  %93 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %94 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %97 = call i32 @MD5Update(i32* %95, i32* %96, i32 256)
  br label %168

98:                                               ; preds = %16
  %99 = load i64, i64* %7, align 8
  %100 = icmp ugt i64 %99, 256
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %103 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = call i32 @SHA1Init(i32* %104)
  %106 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %107 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32*, i32** %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @SHA1Update(i32* %108, i32* %109, i32 %111)
  %113 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %114 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %115 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = call i32 @SHA1Final(i32* %113, i32* %116)
  %118 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  store i32* %118, i32** %6, align 8
  store i64 20, i64* %7, align 8
  br label %119

119:                                              ; preds = %101, %98
  %120 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %121 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @os_memcpy(i32* %122, i32* %123, i64 %124)
  %126 = load i64, i64* %7, align 8
  %127 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %128 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %130 = load i32*, i32** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @os_memcpy(i32* %129, i32* %130, i64 %131)
  %133 = load i64, i64* %7, align 8
  %134 = icmp ult i64 %133, 256
  br i1 %134, label %135, label %143

135:                                              ; preds = %119
  %136 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %137 = load i64, i64* %7, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i64, i64* %7, align 8
  %140 = sub i64 256, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32 @os_memset(i32* %138, i32 0, i32 %141)
  br label %143

143:                                              ; preds = %135, %119
  store i64 0, i64* %11, align 8
  br label %144

144:                                              ; preds = %152, %143
  %145 = load i64, i64* %11, align 8
  %146 = icmp ult i64 %145, 256
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %150, 54
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %147
  %153 = load i64, i64* %11, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %11, align 8
  br label %144

155:                                              ; preds = %144
  %156 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %157 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = call i32 @SHA1Init(i32* %158)
  %160 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %161 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %164 = call i32 @SHA1Update(i32* %162, i32* %163, i32 256)
  br label %168

165:                                              ; preds = %16
  %166 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %167 = call i32 @os_free(%struct.crypto_hash* %166)
  store %struct.crypto_hash* null, %struct.crypto_hash** %4, align 8
  br label %170

168:                                              ; preds = %155, %88, %26, %21
  %169 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  store %struct.crypto_hash* %169, %struct.crypto_hash** %4, align 8
  br label %170

170:                                              ; preds = %168, %165, %15
  %171 = load %struct.crypto_hash*, %struct.crypto_hash** %4, align 8
  ret %struct.crypto_hash* %171
}

declare dso_local %struct.crypto_hash* @os_zalloc(i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @SHA1Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @SHA1Update(i32*, i32*, i32) #1

declare dso_local i32 @SHA1Final(i32*, i32*) #1

declare dso_local i32 @os_free(%struct.crypto_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
