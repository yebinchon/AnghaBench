; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_sign_public_rsamd5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_sign.c_ldns_sign_public_rsamd5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_PACKETLEN = common dso_local global i32 0, align 4
@NID_md5 = common dso_local global i32 0, align 4
@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_B64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_sign_public_rsamd5(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @LDNS_MAX_PACKETLEN, align 4
  %11 = call i32* @ldns_buffer_new(i32 %10)
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %44

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @ldns_buffer_begin(i32* %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ldns_buffer_position(i32* %19)
  %21 = call i8* @MD5(i8* %18, i32 %20, i32* null)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @ldns_buffer_free(i32* %25)
  store i32* null, i32** %3, align 8
  br label %44

27:                                               ; preds = %15
  %28 = load i32, i32* @NID_md5, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @ldns_buffer_begin(i32* %31)
  %33 = inttoptr i64 %32 to i8*
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @RSA_sign(i32 %28, i8* %29, i32 %30, i8* %33, i32* %7, i32* %34)
  %36 = load i32, i32* @LDNS_RDF_TYPE_B64, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @ldns_buffer_begin(i32* %38)
  %40 = call i32* @ldns_rdf_new_frm_data(i32 %36, i32 %37, i64 %39)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @ldns_buffer_free(i32* %41)
  %43 = load i32*, i32** %8, align 8
  store i32* %43, i32** %3, align 8
  br label %44

44:                                               ; preds = %27, %24, %14
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

declare dso_local i32* @ldns_buffer_new(i32) #1

declare dso_local i8* @MD5(i8*, i32, i32*) #1

declare dso_local i64 @ldns_buffer_begin(i32*) #1

declare dso_local i32 @ldns_buffer_position(i32*) #1

declare dso_local i32 @ldns_buffer_free(i32*) #1

declare dso_local i32 @RSA_sign(i32, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @ldns_rdf_new_frm_data(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
