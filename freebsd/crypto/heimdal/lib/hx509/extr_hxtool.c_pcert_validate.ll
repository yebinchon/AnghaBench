; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_pcert_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_pcert_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.validate_options = type { i32 }

@context = common dso_local global i32 0, align 4
@hx509_print_stdout = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@HX509_VALIDATE_F_VALIDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"hx509_certs_init: %d\00", align 1
@validate_f = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcert_validate(%struct.validate_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.validate_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.validate_options* %0, %struct.validate_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %11 = load i32, i32* @context, align 4
  %12 = call i32 @hx509_lock_init(i32 %11, i32* %9)
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.validate_options*, %struct.validate_options** %4, align 8
  %15 = getelementptr inbounds %struct.validate_options, %struct.validate_options* %14, i32 0, i32 0
  %16 = call i32 @lock_strings(i32 %13, i32* %15)
  %17 = load i32, i32* @context, align 4
  %18 = call i32 @hx509_validate_ctx_init(i32 %17, i32* %7)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @hx509_print_stdout, align 4
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @hx509_validate_ctx_set_print(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %25 = call i32 @hx509_validate_ctx_add_flags(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %42, %3
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i32, i32* @context, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @hx509_certs_init(i32 %31, i8* %34, i32 0, i32 %35, i32* %8)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i32, i32* @context, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @validate_f, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @hx509_certs_iter_f(i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = call i32 @hx509_certs_free(i32* %8)
  %49 = load i8**, i8*** %6, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %6, align 8
  br label %26

51:                                               ; preds = %26
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @hx509_validate_ctx_free(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @hx509_lock_free(i32 %54)
  ret i32 0
}

declare dso_local i32 @hx509_lock_init(i32, i32*) #1

declare dso_local i32 @lock_strings(i32, i32*) #1

declare dso_local i32 @hx509_validate_ctx_init(i32, i32*) #1

declare dso_local i32 @hx509_validate_ctx_set_print(i32, i32, i32) #1

declare dso_local i32 @hx509_validate_ctx_add_flags(i32, i32) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @hx509_certs_iter_f(i32, i32, i32, i32) #1

declare dso_local i32 @hx509_certs_free(i32*) #1

declare dso_local i32 @hx509_validate_ctx_free(i32) #1

declare dso_local i32 @hx509_lock_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
