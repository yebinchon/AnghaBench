; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_ssl_print_client_cert_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_ssl_print_client_cert_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Client Certificate Types: \00", align 1
@cert_type_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"UNKNOWN (%d),\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ssl_print_client_cert_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_print_client_cert_types(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @SSL_get0_certificate_types(i32* %10, i8** %5)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %55

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @BIO_puts(i32* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %49, %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %8, align 1
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* @cert_type_list, align 4
  %31 = call i8* @lookup(i32 %29, i32 %30, i32* null)
  store i8* %31, i8** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @BIO_puts(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %22
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32*, i32** %3, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @BIO_puts(i32* %41, i8* %42)
  br label %48

44:                                               ; preds = %37
  %45 = load i32*, i32** %3, align 8
  %46 = load i8, i8* %8, align 1
  %47 = call i32 @BIO_printf(i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %46)
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %18

52:                                               ; preds = %18
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @BIO_puts(i32* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %14
  ret void
}

declare dso_local i32 @SSL_get0_certificate_types(i32*, i8**) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i8* @lookup(i32, i32, i32*) #1

declare dso_local i32 @BIO_printf(i32*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
