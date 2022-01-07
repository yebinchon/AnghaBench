; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_asn1.c_rsa_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_asn1.c_rsa_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@ASN1_OP_NEW_PRE = common dso_local global i32 0, align 4
@ASN1_OP_FREE_PRE = common dso_local global i32 0, align 4
@ASN1_OP_D2I_POST = common dso_local global i32 0, align 4
@RSA_ASN1_VERSION_MULTI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32*, i8*)* @rsa_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_cb(i32 %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @ASN1_OP_NEW_PRE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = call i64 (...) @RSA_new()
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32**, i32*** %7, align 8
  store i32* %15, i32** %16, align 8
  %17 = load i32**, i32*** %7, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 2, i32* %5, align 4
  br label %56

21:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %56

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ASN1_OP_FREE_PRE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32**, i32*** %7, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_4__*
  %30 = call i32 @RSA_free(%struct.TYPE_4__* %29)
  %31 = load i32**, i32*** %7, align 8
  store i32* null, i32** %31, align 8
  store i32 2, i32* %5, align 4
  br label %56

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ASN1_OP_D2I_POST, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i32**, i32*** %7, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RSA_ASN1_VERSION_MULTI, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %56

45:                                               ; preds = %36
  %46 = load i32**, i32*** %7, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast i32* %47 to %struct.TYPE_4__*
  %49 = call i32 @rsa_multip_calc_product(%struct.TYPE_4__* %48)
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 2, i32 0
  store i32 %52, i32* %5, align 4
  br label %56

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %45, %44, %26, %21, %20
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @RSA_new(...) #1

declare dso_local i32 @RSA_free(%struct.TYPE_4__*) #1

declare dso_local i32 @rsa_multip_calc_product(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
