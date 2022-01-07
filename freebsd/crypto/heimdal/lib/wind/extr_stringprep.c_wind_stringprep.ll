; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_stringprep.c_wind_stringprep.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_stringprep.c_wind_stringprep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE = common dso_local global i32 0, align 4
@WIND_PROFILE_LDAP_CASE_EXACT_ASSERTION = common dso_local global i32 0, align 4
@WIND_PROFILE_LDAP_NUMERIC = common dso_local global i32 0, align 4
@WIND_PROFILE_LDAP_TELEPHONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wind_stringprep(i32* %0, i64 %1, i32* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %8, align 8
  %17 = mul i64 %16, 3
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64*, i64** %10, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %6, align 4
  br label %101

22:                                               ; preds = %5
  %23 = load i64, i64* %12, align 8
  %24 = mul i64 %23, 4
  %25 = call i32* @malloc(i64 %24)
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %6, align 4
  br label %101

30:                                               ; preds = %22
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @_wind_stringprep_map(i32* %31, i64 %32, i32* %33, i64* %12, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @free(i32* %39)
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %101

42:                                               ; preds = %30
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %15, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @_wind_stringprep_normalize(i32* %45, i64 %46, i32* %47, i64* %15)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @free(i32* %52)
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %101

55:                                               ; preds = %42
  %56 = load i32*, i32** %13, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @_wind_stringprep_prohibited(i32* %56, i64 %57, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @free(i32* %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %101

66:                                               ; preds = %55
  %67 = load i32*, i32** %13, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @_wind_stringprep_testbidi(i32* %67, i64 %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @free(i32* %74)
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %101

77:                                               ; preds = %66
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32*, i32** %13, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i64*, i64** %10, align 8
  %87 = call i32 @_wind_ldap_case_exact_attribute(i32* %83, i64 %84, i32* %85, i64* %86)
  store i32 %87, i32* %14, align 4
  br label %97

88:                                               ; preds = %77
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i64, i64* %15, align 8
  %92 = mul i64 4, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memcpy(i32* %89, i32* %90, i32 %93)
  %95 = load i64, i64* %15, align 8
  %96 = load i64*, i64** %10, align 8
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %88, %82
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @free(i32* %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %73, %62, %51, %38, %28, %20
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @_wind_stringprep_map(i32*, i64, i32*, i64*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @_wind_stringprep_normalize(i32*, i64, i32*, i64*) #1

declare dso_local i32 @_wind_stringprep_prohibited(i32*, i64, i32) #1

declare dso_local i32 @_wind_stringprep_testbidi(i32*, i64, i32) #1

declare dso_local i32 @_wind_ldap_case_exact_attribute(i32*, i64, i32*, i64*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
