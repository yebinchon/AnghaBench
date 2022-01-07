; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_openssl_hostname_validation.c_matches_common_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_openssl_hostname_validation.c_matches_common_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_commonName = common dso_local global i32 0, align 4
@Error = common dso_local global i32 0, align 4
@MalformedCertificate = common dso_local global i32 0, align 4
@CURL_HOST_MATCH = common dso_local global i64 0, align 8
@MatchFound = common dso_local global i32 0, align 4
@MatchNotFound = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @matches_common_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matches_common_name(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @X509_get_subject_name(i32* %10)
  %12 = load i32, i32* @NID_commonName, align 4
  %13 = call i32 @X509_NAME_get_index_by_NID(i32 %11, i32 %12, i32 -1)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @Error, align 4
  store i32 %17, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @X509_get_subject_name(i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32* @X509_NAME_get_entry(i32 %20, i32 %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @Error, align 4
  store i32 %26, i32* %3, align 4
  br label %55

27:                                               ; preds = %18
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @X509_NAME_ENTRY_get_data(i32* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @Error, align 4
  store i32 %33, i32* %3, align 4
  br label %55

34:                                               ; preds = %27
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @ASN1_STRING_get0_data(i32* %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @ASN1_STRING_length(i32* %38)
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @MalformedCertificate, align 4
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %34
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @Curl_cert_hostcheck(i8* %46, i8* %47)
  %49 = load i64, i64* @CURL_HOST_MATCH, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @MatchFound, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @MatchNotFound, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %51, %43, %32, %25, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @X509_NAME_get_index_by_NID(i32, i32, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32* @X509_NAME_get_entry(i32, i32) #1

declare dso_local i32* @X509_NAME_ENTRY_get_data(i32*) #1

declare dso_local i64 @ASN1_STRING_get0_data(i32*) #1

declare dso_local i64 @ASN1_STRING_length(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @Curl_cert_hostcheck(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
