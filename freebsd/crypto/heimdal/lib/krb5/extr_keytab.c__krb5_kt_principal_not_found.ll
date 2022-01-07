; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab.c__krb5_kt_principal_not_found.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab.c__krb5_kt_principal_not_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"(kvno %d)\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to find %s%s in keytab %s (%s)\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"principal, kvno, keytab file, enctype\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"unknown keytab\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"unknown enctype\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_krb5_kt_principal_not_found(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  %14 = alloca [25 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i8* null, i8** %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %20 = call i32 @krb5_unparse_name_fixed(i32 %17, i32 %18, i8* %19, i32 256)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @krb5_kt_get_full_name(i32 %21, i32 %22, i8** %15)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @krb5_enctype_to_string(i32 %24, i32 %25, i8** %16)
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = getelementptr inbounds [25 x i8], [25 x i8]* %14, i64 0, i64 0
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @snprintf(i8* %30, i32 25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %35

33:                                               ; preds = %6
  %34 = getelementptr inbounds [25 x i8], [25 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %34, align 16
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %40 = getelementptr inbounds [25 x i8], [25 x i8]* %14, i64 0, i64 0
  %41 = load i8*, i8** %15, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i8*, i8** %15, align 8
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i8* [ %44, %43 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), %45 ]
  %48 = load i8*, i8** %16, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i8*, i8** %16, align 8
  br label %53

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i8* [ %51, %50 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %52 ]
  %55 = call i32 @krb5_set_error_message(i32 %36, i32 %37, i32 %38, i8* %39, i8* %40, i8* %47, i8* %54)
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i8*, i8** %16, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @krb5_unparse_name_fixed(i32, i32, i8*, i32) #1

declare dso_local i32 @krb5_kt_get_full_name(i32, i32, i8**) #1

declare dso_local i32 @krb5_enctype_to_string(i32, i32, i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
