; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_ccache_name.c__gsskrb5_krb5_ccache_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_ccache_name.c__gsskrb5_krb5_ccache_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_out_name = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gsskrb5_krb5_ccache_name(i64* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i64*, i64** %5, align 8
  store i64 0, i64* %11, align 8
  %12 = call i32 @GSSAPI_KRB5_INIT(i32* %8)
  %13 = load i8**, i8*** %7, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %3
  %16 = load i8*, i8** @last_out_name, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** @last_out_name, align 8
  %20 = call i32 @free(i8* %19)
  store i8* null, i8** @last_out_name, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @krb5_cc_default_name(i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %29, i64* %4, align 8
  br label %54

30:                                               ; preds = %21
  %31 = load i8*, i8** %10, align 8
  %32 = call i8* @strdup(i8* %31)
  store i8* %32, i8** @last_out_name, align 8
  %33 = load i8*, i8** @last_out_name, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i64, i64* @ENOMEM, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %38, i64* %4, align 8
  br label %54

39:                                               ; preds = %30
  %40 = load i8*, i8** @last_out_name, align 8
  %41 = load i8**, i8*** %7, align 8
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %39, %3
  %43 = load i32, i32* %8, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @krb5_cc_set_default_name(i32 %43, i8* %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* %9, align 8
  %50 = load i64*, i64** %5, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %51, i64* %4, align 8
  br label %54

52:                                               ; preds = %42
  %53 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %52, %48, %35, %26
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local i32 @GSSAPI_KRB5_INIT(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @krb5_cc_default_name(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @krb5_cc_set_default_name(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
