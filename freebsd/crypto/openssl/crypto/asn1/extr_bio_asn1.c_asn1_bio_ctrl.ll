; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_bio_asn1.c_asn1_bio_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_bio_asn1.c_asn1_bio_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ASN1_STATE_HEADER = common dso_local global i32 0, align 4
@ASN1_STATE_POST_COPY = common dso_local global i32 0, align 4
@ASN1_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i8*)* @asn1_bio_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @asn1_bio_ctrl(i32* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 1, i64* %12, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_7__* @BIO_get_data(i32* %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = icmp eq %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %153

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @BIO_next(i32* %20)
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %141 [
    i32 129, label %23
    i32 132, label %36
    i32 128, label %49
    i32 131, label %62
    i32 130, label %75
    i32 133, label %79
    i32 134, label %85
  ]

23:                                               ; preds = %19
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %11, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  br label %151

36:                                               ; preds = %19
  %37 = load i8*, i8** %9, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %11, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %151

49:                                               ; preds = %19
  %50 = load i8*, i8** %9, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %11, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %151

62:                                               ; preds = %19
  %63 = load i8*, i8** %9, align 8
  %64 = bitcast i8* %63 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %11, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %151

75:                                               ; preds = %19
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  br label %151

79:                                               ; preds = %19
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8
  br label %151

85:                                               ; preds = %19
  %86 = load i32*, i32** %13, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i64 0, i64* %5, align 8
  br label %153

89:                                               ; preds = %85
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ASN1_STATE_HEADER, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ASN1_STATE_POST_COPY, align 4
  %102 = load i32, i32* @ASN1_STATE_DONE, align 4
  %103 = call i32 @asn1_bio_setup_ex(i32* %96, %struct.TYPE_7__* %97, i32 %100, i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %95
  store i64 0, i64* %5, align 8
  br label %153

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106, %89
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ASN1_STATE_POST_COPY, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load i32*, i32** %6, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ASN1_STATE_DONE, align 4
  %120 = call i64 @asn1_bio_flush_ex(i32* %114, %struct.TYPE_7__* %115, i32 %118, i32 %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = icmp sle i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i64, i64* %12, align 8
  store i64 %124, i64* %5, align 8
  br label %153

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %107
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ASN1_STATE_DONE, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i64, i64* %8, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = call i64 @BIO_ctrl(i32* %133, i32 %134, i64 %135, i8* %136)
  store i64 %137, i64* %5, align 8
  br label %153

138:                                              ; preds = %126
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @BIO_clear_retry_flags(i32* %139)
  store i64 0, i64* %5, align 8
  br label %153

141:                                              ; preds = %19
  %142 = load i32*, i32** %13, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i64 0, i64* %5, align 8
  br label %153

145:                                              ; preds = %141
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i64, i64* %8, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = call i64 @BIO_ctrl(i32* %146, i32 %147, i64 %148, i8* %149)
  store i64 %150, i64* %5, align 8
  br label %153

151:                                              ; preds = %79, %75, %62, %49, %36, %23
  %152 = load i64, i64* %12, align 8
  store i64 %152, i64* %5, align 8
  br label %153

153:                                              ; preds = %151, %145, %144, %138, %132, %123, %105, %88, %18
  %154 = load i64, i64* %5, align 8
  ret i64 %154
}

declare dso_local %struct.TYPE_7__* @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32 @asn1_bio_setup_ex(i32*, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i64 @asn1_bio_flush_ex(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @BIO_ctrl(i32*, i32, i64, i8*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
