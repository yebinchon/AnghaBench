; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_enc.c_enc_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_enc.c_enc_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i32*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i8*)* @enc_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enc_ctrl(i32* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 1, i64* %13, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.TYPE_3__* @BIO_get_data(i32* %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %11, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @BIO_next(i32* %19)
  store i32* %20, i32** %16, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %22 = icmp eq %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %206

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %198 [
    i32 132, label %26
    i32 135, label %47
    i32 131, label %60
    i32 133, label %77
    i32 134, label %94
    i32 128, label %147
    i32 130, label %152
    i32 129, label %162
    i32 136, label %171
  ]

26:                                               ; preds = %24
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %36)
  %38 = call i32 @EVP_CipherInit_ex(i32* %33, i32* null, i32* null, i32* null, i32* null, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  store i64 0, i64* %5, align 8
  br label %206

41:                                               ; preds = %26
  %42 = load i32*, i32** %16, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @BIO_ctrl(i32* %42, i32 %43, i64 %44, i8* %45)
  store i64 %46, i64* %13, align 8
  br label %204

47:                                               ; preds = %24
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i64 1, i64* %13, align 8
  br label %59

53:                                               ; preds = %47
  %54 = load i32*, i32** %16, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i64, i64* %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @BIO_ctrl(i32* %54, i32 %55, i64 %56, i8* %57)
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %53, %52
  br label %204

60:                                               ; preds = %24
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i64, i64* %8, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i64 @BIO_ctrl(i32* %71, i32 %72, i64 %73, i8* %74)
  store i64 %75, i64* %13, align 8
  br label %76

76:                                               ; preds = %70, %60
  br label %204

77:                                               ; preds = %24
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp sle i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i64, i64* %8, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i64 @BIO_ctrl(i32* %88, i32 %89, i64 %90, i8* %91)
  store i64 %92, i64* %13, align 8
  br label %93

93:                                               ; preds = %87, %77
  br label %204

94:                                               ; preds = %24
  br label %95

95:                                               ; preds = %140, %94
  br label %96

96:                                               ; preds = %112, %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @enc_write(i32* %105, i32* null, i32 0)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %5, align 8
  br label %206

112:                                              ; preds = %104
  br label %96

113:                                              ; preds = %96
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %141, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = call i64 @EVP_CipherFinal_ex(i32* %125, i8* %129, i64* %131)
  store i64 %132, i64* %13, align 8
  %133 = load i64, i64* %13, align 8
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i64, i64* %13, align 8
  %138 = icmp sle i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %118
  br label %204

140:                                              ; preds = %118
  br label %95

141:                                              ; preds = %113
  %142 = load i32*, i32** %16, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i64, i64* %8, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = call i64 @BIO_ctrl(i32* %142, i32 %143, i64 %144, i8* %145)
  store i64 %146, i64* %13, align 8
  br label %204

147:                                              ; preds = %24
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %13, align 8
  br label %204

152:                                              ; preds = %24
  %153 = load i32*, i32** %6, align 8
  %154 = call i32 @BIO_clear_retry_flags(i32* %153)
  %155 = load i32*, i32** %16, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i64, i64* %8, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = call i64 @BIO_ctrl(i32* %155, i32 %156, i64 %157, i8* %158)
  store i64 %159, i64* %13, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @BIO_copy_next_retry(i32* %160)
  br label %204

162:                                              ; preds = %24
  %163 = load i8*, i8** %9, align 8
  %164 = bitcast i8* %163 to i32**
  store i32** %164, i32*** %15, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load i32**, i32*** %15, align 8
  store i32* %167, i32** %168, align 8
  %169 = load i32*, i32** %6, align 8
  %170 = call i32 @BIO_set_init(i32* %169, i32 1)
  br label %204

171:                                              ; preds = %24
  %172 = load i8*, i8** %9, align 8
  %173 = bitcast i8* %172 to i32*
  store i32* %173, i32** %10, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = call %struct.TYPE_3__* @BIO_get_data(i32* %174)
  store %struct.TYPE_3__* %175, %struct.TYPE_3__** %12, align 8
  %176 = call i32* (...) @EVP_CIPHER_CTX_new()
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 4
  store i32* %176, i32** %178, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %171
  store i64 0, i64* %5, align 8
  br label %206

184:                                              ; preds = %171
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = call i64 @EVP_CIPHER_CTX_copy(i32* %187, i32* %190)
  store i64 %191, i64* %13, align 8
  %192 = load i64, i64* %13, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = load i32*, i32** %10, align 8
  %196 = call i32 @BIO_set_init(i32* %195, i32 1)
  br label %197

197:                                              ; preds = %194, %184
  br label %204

198:                                              ; preds = %24
  %199 = load i32*, i32** %16, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load i64, i64* %8, align 8
  %202 = load i8*, i8** %9, align 8
  %203 = call i64 @BIO_ctrl(i32* %199, i32 %200, i64 %201, i8* %202)
  store i64 %203, i64* %13, align 8
  br label %204

204:                                              ; preds = %198, %197, %162, %152, %147, %141, %139, %93, %76, %59, %41
  %205 = load i64, i64* %13, align 8
  store i64 %205, i64* %5, align 8
  br label %206

206:                                              ; preds = %204, %183, %109, %40, %23
  %207 = load i64, i64* %5, align 8
  ret i64 %207
}

declare dso_local %struct.TYPE_3__* @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_encrypting(i32*) #1

declare dso_local i64 @BIO_ctrl(i32*, i32, i64, i8*) #1

declare dso_local i32 @enc_write(i32*, i32*, i32) #1

declare dso_local i64 @EVP_CipherFinal_ex(i32*, i8*, i64*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

declare dso_local i32 @BIO_set_init(i32*, i32) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i64 @EVP_CIPHER_CTX_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
