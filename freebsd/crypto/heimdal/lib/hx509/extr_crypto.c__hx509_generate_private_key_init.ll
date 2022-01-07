; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_generate_private_key_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_generate_private_key_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_generate_private_context = type { i32* }

@ASN1_OID_ID_PKCS1_RSAENCRYPTION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"private key not an RSA key\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_generate_private_key_init(i32 %0, i32* %1, %struct.hx509_generate_private_context** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hx509_generate_private_context**, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.hx509_generate_private_context** %2, %struct.hx509_generate_private_context*** %7, align 8
  %8 = load %struct.hx509_generate_private_context**, %struct.hx509_generate_private_context*** %7, align 8
  store %struct.hx509_generate_private_context* null, %struct.hx509_generate_private_context** %8, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* @ASN1_OID_ID_PKCS1_RSAENCRYPTION, align 4
  %11 = call i64 @der_heim_oid_cmp(i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = call i32 @hx509_set_error_string(i32 %14, i32 0, i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %34

18:                                               ; preds = %3
  %19 = call %struct.hx509_generate_private_context* @calloc(i32 1, i32 8)
  %20 = load %struct.hx509_generate_private_context**, %struct.hx509_generate_private_context*** %7, align 8
  store %struct.hx509_generate_private_context* %19, %struct.hx509_generate_private_context** %20, align 8
  %21 = load %struct.hx509_generate_private_context**, %struct.hx509_generate_private_context*** %7, align 8
  %22 = load %struct.hx509_generate_private_context*, %struct.hx509_generate_private_context** %21, align 8
  %23 = icmp eq %struct.hx509_generate_private_context* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = call i32 @hx509_set_error_string(i32 %25, i32 0, i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %18
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.hx509_generate_private_context**, %struct.hx509_generate_private_context*** %7, align 8
  %32 = load %struct.hx509_generate_private_context*, %struct.hx509_generate_private_context** %31, align 8
  %33 = getelementptr inbounds %struct.hx509_generate_private_context, %struct.hx509_generate_private_context* %32, i32 0, i32 0
  store i32* %30, i32** %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %24, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @der_heim_oid_cmp(i32*, i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local %struct.hx509_generate_private_context* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
