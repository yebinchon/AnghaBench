; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_vfy.c_sct_ctx_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_vfy.c_sct_ctx_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i64, i32, i8*, i64 }
%struct.TYPE_6__ = type { i64, i64, i8*, i32, i32 }

@CT_LOG_ENTRY_TYPE_NOT_SET = common dso_local global i64 0, align 8
@CT_LOG_ENTRY_TYPE_PRECERT = common dso_local global i64 0, align 8
@SIGNATURE_TYPE_CERT_TIMESTAMP = common dso_local global i32 0, align 4
@CT_LOG_ENTRY_TYPE_X509 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, %struct.TYPE_6__*)* @sct_ctx_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sct_ctx_update(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca [12 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CT_LOG_ENTRY_TYPE_NOT_SET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %146

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CT_LOG_ENTRY_TYPE_PRECERT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %146

30:                                               ; preds = %24, %18
  %31 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  store i8* %31, i8** %9, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i32, i32* @SIGNATURE_TYPE_CERT_TIMESTAMP, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %9, align 8
  store i8 %39, i8* %40, align 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @l2n8(i32 %44, i8* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @s2n(i64 %49, i8* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @EVP_DigestUpdate(i32* %52, i8* %53, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %146

63:                                               ; preds = %30
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CT_LOG_ENTRY_TYPE_X509, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %10, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %11, align 8
  br label %94

76:                                               ; preds = %63
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @EVP_DigestUpdate(i32* %77, i8* %80, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %146

87:                                               ; preds = %76
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %10, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %11, align 8
  br label %94

94:                                               ; preds = %87, %69
  %95 = load i8*, i8** %10, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %4, align 4
  br label %146

98:                                               ; preds = %94
  %99 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  store i8* %99, i8** %9, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @l2n3(i64 %100, i8* %101)
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %105 = call i32 @EVP_DigestUpdate(i32* %103, i8* %104, i32 3)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %146

108:                                              ; preds = %98
  %109 = load i32*, i32** %5, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @EVP_DigestUpdate(i32* %109, i8* %110, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %146

116:                                              ; preds = %108
  %117 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  store i8* %117, i8** %9, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @s2n(i64 %120, i8* %121)
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %125 = call i32 @EVP_DigestUpdate(i32* %123, i8* %124, i32 2)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %146

128:                                              ; preds = %116
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load i32*, i32** %5, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @EVP_DigestUpdate(i32* %134, i8* %137, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %146

145:                                              ; preds = %133, %128
  store i32 1, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %144, %127, %115, %107, %97, %86, %62, %29, %17
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @l2n8(i32, i8*) #1

declare dso_local i32 @s2n(i64, i8*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #1

declare dso_local i32 @l2n3(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
