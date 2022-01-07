; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_ok.c_ok_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_ok.c_ok_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i8*)* @ok_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ok_ctrl(i32* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 1, i64* %13, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call %struct.TYPE_3__* @BIO_get_data(i32* %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @BIO_next(i32* %18)
  store i32* %19, i32** %15, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %165 [
    i32 132, label %21
    i32 136, label %43
    i32 133, label %56
    i32 131, label %56
    i32 135, label %81
    i32 130, label %123
    i32 134, label %133
    i32 128, label %138
    i32 129, label %151
  ]

21:                                               ; preds = %4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 8
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 7
  store i32 0, i32* %29, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 6
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store i32 1, i32* %37, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @BIO_ctrl(i32* %38, i32 %39, i64 %40, i8* %41)
  store i64 %42, i64* %13, align 8
  br label %171

43:                                               ; preds = %4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i64 1, i64* %13, align 8
  br label %55

49:                                               ; preds = %43
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @BIO_ctrl(i32* %50, i32 %51, i64 %52, i8* %53)
  store i64 %54, i64* %13, align 8
  br label %55

55:                                               ; preds = %49, %48
  br label %171

56:                                               ; preds = %4, %4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  br label %70

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %61
  %71 = phi i64 [ %68, %61 ], [ 0, %69 ]
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i64, i64* %8, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i64 @BIO_ctrl(i32* %75, i32 %76, i64 %77, i8* %78)
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %74, %70
  br label %171

81:                                               ; preds = %4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @block_out(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store i64 0, i64* %5, align 8
  br label %173

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %81
  br label %93

93:                                               ; preds = %106, %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @ok_write(i32* %99, i32* null, i32 0)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %13, align 8
  br label %107

106:                                              ; preds = %98
  br label %93

107:                                              ; preds = %103, %93
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  store i32 1, i32* %109, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load i64, i64* %13, align 8
  %115 = trunc i64 %114 to i32
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i64, i64* %8, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = call i64 @BIO_ctrl(i32* %118, i32 %119, i64 %120, i8* %121)
  store i64 %122, i64* %13, align 8
  br label %171

123:                                              ; preds = %4
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @BIO_clear_retry_flags(i32* %124)
  %126 = load i32*, i32** %15, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i64, i64* %8, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = call i64 @BIO_ctrl(i32* %126, i32 %127, i64 %128, i8* %129)
  store i64 %130, i64* %13, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @BIO_copy_next_retry(i32* %131)
  br label %171

133:                                              ; preds = %4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %13, align 8
  br label %171

138:                                              ; preds = %4
  %139 = load i8*, i8** %9, align 8
  %140 = bitcast i8* %139 to i32*
  store i32* %140, i32** %11, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @EVP_DigestInit_ex(i32 %143, i32* %144, i32* null)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %138
  store i64 0, i64* %5, align 8
  br label %173

148:                                              ; preds = %138
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @BIO_set_init(i32* %149, i32 1)
  br label %171

151:                                              ; preds = %4
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @BIO_get_init(i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load i8*, i8** %9, align 8
  %157 = bitcast i8* %156 to i32**
  store i32** %157, i32*** %12, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = call i32* @EVP_MD_CTX_md(i32 %160)
  %162 = load i32**, i32*** %12, align 8
  store i32* %161, i32** %162, align 8
  br label %164

163:                                              ; preds = %151
  store i64 0, i64* %13, align 8
  br label %164

164:                                              ; preds = %163, %155
  br label %171

165:                                              ; preds = %4
  %166 = load i32*, i32** %15, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i64, i64* %8, align 8
  %169 = load i8*, i8** %9, align 8
  %170 = call i64 @BIO_ctrl(i32* %166, i32 %167, i64 %168, i8* %169)
  store i64 %170, i64* %13, align 8
  br label %171

171:                                              ; preds = %165, %164, %148, %133, %123, %107, %80, %55, %21
  %172 = load i64, i64* %13, align 8
  store i64 %172, i64* %5, align 8
  br label %173

173:                                              ; preds = %171, %147, %90
  %174 = load i64, i64* %5, align 8
  ret i64 %174
}

declare dso_local %struct.TYPE_3__* @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i64 @BIO_ctrl(i32*, i32, i64, i8*) #1

declare dso_local i32 @block_out(i32*) #1

declare dso_local i32 @ok_write(i32*, i32*, i32) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32, i32*, i32*) #1

declare dso_local i32 @BIO_set_init(i32*, i32) #1

declare dso_local i32 @BIO_get_init(i32*) #1

declare dso_local i32* @EVP_MD_CTX_md(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
