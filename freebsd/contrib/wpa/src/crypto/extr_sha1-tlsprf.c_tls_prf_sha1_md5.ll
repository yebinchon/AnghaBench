; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha1-tlsprf.c_tls_prf_sha1_md5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha1-tlsprf.c_tls_prf_sha1_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@SHA1_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_prf_sha1_md5(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [3 x i8*], align 16
  %28 = alloca [3 x i64], align 16
  %29 = alloca [3 x i8*], align 16
  %30 = alloca [3 x i64], align 16
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %31 = load i32, i32* @MD5_MAC_LEN, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %20, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %21, align 8
  %35 = load i32, i32* @SHA1_MAC_LEN, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %22, align 8
  %38 = load i32, i32* @MD5_MAC_LEN, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %23, align 8
  %41 = load i32, i32* @SHA1_MAC_LEN, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %24, align 8
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* %27, i64 0, i64 0
  store i8* %34, i8** %44, align 16
  %45 = load i32, i32* @MD5_MAC_LEN, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %28, i64 0, i64 0
  store i64 %46, i64* %47, align 16
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds [3 x i8*], [3 x i8*]* %27, i64 0, i64 1
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i64 @os_strlen(i8* %50)
  %52 = getelementptr inbounds [3 x i64], [3 x i64]* %28, i64 0, i64 1
  store i64 %51, i64* %52, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds [3 x i8*], [3 x i8*]* %27, i64 0, i64 2
  store i8* %53, i8** %54, align 16
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %28, i64 0, i64 2
  store i64 %55, i64* %56, align 16
  %57 = getelementptr inbounds [3 x i8*], [3 x i8*]* %29, i64 0, i64 0
  store i8* %37, i8** %57, align 16
  %58 = load i32, i32* @SHA1_MAC_LEN, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x i64], [3 x i64]* %30, i64 0, i64 0
  store i64 %59, i64* %60, align 16
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds [3 x i8*], [3 x i8*]* %29, i64 0, i64 1
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i64 @os_strlen(i8* %63)
  %65 = getelementptr inbounds [3 x i64], [3 x i64]* %30, i64 0, i64 1
  store i64 %64, i64* %65, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds [3 x i8*], [3 x i8*]* %29, i64 0, i64 2
  store i8* %66, i8** %67, align 16
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %30, i64 0, i64 2
  store i64 %68, i64* %69, align 16
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, 1
  %72 = udiv i64 %71, 2
  store i64 %72, i64* %16, align 8
  store i64 %72, i64* %15, align 8
  %73 = load i8*, i8** %8, align 8
  store i8* %73, i8** %18, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %19, align 8
  %77 = load i64, i64* %9, align 8
  %78 = and i64 %77, 1
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %7
  %81 = load i8*, i8** %19, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %82, i8** %19, align 8
  br label %83

83:                                               ; preds = %80, %7
  %84 = load i8*, i8** %18, align 8
  %85 = load i64, i64* %15, align 8
  %86 = getelementptr inbounds [3 x i8*], [3 x i8*]* %27, i64 0, i64 1
  %87 = getelementptr inbounds [3 x i64], [3 x i64]* %28, i64 0, i64 1
  %88 = call i32 @hmac_md5_vector(i8* %84, i64 %85, i32 2, i8** %86, i64* %87, i8* %34)
  %89 = load i8*, i8** %19, align 8
  %90 = load i64, i64* %16, align 8
  %91 = getelementptr inbounds [3 x i8*], [3 x i8*]* %29, i64 0, i64 1
  %92 = getelementptr inbounds [3 x i64], [3 x i64]* %30, i64 0, i64 1
  %93 = call i32 @hmac_sha1_vector(i8* %89, i64 %90, i32 2, i8** %91, i64* %92, i8* %37)
  %94 = load i32, i32* @MD5_MAC_LEN, align 4
  store i32 %94, i32* %25, align 4
  %95 = load i32, i32* @SHA1_MAC_LEN, align 4
  store i32 %95, i32* %26, align 4
  store i64 0, i64* %17, align 8
  br label %96

96:                                               ; preds = %148, %83
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %14, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %151

100:                                              ; preds = %96
  %101 = load i32, i32* %25, align 4
  %102 = load i32, i32* @MD5_MAC_LEN, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load i8*, i8** %18, align 8
  %106 = load i64, i64* %15, align 8
  %107 = getelementptr inbounds [3 x i8*], [3 x i8*]* %27, i64 0, i64 0
  %108 = getelementptr inbounds [3 x i64], [3 x i64]* %28, i64 0, i64 0
  %109 = call i32 @hmac_md5_vector(i8* %105, i64 %106, i32 3, i8** %107, i64* %108, i8* %40)
  store i32 0, i32* %25, align 4
  %110 = load i8*, i8** %18, align 8
  %111 = load i64, i64* %15, align 8
  %112 = load i32, i32* @MD5_MAC_LEN, align 4
  %113 = call i32 @hmac_md5(i8* %110, i64 %111, i8* %34, i32 %112, i8* %34)
  br label %114

114:                                              ; preds = %104, %100
  %115 = load i32, i32* %26, align 4
  %116 = load i32, i32* @SHA1_MAC_LEN, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = load i8*, i8** %19, align 8
  %120 = load i64, i64* %16, align 8
  %121 = getelementptr inbounds [3 x i8*], [3 x i8*]* %29, i64 0, i64 0
  %122 = getelementptr inbounds [3 x i64], [3 x i64]* %30, i64 0, i64 0
  %123 = call i32 @hmac_sha1_vector(i8* %119, i64 %120, i32 3, i8** %121, i64* %122, i8* %43)
  store i32 0, i32* %26, align 4
  %124 = load i8*, i8** %19, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i32, i32* @SHA1_MAC_LEN, align 4
  %127 = call i32 @hmac_sha1(i8* %124, i64 %125, i8* %37, i32 %126, i8* %37)
  br label %128

128:                                              ; preds = %118, %114
  %129 = load i32, i32* %25, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %40, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i32, i32* %26, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %43, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = xor i32 %133, %138
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %13, align 8
  %142 = load i64, i64* %17, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8 %140, i8* %143, align 1
  %144 = load i32, i32* %25, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %25, align 4
  %146 = load i32, i32* %26, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %26, align 4
  br label %148

148:                                              ; preds = %128
  %149 = load i64, i64* %17, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %17, align 8
  br label %96

151:                                              ; preds = %96
  %152 = load i32, i32* @MD5_MAC_LEN, align 4
  %153 = call i32 @forced_memzero(i8* %34, i32 %152)
  %154 = load i32, i32* @MD5_MAC_LEN, align 4
  %155 = call i32 @forced_memzero(i8* %40, i32 %154)
  %156 = load i32, i32* @SHA1_MAC_LEN, align 4
  %157 = call i32 @forced_memzero(i8* %37, i32 %156)
  %158 = load i32, i32* @SHA1_MAC_LEN, align 4
  %159 = call i32 @forced_memzero(i8* %43, i32 %158)
  %160 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %160)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i32 @hmac_md5_vector(i8*, i64, i32, i8**, i64*, i8*) #2

declare dso_local i32 @hmac_sha1_vector(i8*, i64, i32, i8**, i64*, i8*) #2

declare dso_local i32 @hmac_md5(i8*, i64, i8*, i32, i8*) #2

declare dso_local i32 @hmac_sha1(i8*, i64, i8*, i32, i8*) #2

declare dso_local i32 @forced_memzero(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
