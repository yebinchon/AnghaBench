; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_https-client.c_cert_verify_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_https-client.c_cert_verify_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"X509_verify_cert failed\00", align 1
@ignore_cert = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"MatchFound\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"MatchNotFound\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"NoSANPresent\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"MalformedCertificate\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"WTF!\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"https server '%s' has this certificate, which looks good to me:\0A%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Got '%s' for hostname '%s' and certificate:\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @cert_verify_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cert_verify_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %7, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 132, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %13 = load i64, i64* @ignore_cert, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @X509_verify_cert(i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @X509_STORE_CTX_get_current_cert(i32* %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @validate_hostname(i8* %24, i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %33 [
    i32 130, label %28
    i32 129, label %29
    i32 128, label %30
    i32 131, label %31
    i32 132, label %32
  ]

28:                                               ; preds = %23
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %34

29:                                               ; preds = %23
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %34

30:                                               ; preds = %23
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %34

31:                                               ; preds = %23
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %34

32:                                               ; preds = %23
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %34

33:                                               ; preds = %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29, %28
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @X509_get_subject_name(i32* %36)
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %39 = call i32 @X509_NAME_oneline(i32 %37, i8* %38, i32 256)
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 130
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %45 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i8* %43, i8* %44)
  store i32 1, i32* %3, align 4
  br label %51

46:                                               ; preds = %35
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %50 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %47, i8* %48, i8* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %42, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @X509_verify_cert(i32*) #1

declare dso_local i32* @X509_STORE_CTX_get_current_cert(i32*) #1

declare dso_local i32 @validate_hostname(i8*, i32*) #1

declare dso_local i32 @X509_NAME_oneline(i32, i8*, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
