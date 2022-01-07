; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_b64.c_b64_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_b64.c_b64_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i32, i32, i32, i64 }

@B64_NONE = common dso_local global i32 0, align 4
@BIO_FLAGS_BASE64_NO_NL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i8*)* @b64_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @b64_ctrl(i32* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 1, i64* %11, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @BIO_get_data(i32* %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32* @BIO_next(i32* %17)
  store i32* %18, i32** %13, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %20 = icmp eq %struct.TYPE_2__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %13, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %4
  store i64 0, i64* %5, align 8
  br label %224

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %216 [
    i32 131, label %27
    i32 136, label %40
    i32 129, label %53
    i32 132, label %96
    i32 135, label %122
    i32 128, label %204
    i32 137, label %214
    i32 133, label %215
    i32 134, label %215
    i32 130, label %215
  ]

27:                                               ; preds = %25
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @B64_NONE, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @BIO_ctrl(i32* %35, i32 %36, i64 %37, i8* %38)
  store i64 %39, i64* %11, align 8
  br label %222

40:                                               ; preds = %25
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i64 1, i64* %11, align 8
  br label %52

46:                                               ; preds = %40
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @BIO_ctrl(i32* %47, i32 %48, i64 %49, i8* %50)
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %46, %45
  br label %222

53:                                               ; preds = %25
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @OPENSSL_assert(i32 %61)
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %53
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @B64_NONE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @EVP_ENCODE_CTX_num(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i64 1, i64* %11, align 8
  br label %95

85:                                               ; preds = %78, %72, %53
  %86 = load i64, i64* %11, align 8
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i64, i64* %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i64 @BIO_ctrl(i32* %89, i32 %90, i64 %91, i8* %92)
  store i64 %93, i64* %11, align 8
  br label %94

94:                                               ; preds = %88, %85
  br label %95

95:                                               ; preds = %94, %84
  br label %222

96:                                               ; preds = %25
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %99, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @OPENSSL_assert(i32 %104)
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  store i64 %112, i64* %11, align 8
  %113 = load i64, i64* %11, align 8
  %114 = icmp sle i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %96
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i64, i64* %8, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = call i64 @BIO_ctrl(i32* %116, i32 %117, i64 %118, i8* %119)
  store i64 %120, i64* %11, align 8
  br label %121

121:                                              ; preds = %115, %96
  br label %222

122:                                              ; preds = %25
  br label %123

123:                                              ; preds = %184, %152, %122
  br label %124

124:                                              ; preds = %140, %123
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %124
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @b64_write(i32* %133, i32* null, i32 0)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %5, align 8
  br label %224

140:                                              ; preds = %132
  br label %124

141:                                              ; preds = %124
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @BIO_get_flags(i32* %142)
  %144 = load i32, i32* @BIO_FLAGS_BASE64_NO_NL, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %172

147:                                              ; preds = %141
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %147
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i8*
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @EVP_EncodeBlock(i8* %156, i8* %160, i32 %163)
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 2
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 3
  store i64 0, i64* %168, align 8
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 7
  store i32 0, i32* %170, align 8
  br label %123

171:                                              ; preds = %147
  br label %198

172:                                              ; preds = %141
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @B64_NONE, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %197

178:                                              ; preds = %172
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @EVP_ENCODE_CTX_num(i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %178
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 3
  store i64 0, i64* %186, align 8
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i8*
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 2
  %196 = call i32 @EVP_EncodeFinal(i32 %189, i8* %193, i64* %195)
  br label %123

197:                                              ; preds = %178, %172
  br label %198

198:                                              ; preds = %197, %171
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load i64, i64* %8, align 8
  %202 = load i8*, i8** %9, align 8
  %203 = call i64 @BIO_ctrl(i32* %199, i32 %200, i64 %201, i8* %202)
  store i64 %203, i64* %11, align 8
  br label %222

204:                                              ; preds = %25
  %205 = load i32*, i32** %6, align 8
  %206 = call i32 @BIO_clear_retry_flags(i32* %205)
  %207 = load i32*, i32** %13, align 8
  %208 = load i32, i32* %7, align 4
  %209 = load i64, i64* %8, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = call i64 @BIO_ctrl(i32* %207, i32 %208, i64 %209, i8* %210)
  store i64 %211, i64* %11, align 8
  %212 = load i32*, i32** %6, align 8
  %213 = call i32 @BIO_copy_next_retry(i32* %212)
  br label %222

214:                                              ; preds = %25
  br label %222

215:                                              ; preds = %25, %25, %25
  br label %216

216:                                              ; preds = %25, %215
  %217 = load i32*, i32** %13, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load i64, i64* %8, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = call i64 @BIO_ctrl(i32* %217, i32 %218, i64 %219, i8* %220)
  store i64 %221, i64* %11, align 8
  br label %222

222:                                              ; preds = %216, %214, %204, %198, %121, %95, %52, %27
  %223 = load i64, i64* %11, align 8
  store i64 %223, i64* %5, align 8
  br label %224

224:                                              ; preds = %222, %137, %24
  %225 = load i64, i64* %5, align 8
  ret i64 %225
}

declare dso_local i64 @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i64 @BIO_ctrl(i32*, i32, i64, i8*) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @EVP_ENCODE_CTX_num(i32) #1

declare dso_local i32 @b64_write(i32*, i32*, i32) #1

declare dso_local i32 @BIO_get_flags(i32*) #1

declare dso_local i64 @EVP_EncodeBlock(i8*, i8*, i32) #1

declare dso_local i32 @EVP_EncodeFinal(i32, i8*, i64*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
