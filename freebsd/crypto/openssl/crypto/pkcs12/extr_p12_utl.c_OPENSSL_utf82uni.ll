; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_utl.c_OPENSSL_utf82uni.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_utl.c_OPENSSL_utf82uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKCS12_F_OPENSSL_UTF82UNI = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @OPENSSL_utf82uni(i8* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %15, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %59, %23
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @UTF8_getc(i8* %32, i32 %35, i64* %15)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i8**, i8*** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i8* @OPENSSL_asc2uni(i8* %40, i32 %41, i8** %42, i32* %43)
  store i8* %44, i8** %5, align 8
  br label %152

45:                                               ; preds = %28
  %46 = load i64, i64* %15, align 8
  %47 = icmp ugt i64 %46, 1114111
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i8* null, i8** %5, align 8
  br label %152

49:                                               ; preds = %45
  %50 = load i64, i64* %15, align 8
  %51 = icmp uge i64 %50, 65536
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 4
  store i32 %54, i32* %10, align 4
  br label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %24

63:                                               ; preds = %24
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i8* @OPENSSL_malloc(i32 %66)
  store i8* %67, i8** %14, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @PKCS12_F_OPENSSL_UTF82UNI, align 4
  %71 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %72 = call i32 @PKCS12err(i32 %70, i32 %71)
  store i8* null, i8** %5, align 8
  br label %152

73:                                               ; preds = %63
  %74 = load i8*, i8** %14, align 8
  store i8* %74, i8** %13, align 8
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %130, %73
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %134

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 @UTF8_getc(i8* %83, i32 %86, i64* %15)
  store i32 %87, i32* %12, align 4
  %88 = load i64, i64* %15, align 8
  %89 = icmp uge i64 %88, 65536
  br i1 %89, label %90, label %119

90:                                               ; preds = %79
  %91 = load i64, i64* %15, align 8
  %92 = sub i64 %91, 65536
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %15, align 8
  %94 = lshr i64 %93, 10
  %95 = add i64 55296, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %16, align 4
  %97 = load i64, i64* %15, align 8
  %98 = and i64 %97, 1023
  %99 = add i64 56320, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %16, align 4
  %102 = lshr i32 %101, 8
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %13, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %13, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i32, i32* %16, align 4
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %13, align 8
  store i8 %107, i8* %108, align 1
  %110 = load i32, i32* %17, align 4
  %111 = lshr i32 %110, 8
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %13, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %13, align 8
  store i8 %112, i8* %113, align 1
  %115 = load i32, i32* %17, align 4
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %13, align 8
  store i8 %116, i8* %117, align 1
  br label %129

119:                                              ; preds = %79
  %120 = load i64, i64* %15, align 8
  %121 = lshr i64 %120, 8
  %122 = trunc i64 %121 to i8
  %123 = load i8*, i8** %13, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %13, align 8
  store i8 %122, i8* %123, align 1
  %125 = load i64, i64* %15, align 8
  %126 = trunc i64 %125 to i8
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %13, align 8
  store i8 %126, i8* %127, align 1
  br label %129

129:                                              ; preds = %119, %90
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %11, align 4
  br label %75

134:                                              ; preds = %75
  %135 = load i8*, i8** %13, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %13, align 8
  store i8 0, i8* %135, align 1
  %137 = load i8*, i8** %13, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %13, align 8
  store i8 0, i8* %137, align 1
  %139 = load i32*, i32** %9, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load i32, i32* %10, align 4
  %143 = load i32*, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %134
  %145 = load i8**, i8*** %8, align 8
  %146 = icmp ne i8** %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i8*, i8** %14, align 8
  %149 = load i8**, i8*** %8, align 8
  store i8* %148, i8** %149, align 8
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i8*, i8** %14, align 8
  store i8* %151, i8** %5, align 8
  br label %152

152:                                              ; preds = %150, %69, %48, %39
  %153 = load i8*, i8** %5, align 8
  ret i8* %153
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @UTF8_getc(i8*, i32, i64*) #1

declare dso_local i8* @OPENSSL_asc2uni(i8*, i32, i8**, i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @PKCS12err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
