; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_kuserok.c_match_local_principals.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_kuserok.c_match_local_principals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @match_local_principals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_local_principals(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32* @krb5_principal_get_comp_string(i32 %13, i32 %14, i32 1)
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @krb5_get_default_realms(i32 %20, i8*** %9)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %59

26:                                               ; preds = %19
  %27 = load i8**, i8*** %9, align 8
  store i8** %27, i8*** %10, align 8
  br label %28

28:                                               ; preds = %51, %26
  %29 = load i8**, i8*** %10, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32* @krb5_principal_get_realm(i32 %33, i32 %34)
  %36 = load i8**, i8*** %10, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i32* %35, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %51

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32* @krb5_principal_get_comp_string(i32 %42, i32 %43, i32 0)
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i32* %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %11, align 4
  br label %54

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i8**, i8*** %10, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %10, align 8
  br label %28

54:                                               ; preds = %48, %28
  %55 = load i32, i32* %5, align 4
  %56 = load i8**, i8*** %9, align 8
  %57 = call i32 @krb5_free_host_realm(i32 %55, i8** %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %24, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @krb5_principal_get_comp_string(i32, i32, i32) #1

declare dso_local i64 @krb5_get_default_realms(i32, i8***) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32* @krb5_principal_get_realm(i32, i32) #1

declare dso_local i32 @krb5_free_host_realm(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
