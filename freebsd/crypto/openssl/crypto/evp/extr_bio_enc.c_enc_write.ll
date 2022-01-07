; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_enc.c_enc_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_enc.c_enc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i64, i32 }

@ENC_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @enc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc_write(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_3__* @BIO_get_data(i32* %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %11, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @BIO_next(i32* %15)
  store i32* %16, i32** %12, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %3
  store i32 0, i32* %4, align 4
  br label %166

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @BIO_clear_retry_flags(i32* %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %55, %23
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load i32*, i32** %12, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @BIO_write(i32* %38, i32* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @BIO_copy_next_retry(i32* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %166

55:                                               ; preds = %37
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %34

64:                                               ; preds = %34
  %65 = load i8*, i8** %6, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %64
  store i32 0, i32* %4, align 4
  br label %166

71:                                               ; preds = %67
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %157, %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %162

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @ENC_BLOCK_SIZE, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @ENC_BLOCK_SIZE, align 4
  br label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %9, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @EVP_CipherUpdate(i32 %89, i32* %92, i32* %94, i8* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %85
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @BIO_clear_retry_flags(i32* %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  store i32 0, i32* %4, align 4
  br label %166

104:                                              ; preds = %85
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %6, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %148, %104
  %118 = load i32, i32* %9, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %157

120:                                              ; preds = %117
  %121 = load i32*, i32** %12, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @BIO_write(i32* %121, i32* %129, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %120
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @BIO_copy_next_retry(i32* %135)
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* %10, align 4
  br label %146

142:                                              ; preds = %134
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 %143, %144
  br label %146

146:                                              ; preds = %142, %140
  %147 = phi i32 [ %141, %140 ], [ %145, %142 ]
  store i32 %147, i32* %4, align 4
  br label %166

148:                                              ; preds = %120
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %9, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %117

157:                                              ; preds = %117
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  store i32 0, i32* %159, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  store i32 0, i32* %161, align 4
  br label %74

162:                                              ; preds = %74
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @BIO_copy_next_retry(i32* %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %162, %146, %99, %70, %51, %22
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local %struct.TYPE_3__* @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_write(i32*, i32*, i32) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

declare dso_local i32 @EVP_CipherUpdate(i32, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
