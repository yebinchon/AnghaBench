; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_compat.c_check_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_compat.c_check_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"gssapi\00", align 1
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i32, i8*, i32*, i32)* @check_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_compat(i64* %0, i32 %1, i32 %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  store i64* %0, i64** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = call i8** @krb5_config_get_strings(i32 %18, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %19, i32* null)
  store i8** %20, i8*** %15, align 8
  %21 = load i8**, i8*** %15, align 8
  %22 = icmp eq i8** %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %75

24:                                               ; preds = %6
  store i32* null, i32** %17, align 8
  %25 = load i8**, i8*** %15, align 8
  store i8** %25, i8*** %16, align 8
  br label %26

26:                                               ; preds = %51, %24
  %27 = load i8**, i8*** %16, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i8**, i8*** %16, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @krb5_parse_name(i32 %31, i8* %33, i32** %17)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %54

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %17, align 8
  %42 = call i64 @krb5_principal_match(i32 %39, i32 %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  br label %54

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %17, align 8
  %50 = call i32 @krb5_free_principal(i32 %48, i32* %49)
  store i32* null, i32** %17, align 8
  br label %51

51:                                               ; preds = %47
  %52 = load i8**, i8*** %16, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %16, align 8
  br label %26

54:                                               ; preds = %44, %37, %26
  %55 = load i32*, i32** %17, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %17, align 8
  %60 = call i32 @krb5_free_principal(i32 %58, i32* %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i8**, i8*** %15, align 8
  %63 = call i32 @krb5_config_free_strings(i8** %62)
  %64 = load i64, i64* %14, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i64*, i64** %8, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i64, i64* %14, align 8
  %71 = load i64*, i64** %8, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %73, i64* %7, align 8
  br label %75

74:                                               ; preds = %61
  store i64 0, i64* %7, align 8
  br label %75

75:                                               ; preds = %74, %72, %23
  %76 = load i64, i64* %7, align 8
  ret i64 %76
}

declare dso_local i8** @krb5_config_get_strings(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32**) #1

declare dso_local i64 @krb5_principal_match(i32, i32, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i32 @krb5_config_free_strings(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
