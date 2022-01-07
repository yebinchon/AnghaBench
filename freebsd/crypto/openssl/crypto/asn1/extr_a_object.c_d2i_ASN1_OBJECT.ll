; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_object.c_d2i_ASN1_OBJECT.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_object.c_d2i_ASN1_OBJECT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_R_BAD_OBJECT_HEADER = common dso_local global i32 0, align 4
@V_ASN1_OBJECT = common dso_local global i32 0, align 4
@ASN1_R_EXPECTING_AN_OBJECT = common dso_local global i32 0, align 4
@ASN1_F_D2I_ASN1_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @d2i_ASN1_OBJECT(i32** %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %14, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @ASN1_get_object(i8** %8, i64* %9, i32* %10, i32* %11, i64 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = and i32 %19, 128
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ASN1_R_BAD_OBJECT_HEADER, align 4
  store i32 %23, i32* %13, align 4
  br label %41

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @V_ASN1_OBJECT, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ASN1_R_EXPECTING_AN_OBJECT, align 4
  store i32 %29, i32* %13, align 4
  br label %41

30:                                               ; preds = %24
  %31 = load i32**, i32*** %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32* @c2i_ASN1_OBJECT(i32** %31, i8** %8, i64 %32)
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = load i8**, i8*** %6, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32*, i32** %14, align 8
  store i32* %40, i32** %4, align 8
  br label %45

41:                                               ; preds = %28, %22
  %42 = load i32, i32* @ASN1_F_D2I_ASN1_OBJECT, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @ASN1err(i32 %42, i32 %43)
  store i32* null, i32** %4, align 8
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i32*, i32** %4, align 8
  ret i32* %46
}

declare dso_local i32 @ASN1_get_object(i8**, i64*, i32*, i32*, i64) #1

declare dso_local i32* @c2i_ASN1_OBJECT(i32**, i8**, i64) #1

declare dso_local i32 @ASN1err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
