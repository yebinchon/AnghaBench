; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_crypto_scrypt-common.c_escrypt_gensalt_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_crypto_scrypt-common.c_escrypt_gensalt_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itoa64 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @escrypt_gensalt_r(i32 %0, i32 %1, i32 %2, i64* %3, i64 %4, i64* %5, i64 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 14, i64* %17, align 8
  %20 = load i64, i64* %13, align 8
  %21 = call i64 @BYTES2CHARS(i64 %20)
  store i64 %21, i64* %18, align 8
  %22 = load i64, i64* %17, align 8
  %23 = load i64, i64* %18, align 8
  %24 = add i64 %22, %23
  %25 = add i64 %24, 1
  store i64 %25, i64* %19, align 8
  %26 = load i64, i64* %19, align 8
  %27 = load i64, i64* %15, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %7
  %30 = load i64, i64* %19, align 8
  %31 = load i64, i64* %18, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %18, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %29, %7
  store i64* null, i64** %8, align 8
  br label %117

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 63
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = mul i32 %42, %43
  %45 = icmp uge i32 %44, 1073741824
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %38
  store i64* null, i64** %8, align 8
  br label %117

47:                                               ; preds = %41
  %48 = load i64*, i64** %14, align 8
  store i64* %48, i64** %16, align 8
  %49 = load i64*, i64** %16, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %16, align 8
  store i64 36, i64* %49, align 8
  %51 = load i64*, i64** %16, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %16, align 8
  store i64 55, i64* %51, align 8
  %53 = load i64*, i64** %16, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %16, align 8
  store i64 36, i64* %53, align 8
  %55 = load i32*, i32** @itoa64, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %16, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %16, align 8
  store i64 %60, i64* %61, align 8
  %63 = load i64*, i64** %16, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64*, i64** %16, align 8
  %66 = load i64*, i64** %14, align 8
  %67 = ptrtoint i64* %65 to i64
  %68 = ptrtoint i64* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 8
  %71 = sub i64 %64, %70
  %72 = load i32, i32* %10, align 4
  %73 = call i64* @encode64_uint32(i64* %63, i64 %71, i32 %72, i32 30)
  store i64* %73, i64** %16, align 8
  %74 = load i64*, i64** %16, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %47
  store i64* null, i64** %8, align 8
  br label %117

77:                                               ; preds = %47
  %78 = load i64*, i64** %16, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64*, i64** %16, align 8
  %81 = load i64*, i64** %14, align 8
  %82 = ptrtoint i64* %80 to i64
  %83 = ptrtoint i64* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 8
  %86 = sub i64 %79, %85
  %87 = load i32, i32* %11, align 4
  %88 = call i64* @encode64_uint32(i64* %78, i64 %86, i32 %87, i32 30)
  store i64* %88, i64** %16, align 8
  %89 = load i64*, i64** %16, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %77
  store i64* null, i64** %8, align 8
  br label %117

92:                                               ; preds = %77
  %93 = load i64*, i64** %16, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load i64*, i64** %16, align 8
  %96 = load i64*, i64** %14, align 8
  %97 = ptrtoint i64* %95 to i64
  %98 = ptrtoint i64* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 8
  %101 = sub i64 %94, %100
  %102 = load i64*, i64** %12, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i64* @encode64(i64* %93, i64 %101, i64* %102, i64 %103)
  store i64* %104, i64** %16, align 8
  %105 = load i64*, i64** %16, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %92
  %108 = load i64*, i64** %16, align 8
  %109 = load i64*, i64** %14, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = icmp uge i64* %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107, %92
  store i64* null, i64** %8, align 8
  br label %117

114:                                              ; preds = %107
  %115 = load i64*, i64** %16, align 8
  store i64 0, i64* %115, align 8
  %116 = load i64*, i64** %14, align 8
  store i64* %116, i64** %8, align 8
  br label %117

117:                                              ; preds = %114, %113, %91, %76, %46, %37
  %118 = load i64*, i64** %8, align 8
  ret i64* %118
}

declare dso_local i64 @BYTES2CHARS(i64) #1

declare dso_local i64* @encode64_uint32(i64*, i64, i32, i32) #1

declare dso_local i64* @encode64(i64*, i64, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
