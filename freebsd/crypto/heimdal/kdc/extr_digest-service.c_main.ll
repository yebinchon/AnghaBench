; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_digest-service.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_digest-service.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"krb5_init_context\00", align 1
@config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"krb5_kdc_default_config\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"digest-service\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"krb5_kdc_set_dbinfo\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"org.h5l.ntlm-service\00", align 1
@ntlm_service = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @setprogname(i8* %12)
  %14 = load i32, i32* @args, align 4
  %15 = load i32, i32* @num_args, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i64 @getarg(i32 %14, i32 %15, i32 %16, i8** %17, i32* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @usage(i32 1)
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i64, i64* @help_flag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @usage(i32 0)
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i64, i64* @version_flag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = call i32 @print_version(i32* null)
  %32 = call i32 @exit(i32 0) #3
  unreachable

33:                                               ; preds = %27
  %34 = call i32 @krb5_init_context(i32* %6)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @krb5_errx(i32 %38, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @krb5_kdc_get_config(i32 %41, i32* @config)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @krb5_err(i32 %46, i32 1, i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @config, align 4
  %52 = call i32 @kdc_openlog(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @config, align 4
  %55 = call i32 @krb5_kdc_set_dbinfo(i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @krb5_err(i32 %59, i32 1, i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %49
  %63 = load i32, i32* @ntlm_service, align 4
  %64 = call i32 @heim_sipc_service_unix(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32* null, i32* %9)
  %65 = call i32 (...) @heim_ipc_main()
  ret i32 0
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @krb5_init_context(i32*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @krb5_kdc_get_config(i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

declare dso_local i32 @kdc_openlog(i32, i8*, i32) #1

declare dso_local i32 @krb5_kdc_set_dbinfo(i32, i32) #1

declare dso_local i32 @heim_sipc_service_unix(i8*, i32, i32*, i32*) #1

declare dso_local i32 @heim_ipc_main(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
