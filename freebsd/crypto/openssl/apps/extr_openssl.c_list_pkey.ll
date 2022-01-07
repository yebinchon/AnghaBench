; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_openssl.c_list_pkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_openssl.c_list_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_PKEY_ALIAS = common dso_local global i32 0, align 4
@bio_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09Alias for: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\09Type: %s Algorithm\0A\00", align 1
@ASN1_PKEY_DYNAMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Builtin\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\09OID: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\09PEM string: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_pkey() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %54, %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (...) @EVP_PKEY_asn1_get_count()
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %57

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = call i32* @EVP_PKEY_asn1_get0(i32 %13)
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @EVP_PKEY_asn1_get0_info(i32* %3, i32* %4, i32* %5, i8** %6, i8** %7, i32* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ASN1_PKEY_ALIAS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load i32, i32* @bio_out, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @OBJ_nid2ln(i32 %23)
  %25 = call i32 @BIO_printf(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @bio_out, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i8* @OBJ_nid2ln(i32 %27)
  %29 = call i32 @BIO_printf(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %53

30:                                               ; preds = %12
  %31 = load i32, i32* @bio_out, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @BIO_printf(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @bio_out, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ASN1_PKEY_DYNAMIC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %41 = call i32 @BIO_printf(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @bio_out, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i8* @OBJ_nid2ln(i32 %43)
  %45 = call i32 @BIO_printf(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %49

49:                                               ; preds = %48, %30
  %50 = load i32, i32* @bio_out, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @BIO_printf(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %21
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %8

57:                                               ; preds = %8
  ret void
}

declare dso_local i32 @EVP_PKEY_asn1_get_count(...) #1

declare dso_local i32* @EVP_PKEY_asn1_get0(i32) #1

declare dso_local i32 @EVP_PKEY_asn1_get0_info(i32*, i32*, i32*, i8**, i8**, i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i8* @OBJ_nid2ln(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
