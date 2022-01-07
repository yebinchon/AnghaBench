; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_x509.c_purpose_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_x509.c_purpose_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%s%s : \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" CA\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Yes\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"No\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Yes (WARNING code=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @purpose_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @purpose_print(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @X509_PURPOSE_get_id(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i8* @X509_PURPOSE_get0_name(i32* %13)
  store i8* %14, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %47, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @X509_check_purpose(i32* %19, i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %29 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %46

35:                                               ; preds = %18
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %45

41:                                               ; preds = %35
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  br label %46

46:                                               ; preds = %45, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %15

50:                                               ; preds = %15
  ret i32 1
}

declare dso_local i32 @X509_PURPOSE_get_id(i32*) #1

declare dso_local i8* @X509_PURPOSE_get0_name(i32*) #1

declare dso_local i32 @X509_check_purpose(i32*, i32, i32) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
