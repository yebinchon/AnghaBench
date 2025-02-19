; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pvkfmt.c_do_b2i.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pvkfmt.c_do_b2i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEM_F_DO_B2I = common dso_local global i32 0, align 4
@PEM_R_KEYBLOB_HEADER_PARSE_ERROR = common dso_local global i32 0, align 4
@PEM_R_KEYBLOB_TOO_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32, i32)* @do_b2i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_b2i(i8** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @do_blob_header(i8** %8, i32 %14, i32* %10, i32* %9, i32* %11, i32* %7)
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @PEM_F_DO_B2I, align 4
  %19 = load i32, i32* @PEM_R_KEYBLOB_HEADER_PARSE_ERROR, align 4
  %20 = call i32 @PEMerr(i32 %18, i32 %19)
  store i32* null, i32** %4, align 8
  br label %45

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = sub i32 %22, 16
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @blob_length(i32 %25, i32 %26, i32 %27)
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @PEM_F_DO_B2I, align 4
  %32 = load i32, i32* @PEM_R_KEYBLOB_TOO_SHORT, align 4
  %33 = call i32 @PEMerr(i32 %31, i32 %32)
  store i32* null, i32** %4, align 8
  br label %45

34:                                               ; preds = %21
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32* @b2i_dss(i8** %8, i32 %38, i32 %39)
  store i32* %40, i32** %4, align 8
  br label %45

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32* @b2i_rsa(i8** %8, i32 %42, i32 %43)
  store i32* %44, i32** %4, align 8
  br label %45

45:                                               ; preds = %41, %37, %30, %17
  %46 = load i32*, i32** %4, align 8
  ret i32* %46
}

declare dso_local i64 @do_blob_header(i8**, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @blob_length(i32, i32, i32) #1

declare dso_local i32* @b2i_dss(i8**, i32, i32) #1

declare dso_local i32* @b2i_rsa(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
