; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_enc.c_EVP_DecryptFinal_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_enc.c_EVP_DecryptFinal_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__*, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_6__*, i8*, i32*, i32)*, i32 }

@EVP_F_EVP_DECRYPTFINAL_EX = common dso_local global i32 0, align 4
@EVP_R_INVALID_OPERATION = common dso_local global i32 0, align 4
@EVP_CIPH_FLAG_CUSTOM_CIPHER = common dso_local global i32 0, align 4
@EVP_CIPH_NO_PADDING = common dso_local global i32 0, align 4
@EVP_R_DATA_NOT_MULTIPLE_OF_BLOCK_LENGTH = common dso_local global i32 0, align 4
@EVP_R_WRONG_FINAL_BLOCK_LENGTH = common dso_local global i32 0, align 4
@EVP_R_BAD_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DecryptFinal_ex(%struct.TYPE_6__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %17 = load i32, i32* @EVP_R_INVALID_OPERATION, align 4
  %18 = call i32 @EVPerr(i32 %16, i32 %17)
  store i32 0, i32* %4, align 4
  br label %167

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @EVP_CIPH_FLAG_CUSTOM_CIPHER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %19
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32 (%struct.TYPE_6__*, i8*, i32*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32*, i32)** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 %34(%struct.TYPE_6__* %35, i8* %36, i32* null, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %167

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %167

45:                                               ; preds = %19
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @EVP_CIPH_NO_PADDING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %45
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %64 = load i32, i32* @EVP_R_DATA_NOT_MULTIPLE_OF_BLOCK_LENGTH, align 4
  %65 = call i32 @EVPerr(i32 %63, i32 %64)
  store i32 0, i32* %4, align 4
  br label %167

66:                                               ; preds = %57
  %67 = load i32*, i32** %7, align 8
  store i32 0, i32* %67, align 4
  store i32 1, i32* %4, align 4
  br label %167

68:                                               ; preds = %45
  %69 = load i32, i32* %10, align 4
  %70 = icmp ugt i32 %69, 1
  br i1 %70, label %71, label %164

71:                                               ; preds = %68
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76, %71
  %82 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %83 = load i32, i32* @EVP_R_WRONG_FINAL_BLOCK_LENGTH, align 4
  %84 = call i32 @EVPerr(i32 %82, i32 %83)
  store i32 0, i32* %4, align 4
  br label %167

85:                                               ; preds = %76
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = icmp ule i64 %87, 8
  %89 = zext i1 %88 to i32
  %90 = call i32 @OPENSSL_assert(i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sub i32 %94, 1
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101, %85
  %106 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %107 = load i32, i32* @EVP_R_BAD_DECRYPT, align 4
  %108 = call i32 @EVPerr(i32 %106, i32 %107)
  store i32 0, i32* %4, align 4
  br label %167

109:                                              ; preds = %101
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %130, %109
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = add i32 %118, -1
  store i32 %119, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load i32, i32* @EVP_F_EVP_DECRYPTFINAL_EX, align 4
  %127 = load i32, i32* @EVP_R_BAD_DECRYPT, align 4
  %128 = call i32 @EVPerr(i32 %126, i32 %127)
  store i32 0, i32* %4, align 4
  br label %167

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %110

133:                                              ; preds = %110
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sub i32 %138, %139
  store i32 %140, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %158, %133
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %141
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %6, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 %153, i8* %157, align 1
  br label %158

158:                                              ; preds = %145
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %141

161:                                              ; preds = %141
  %162 = load i32, i32* %9, align 4
  %163 = load i32*, i32** %7, align 8
  store i32 %162, i32* %163, align 4
  br label %166

164:                                              ; preds = %68
  %165 = load i32*, i32** %7, align 8
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %164, %161
  store i32 1, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %125, %105, %81, %66, %62, %44, %40, %15
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
