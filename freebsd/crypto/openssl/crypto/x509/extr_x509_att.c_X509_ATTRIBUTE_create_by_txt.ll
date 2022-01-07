; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_att.c_X509_ATTRIBUTE_create_by_txt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_att.c_X509_ATTRIBUTE_create_by_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_F_X509_ATTRIBUTE_CREATE_BY_TXT = common dso_local global i32 0, align 4
@X509_R_INVALID_FIELD_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"name=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @X509_ATTRIBUTE_create_by_txt(i32** %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i32* @OBJ_txt2obj(i8* %14, i32 0)
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32, i32* @X509_F_X509_ATTRIBUTE_CREATE_BY_TXT, align 4
  %20 = load i32, i32* @X509_R_INVALID_FIELD_NAME, align 4
  %21 = call i32 @X509err(i32 %19, i32 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32* null, i32** %6, align 8
  br label %34

24:                                               ; preds = %5
  %25 = load i32**, i32*** %7, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32* @X509_ATTRIBUTE_create_by_OBJ(i32** %25, i32* %26, i32 %27, i8* %28, i32 %29)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @ASN1_OBJECT_free(i32* %31)
  %33 = load i32*, i32** %13, align 8
  store i32* %33, i32** %6, align 8
  br label %34

34:                                               ; preds = %24, %18
  %35 = load i32*, i32** %6, align 8
  ret i32* %35
}

declare dso_local i32* @OBJ_txt2obj(i8*, i32) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

declare dso_local i32* @X509_ATTRIBUTE_create_by_OBJ(i32**, i32*, i32, i8*, i32) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
