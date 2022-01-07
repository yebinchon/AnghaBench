; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_gen.c_bitstr_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_gen.c_bitstr_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_BITSTR_CB = common dso_local global i32 0, align 4
@ASN1_R_INVALID_NUMBER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @bitstr_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitstr_cb(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strtoul(i8* %14, i8** %9, i32 10)
  store i64 %15, i64* %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = icmp ne i8* %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %48

31:                                               ; preds = %23, %18, %13
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @ASN1_F_BITSTR_CB, align 4
  %36 = load i32, i32* @ASN1_R_INVALID_NUMBER, align 4
  %37 = call i32 @ASN1err(i32 %35, i32 %36)
  store i32 0, i32* %4, align 4
  br label %48

38:                                               ; preds = %31
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @ASN1_BIT_STRING_set_bit(i8* %39, i64 %40, i32 1)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ASN1_F_BITSTR_CB, align 4
  %45 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %46 = call i32 @ASN1err(i32 %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %48

47:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %43, %34, %30, %12
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @ASN1_BIT_STRING_set_bit(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
