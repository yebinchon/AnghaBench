; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_domain_suffix_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_domain_suffix_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TLS: Embedded null in a string - reject\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"TLS: Reject due to incomplete label match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32)* @domain_suffix_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_suffix_match(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %28, %5
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %12, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %74

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %12, align 8
  br label %13

31:                                               ; preds = %13
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %31
  store i32 0, i32* %6, align 4
  br label %74

43:                                               ; preds = %38, %35
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @os_strncasecmp(i8* %49, i8* %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %74

55:                                               ; preds = %43
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %74

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = sub i64 %62, %63
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %74

71:                                               ; preds = %60
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 @wpa_printf(i32 %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %70, %59, %54, %42, %24
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @os_strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
