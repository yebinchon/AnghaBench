; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_print_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_print_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"    friendly name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"    private key: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to print cert\00", align 1
@hx509_print_stdout = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@HX509_VALIDATE_F_VALIDATE = common dso_local global i32 0, align 4
@HX509_VALIDATE_F_VERBOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @print_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_certificate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @hx509_cert_get_friendly_name(i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @_hx509_cert_private_key(i32 %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %23 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @hx509_print_cert(i32 %24, i32 %25, i32* null)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %17
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @hx509_validate_ctx_init(i32 %35, i32* %9)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @hx509_print_stdout, align 4
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @hx509_validate_ctx_set_print(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %43 = call i32 @hx509_validate_ctx_add_flags(i32 %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %46 = call i32 @hx509_validate_ctx_add_flags(i32 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @hx509_validate_cert(i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @hx509_validate_ctx_free(i32 %51)
  br label %53

53:                                               ; preds = %34, %31
  ret void
}

declare dso_local i8* @hx509_cert_get_friendly_name(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @_hx509_cert_private_key(i32) #1

declare dso_local i32 @hx509_print_cert(i32, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @hx509_validate_ctx_init(i32, i32*) #1

declare dso_local i32 @hx509_validate_ctx_set_print(i32, i32, i32) #1

declare dso_local i32 @hx509_validate_ctx_add_flags(i32, i32) #1

declare dso_local i32 @hx509_validate_cert(i32, i32, i32) #1

declare dso_local i32 @hx509_validate_ctx_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
