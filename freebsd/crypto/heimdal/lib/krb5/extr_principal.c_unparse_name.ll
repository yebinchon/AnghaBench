; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_principal.c_unparse_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_principal.c_unparse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quotable_chars = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8**, i32)* @unparse_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unparse_name(i32 %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @princ_realm(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @princ_realm(i32 %18)
  %20 = call i64 @strlen(i64 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @princ_realm(i32 %21)
  %23 = load i32, i32* @quotable_chars, align 4
  %24 = call i64 @strcspn(i64 %22, i32 %23)
  %25 = load i64, i64* %11, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %10, align 8
  br label %36

31:                                               ; preds = %17
  %32 = load i64, i64* %11, align 8
  %33 = mul i64 2, %32
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %36, %4
  store i64 0, i64* %12, align 8
  br label %40

40:                                               ; preds = %69, %39
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @princ_num_comp(i32 %42)
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @princ_ncomp(i32 %46, i64 %47)
  %49 = call i64 @strlen(i64 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* %12, align 8
  %52 = call i64 @princ_ncomp(i32 %50, i64 %51)
  %53 = load i32, i32* @quotable_chars, align 4
  %54 = call i64 @strcspn(i64 %52, i32 %53)
  %55 = load i64, i64* %11, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %10, align 8
  br label %66

61:                                               ; preds = %45
  %62 = load i64, i64* %11, align 8
  %63 = mul i64 2, %62
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %12, align 8
  br label %40

72:                                               ; preds = %40
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i8* @malloc(i64 %75)
  %77 = load i8**, i8*** %8, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i8**, i8*** %8, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load i32, i32* %6, align 4
  %83 = load i64, i64* @ENOMEM, align 8
  %84 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %85 = call i32 @krb5_set_error_message(i32 %82, i64 %83, i32 %84)
  %86 = load i64, i64* @ENOMEM, align 8
  store i64 %86, i64* %5, align 8
  br label %104

87:                                               ; preds = %72
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i8**, i8*** %8, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i64 @unparse_name_fixed(i32 %88, i32 %89, i8* %91, i64 %92, i32 %93)
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %87
  %98 = load i8**, i8*** %8, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i8**, i8*** %8, align 8
  store i8* null, i8** %101, align 8
  br label %102

102:                                              ; preds = %97, %87
  %103 = load i64, i64* %13, align 8
  store i64 %103, i64* %5, align 8
  br label %104

104:                                              ; preds = %102, %81
  %105 = load i64, i64* %5, align 8
  ret i64 %105
}

declare dso_local i64 @princ_realm(i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @strcspn(i64, i32) #1

declare dso_local i64 @princ_num_comp(i32) #1

declare dso_local i64 @princ_ncomp(i32, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @unparse_name_fixed(i32, i32, i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
