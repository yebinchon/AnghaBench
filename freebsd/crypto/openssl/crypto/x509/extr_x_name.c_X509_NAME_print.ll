; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_name.c_X509_NAME_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_name.c_X509_NAME_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@X509_F_X509_NAME_PRINT = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_NAME_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 78, %13
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i8* @X509_NAME_oneline(i32* %15, i32* null, i32 0)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %115

20:                                               ; preds = %3
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @OPENSSL_free(i8* %25)
  store i32 1, i32* %4, align 4
  br label %115

27:                                               ; preds = %20
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %101, %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @ossl_isupper(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 61
  br i1 %47, label %65, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @ossl_isupper(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 61
  br i1 %59, label %65, label %60

60:                                               ; preds = %54, %48, %36, %31
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %60, %54, %42
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @BIO_write(i32* %72, i8* %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %109

79:                                               ; preds = %65
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @BIO_write(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %89 = icmp ne i32 %88, 2
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %109

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %79
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %92, %60
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %106

101:                                              ; preds = %95
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %11, align 4
  br label %31

106:                                              ; preds = %100
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @OPENSSL_free(i8* %107)
  store i32 1, i32* %4, align 4
  br label %115

109:                                              ; preds = %90, %78
  %110 = load i32, i32* @X509_F_X509_NAME_PRINT, align 4
  %111 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %112 = call i32 @X509err(i32 %110, i32 %111)
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @OPENSSL_free(i8* %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %109, %106, %24, %19
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i8* @X509_NAME_oneline(i32*, i32*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i64 @ossl_isupper(i8 signext) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @X509err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
