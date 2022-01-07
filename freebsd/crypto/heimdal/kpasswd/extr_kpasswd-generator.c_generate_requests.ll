; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswd-generator.c_generate_requests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswd-generator.c_generate_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"krb5_parse_name %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s2\00", align 1
@nop_prompter = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"kadmin/changepw\00", align 1
@KRB5KRB_AP_ERR_BAD_INTEGRITY = common dso_local global i64 0, align 8
@KRB5KRB_AP_ERR_MODIFIED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"krb5_get_init_creds_password\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"krb5_change_password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @generate_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_requests(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = call i64 @krb5_init_context(i32* %5)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @read_words(i8* %27, i8*** %8)
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %119, %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %122

33:                                               ; preds = %29
  %34 = load i8**, i8*** %8, align 8
  %35 = call i32 (...) @rand()
  %36 = load i32, i32* %9, align 4
  %37 = urem i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %34, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @krb5_get_init_creds_opt_alloc(i32 %41, i32** %11)
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @krb5_get_init_creds_opt_set_tkt_life(i32* %43, i32 300)
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @krb5_get_init_creds_opt_set_forwardable(i32* %45, i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @krb5_get_init_creds_opt_set_proxiable(i32* %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = call i64 @krb5_parse_name(i32 %51, i8* %52, i32* %13)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %33
  %57 = load i32, i32* %5, align 4
  %58 = load i64, i64* %6, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %57, i32 1, i64 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %56, %33
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @asprintf(i8** %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @asprintf(i8** %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i8*, i8** %17, align 8
  %69 = load i32, i32* @nop_prompter, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = call i64 @krb5_get_init_creds_password(i32 %66, i32* %12, i32 %67, i8* %68, i32 %69, i32* null, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %70)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %61
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75, %61
  %80 = load i8*, i8** %18, align 8
  store i8* %80, i8** %19, align 8
  %81 = load i8*, i8** %17, align 8
  store i8* %81, i8** %18, align 8
  %82 = load i8*, i8** %19, align 8
  store i8* %82, i8** %17, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i8*, i8** %17, align 8
  %86 = load i32, i32* @nop_prompter, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = call i64 @krb5_get_init_creds_password(i32 %83, i32* %12, i32 %84, i8* %85, i32 %86, i32* null, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %87)
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %79, %75
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = load i64, i64* %6, align 8
  %95 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %93, i32 1, i64 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @krb5_free_principal(i32 %97, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load i8*, i8** %18, align 8
  %102 = call i64 @krb5_set_password(i32 %100, i32* %12, i8* %101, i32* null, i32* %14, i32* %15, i32* %16)
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* %5, align 4
  %107 = load i64, i64* %6, align 8
  %108 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %106, i32 1, i64 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %96
  %110 = load i8*, i8** %17, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i8*, i8** %18, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @krb5_free_cred_contents(i32 %114, i32* %12)
  %116 = load i32, i32* %5, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @krb5_get_init_creds_opt_free(i32 %116, i32* %117)
  br label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %29

122:                                              ; preds = %29
  ret void
}

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @read_words(i8*, i8***) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @krb5_get_init_creds_opt_alloc(i32, i32**) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_tkt_life(i32*, i32) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_forwardable(i32*, i32) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_proxiable(i32*, i32) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i64 @krb5_get_init_creds_password(i32, i32*, i32, i8*, i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @krb5_set_password(i32, i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, i32*) #1

declare dso_local i32 @krb5_get_init_creds_opt_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
