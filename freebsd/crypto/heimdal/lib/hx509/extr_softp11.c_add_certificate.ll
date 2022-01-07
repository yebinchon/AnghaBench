; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_add_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_add_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i8*, i8* }

@HX509_CERTS_UNPROTECT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PASS:%s\00", align 1
@context = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to open file %s\0A\00", align 1
@CKR_GENERAL_ERROR = common dso_local global i32 0, align 4
@add_cert = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed adding certs from file %s\0A\00", align 1
@CKR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @add_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_certificate(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.foo, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds %struct.foo, %struct.foo* %14, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds %struct.foo, %struct.foo* %14, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @HX509_CERTS_UNPROTECT_ALL, align 4
  %24 = load i32, i32* %13, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @context, align 4
  %33 = call i32 @hx509_lock_init(i32 %32, i32** %11)
  %34 = load i32*, i32** %11, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = call i32 @hx509_lock_command_string(i32* %34, i8* %35)
  %37 = load i8*, i8** %15, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call i32 @memset(i8* %37, i32 0, i32 %39)
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @free(i8* %41)
  br label %43

43:                                               ; preds = %29, %26
  %44 = load i32, i32* @context, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @hx509_certs_init(i32 %44, i8* %45, i32 %46, i32* %47, i32* %10)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @st_logf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @CKR_GENERAL_ERROR, align 4
  store i32 %54, i32* %5, align 4
  br label %69

55:                                               ; preds = %43
  %56 = load i32, i32* @context, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @add_cert, align 4
  %59 = call i32 @hx509_certs_iter_f(i32 %56, i32 %57, i32 %58, %struct.foo* %14)
  store i32 %59, i32* %12, align 4
  %60 = call i32 @hx509_certs_free(i32* %10)
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @st_logf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @CKR_GENERAL_ERROR, align 4
  store i32 %66, i32* %5, align 4
  br label %69

67:                                               ; preds = %55
  %68 = load i32, i32* @CKR_OK, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %63, %51
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @hx509_lock_init(i32, i32**) #1

declare dso_local i32 @hx509_lock_command_string(i32*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @st_logf(i8*, i8*) #1

declare dso_local i32 @hx509_certs_iter_f(i32, i32, i32, %struct.foo*) #1

declare dso_local i32 @hx509_certs_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
