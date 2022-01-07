; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_princ.c_test_enterprise.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_princ.c_test_enterprise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"SAMBA.ORG\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"krb5_parse_name\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"lha@su.se@WIN.SU.SE\00", align 1
@KRB5_PRINCIPAL_PARSE_ENTERPRISE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"krb5_parse_name_flags\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"krb5_unparse_name\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"lha\\@su.se@WIN.SU.SE\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"enterprise name failed 1\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"lha\\@su.se\\@WIN.SU.SE@SAMBA.ORG\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"enterprise name failed 2: %s\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"enterprise name failed 3\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"lha@su.se\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"lha\\@su.se@SAMBA.ORG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_enterprise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_enterprise(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @krb5_set_default_realm(i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @krb5_err(i32 %11, i32 1, i64 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @KRB5_PRINCIPAL_PARSE_ENTERPRISE, align 4
  %17 = call i64 @krb5_parse_name_flags(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32* %5)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @krb5_err(i32 %21, i32 1, i64 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @krb5_unparse_name(i32 %25, i32 %26, i8** %4)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @krb5_err(i32 %31, i32 1, i64 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @krb5_free_principal(i32 %35, i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %2, align 4
  %43 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %42, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @KRB5_PRINCIPAL_PARSE_ENTERPRISE, align 4
  %49 = call i64 @krb5_parse_name_flags(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32* %5)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* %2, align 4
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @krb5_err(i32 %53, i32 1, i64 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %44
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @krb5_unparse_name(i32 %57, i32 %58, i8** %4)
  store i64 %59, i64* %3, align 8
  %60 = load i64, i64* %3, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %2, align 4
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @krb5_err(i32 %63, i32 1, i64 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @krb5_free_principal(i32 %67, i32 %68)
  %70 = load i8*, i8** %4, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %2, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %74, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %73, %66
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i32, i32* %2, align 4
  %81 = call i64 @krb5_parse_name_flags(i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* %5)
  store i64 %81, i64* %3, align 8
  %82 = load i64, i64* %3, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* %2, align 4
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @krb5_err(i32 %85, i32 1, i64 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %84, %77
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @krb5_unparse_name(i32 %89, i32 %90, i8** %4)
  store i64 %91, i64* %3, align 8
  %92 = load i64, i64* %3, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %2, align 4
  %96 = load i64, i64* %3, align 8
  %97 = call i32 @krb5_err(i32 %95, i32 1, i64 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @krb5_free_principal(i32 %99, i32 %100)
  %102 = load i8*, i8** %4, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* %2, align 4
  %107 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %106, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %98
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @KRB5_PRINCIPAL_PARSE_ENTERPRISE, align 4
  %113 = call i64 @krb5_parse_name_flags(i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %112, i32* %5)
  store i64 %113, i64* %3, align 8
  %114 = load i64, i64* %3, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load i32, i32* %2, align 4
  %118 = load i64, i64* %3, align 8
  %119 = call i32 @krb5_err(i32 %117, i32 1, i64 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %116, %108
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i64 @krb5_unparse_name(i32 %121, i32 %122, i8** %4)
  store i64 %123, i64* %3, align 8
  %124 = load i64, i64* %3, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* %2, align 4
  %128 = load i64, i64* %3, align 8
  %129 = call i32 @krb5_err(i32 %127, i32 1, i64 %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %130

130:                                              ; preds = %126, %120
  %131 = load i32, i32* %2, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @krb5_free_principal(i32 %131, i32 %132)
  %134 = load i8*, i8** %4, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* %2, align 4
  %139 = load i8*, i8** %4, align 8
  %140 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %138, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %137, %130
  %142 = load i8*, i8** %4, align 8
  %143 = call i32 @free(i8* %142)
  ret void
}

declare dso_local i64 @krb5_set_default_realm(i32, i8*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_parse_name_flags(i32, i8*, i32, i32*) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
