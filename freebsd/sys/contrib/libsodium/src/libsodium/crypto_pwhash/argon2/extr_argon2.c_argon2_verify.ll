; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2.c_argon2_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2.c_argon2_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i8*, i32*, i32*, i8*, i32, i32, i32, i8*, i64, i32*, i64, i32* }

@UINT32_MAX = common dso_local global i64 0, align 8
@ARGON2_DECODING_LENGTH_FAIL = common dso_local global i32 0, align 4
@ARGON2_MEMORY_ALLOCATION_ERROR = common dso_local global i32 0, align 4
@ARGON2_OK = common dso_local global i32 0, align 4
@ARGON2_VERIFY_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @argon2_verify(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = call i32 @memset(%struct.TYPE_4__* %10, i32 0, i32 96)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 12
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 11
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 10
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 9
  store i64 0, i64* %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* @UINT32_MAX, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @ARGON2_DECODING_LENGTH_FAIL, align 4
  store i32 %26, i32* %5, align 4
  br label %156

27:                                               ; preds = %4
  %28 = load i64, i64* %14, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 8
  store i8* %29, i8** %30, align 8
  %31 = load i64, i64* %14, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  store i8* %32, i8** %33, align 8
  %34 = load i64, i64* %14, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @malloc(i8* %38)
  %40 = inttoptr i64 %39 to i32*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32* %40, i32** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @malloc(i8* %43)
  %45 = inttoptr i64 %44 to i32*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32* %45, i32** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @malloc(i8* %48)
  %50 = inttoptr i64 %49 to i32*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32* %50, i32** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %27
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %59, %55, %27
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @free(i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @free(i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @free(i32* %71)
  %73 = load i32, i32* @ARGON2_MEMORY_ALLOCATION_ERROR, align 4
  store i32 %73, i32* %5, align 4
  br label %156

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @malloc(i8* %76)
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %11, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @free(i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @free(i32* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @free(i32* %89)
  %91 = load i32, i32* @ARGON2_MEMORY_ALLOCATION_ERROR, align 4
  store i32 %91, i32* %5, align 4
  br label %156

92:                                               ; preds = %74
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @decode_string(%struct.TYPE_4__* %10, i8* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @ARGON2_OK, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @free(i32* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @free(i32* %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @free(i32* %107)
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @free(i32* %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %5, align 4
  br label %156

112:                                              ; preds = %92
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %124 = load i8*, i8** %123, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @argon2_hash(i32 %114, i32 %116, i32 %118, i8* %119, i64 %120, i32* %122, i8* %124, i32* %125, i8* %127, i32* null, i32 0, i32 %128)
  store i32 %129, i32* %13, align 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @free(i32* %131)
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @free(i32* %134)
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @ARGON2_OK, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %147, label %139

139:                                              ; preds = %112
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @sodium_memcmp(i32* %140, i32* %142, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %139, %112
  %148 = load i32, i32* @ARGON2_VERIFY_MISMATCH, align 4
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %147, %139
  %150 = load i32*, i32** %11, align 8
  %151 = call i32 @free(i32* %150)
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @free(i32* %153)
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %149, %99, %81, %63, %25
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @decode_string(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @argon2_hash(i32, i32, i32, i8*, i64, i32*, i8*, i32*, i8*, i32*, i32, i32) #1

declare dso_local i64 @sodium_memcmp(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
