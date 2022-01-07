; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_principal.c_unparse_name_fixed.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_principal.c_unparse_name_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KRB5_PRINCIPAL_UNPARSE_SHORT = common dso_local global i32 0, align 4
@KRB5_PRINCIPAL_UNPARSE_NO_REALM = common dso_local global i32 0, align 4
@KRB5_PRINCIPAL_UNPARSE_DISPLAY = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Realm missing from principal, can't unparse\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Out of space printing principal\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Out of space printing realm of principal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8*, i64, i32)* @unparse_name_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unparse_name_fixed(i32 %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @KRB5_PRINCIPAL_UNPARSE_SHORT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @KRB5_PRINCIPAL_UNPARSE_NO_REALM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @KRB5_PRINCIPAL_UNPARSE_DISPLAY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* %8, align 4
  %38 = call i32* @princ_realm(i32 %37)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* @ERANGE, align 8
  %43 = call i32 @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @krb5_set_error_message(i32 %41, i64 %42, i32 %43)
  %45 = load i64, i64* @ERANGE, align 8
  store i64 %45, i64* %6, align 8
  br label %134

46:                                               ; preds = %36, %5
  store i64 0, i64* %13, align 8
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i64, i64* %13, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @princ_num_comp(i32 %49)
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %47
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @add_char(i8* %56, i64 %57, i64 %58, i8 signext 47)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %8, align 4
  %62 = load i64, i64* %13, align 8
  %63 = call i32* @princ_ncomp(i32 %61, i64 %62)
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i64 @quote_string(i32* %63, i8* %64, i64 %65, i64 %66, i32 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* @ERANGE, align 8
  %75 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @krb5_set_error_message(i32 %73, i64 %74, i32 %75)
  %77 = load i64, i64* @ERANGE, align 8
  store i64 %77, i64* %6, align 8
  br label %134

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %13, align 8
  br label %47

82:                                               ; preds = %47
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @krb5_get_default_realm(i32 %89, i32* %17)
  store i64 %90, i64* %18, align 8
  %91 = load i64, i64* %18, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i64, i64* %18, align 8
  store i64 %94, i64* %6, align 8
  br label %134

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  %97 = call i32* @princ_realm(i32 %96)
  %98 = load i32, i32* %17, align 4
  %99 = call i64 @strcmp(i32* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %101, %95
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @free(i32 %103)
  br label %105

105:                                              ; preds = %102, %85, %82
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %133, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %133, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @add_char(i8* %112, i64 %113, i64 %114, i8 signext 64)
  %116 = load i32, i32* %8, align 4
  %117 = call i32* @princ_realm(i32 %116)
  %118 = load i8*, i8** %9, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i32, i32* %16, align 4
  %122 = call i64 @quote_string(i32* %117, i8* %118, i64 %119, i64 %120, i32 %121)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* %10, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %111
  %127 = load i32, i32* %7, align 4
  %128 = load i64, i64* @ERANGE, align 8
  %129 = call i32 @N_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %130 = call i32 @krb5_set_error_message(i32 %127, i64 %128, i32 %129)
  %131 = load i64, i64* @ERANGE, align 8
  store i64 %131, i64* %6, align 8
  br label %134

132:                                              ; preds = %111
  br label %133

133:                                              ; preds = %132, %108, %105
  store i64 0, i64* %6, align 8
  br label %134

134:                                              ; preds = %133, %126, %93, %72, %40
  %135 = load i64, i64* %6, align 8
  ret i64 %135
}

declare dso_local i32* @princ_realm(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @princ_num_comp(i32) #1

declare dso_local i32 @add_char(i8*, i64, i64, i8 signext) #1

declare dso_local i64 @quote_string(i32*, i8*, i64, i64, i32) #1

declare dso_local i32* @princ_ncomp(i32, i64) #1

declare dso_local i64 @krb5_get_default_realm(i32, i32*) #1

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
