; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_set_cert_times.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_set_cert_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"today\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_cert_times(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @X509_getm_notBefore(i32* %17)
  %19 = call i32* @X509_gmtime_adj(i32 %18, i32 0)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %51

22:                                               ; preds = %16
  br label %31

23:                                               ; preds = %12
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @X509_getm_notBefore(i32* %24)
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @ASN1_TIME_set_string_X509(i32 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %51

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @X509_getm_notAfter(i32* %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32* @X509_time_adj_ex(i32 %36, i32 %37, i32 0, i32* null)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %51

41:                                               ; preds = %34
  br label %50

42:                                               ; preds = %31
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @X509_getm_notAfter(i32* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @ASN1_TIME_set_string_X509(i32 %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %51

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %41
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %48, %40, %29, %21
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @X509_gmtime_adj(i32, i32) #1

declare dso_local i32 @X509_getm_notBefore(i32*) #1

declare dso_local i32 @ASN1_TIME_set_string_X509(i32, i8*) #1

declare dso_local i32* @X509_time_adj_ex(i32, i32, i32, i32*) #1

declare dso_local i32 @X509_getm_notAfter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
