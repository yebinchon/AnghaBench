; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_ksu/extr_pam_ksu.c_get_su_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_ksu/extr_pam_ksu.c_get_su_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"KRB5CCNAME\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%lu\00", align 1
@KRB5_DEFAULT_CCROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Could not determine default principal name.\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"krb5_unparse_name: %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Default principal name: %s\00", align 1
@superuser = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"malformed principal name `%s'\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s/%s@%s\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"krb5_parse_name `%s': %s\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Target principal name: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i8*, i8**, i32**)* @get_su_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_su_principal(i32 %0, i8* %1, i8* %2, i8** %3, i32** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32** %4, i32*** %11, align 8
  %22 = load i32**, i32*** %11, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %12, align 8
  %23 = call i64 (...) @getuid()
  store i64 %23, i64* %19, align 8
  %24 = call i64 (...) @geteuid()
  store i64 %24, i64* %18, align 8
  %25 = load i64, i64* %19, align 8
  %26 = call i64 @seteuid(i64 %25)
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* %17, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i64, i64* @errno, align 8
  store i64 %30, i64* %6, align 8
  br label %174

31:                                               ; preds = %5
  %32 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %16, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %16, align 8
  %37 = call i8* @strdup(i8* %36)
  store i8* %37, i8** %15, align 8
  br label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @KRB5_DEFAULT_CCROOT, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load i64, i64* %19, align 8
  %43 = call i32 (i8**, i8*, i8*, i64, ...) @asprintf(i8** %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %41, i64 %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i8*, i8** %15, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @errno, align 8
  store i64 %48, i64* %6, align 8
  br label %174

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** %15, align 8
  %52 = call i64 @krb5_cc_resolve(i32 %50, i8* %51, i32* %13)
  store i64 %52, i64* %17, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i64, i64* %17, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i64 @krb5_cc_get_principal(i32 %58, i32 %59, i32** %12)
  store i64 %60, i64* %17, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @krb5_cc_close(i32 %61, i32 %62)
  %64 = load i64, i64* %17, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32* null, i32** %12, align 8
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67, %49
  %69 = load i64, i64* %18, align 8
  %70 = call i64 @seteuid(i64 %69)
  store i64 %70, i64* %17, align 8
  %71 = load i64, i64* %17, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @errno, align 8
  store i64 %74, i64* %6, align 8
  br label %174

75:                                               ; preds = %68
  %76 = load i32*, i32** %12, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @krb5_make_principal(i32 %79, i32** %12, i32* null, i8* %80, i32* null)
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %17, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = call i32 (i8*, ...) @PAM_LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i64, i64* %17, align 8
  store i64 %86, i64* %6, align 8
  br label %174

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %75
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = call i64 @krb5_unparse_name(i32 %89, i32* %90, i8** %14)
  store i64 %91, i64* %17, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @krb5_free_principal(i32 %92, i32* %93)
  %95 = load i64, i64* %17, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  %99 = load i64, i64* %17, align 8
  %100 = call i8* @krb5_get_error_message(i32 %98, i64 %99)
  store i8* %100, i8** %20, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = call i32 (i8*, ...) @PAM_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i8*, i8** %20, align 8
  %105 = call i32 @krb5_free_error_message(i32 %103, i8* %104)
  %106 = load i64, i64* %17, align 8
  store i64 %106, i64* %6, align 8
  br label %174

107:                                              ; preds = %88
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 (i8*, ...) @PAM_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* @superuser, align 4
  %112 = call i64 @strcmp(i8* %110, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %107
  %115 = load i8*, i8** %14, align 8
  %116 = call i8* @strrchr(i8* %115, i8 signext 64)
  store i8* %116, i8** %16, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 (i8*, ...) @PAM_LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %120)
  %122 = load i8*, i8** %14, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i64, i64* %17, align 8
  store i64 %124, i64* %6, align 8
  br label %174

125:                                              ; preds = %114
  %126 = load i8*, i8** %16, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %16, align 8
  store i8 0, i8* %126, align 1
  %128 = load i8**, i8*** %10, align 8
  store i8* null, i8** %128, align 8
  %129 = load i8**, i8*** %10, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i32, i32* @superuser, align 4
  %132 = sext i32 %131 to i64
  %133 = load i8*, i8** %16, align 8
  %134 = call i32 (i8**, i8*, i8*, i64, ...) @asprintf(i8** %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %130, i64 %132, i8* %133)
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 @free(i8* %135)
  br label %140

137:                                              ; preds = %107
  %138 = load i8*, i8** %14, align 8
  %139 = load i8**, i8*** %10, align 8
  store i8* %138, i8** %139, align 8
  br label %140

140:                                              ; preds = %137, %125
  %141 = load i8**, i8*** %10, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i64, i64* @errno, align 8
  store i64 %145, i64* %6, align 8
  br label %174

146:                                              ; preds = %140
  %147 = load i32, i32* %7, align 4
  %148 = load i8**, i8*** %10, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @krb5_parse_name(i32 %147, i8* %149, i32** %12)
  store i64 %150, i64* %17, align 8
  %151 = load i64, i64* %17, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %146
  %154 = load i32, i32* %7, align 4
  %155 = load i64, i64* %17, align 8
  %156 = call i8* @krb5_get_error_message(i32 %154, i64 %155)
  store i8* %156, i8** %21, align 8
  %157 = load i8**, i8*** %10, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** %21, align 8
  %160 = call i32 (i8*, ...) @PAM_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %158, i8* %159)
  %161 = load i32, i32* %7, align 4
  %162 = load i8*, i8** %21, align 8
  %163 = call i32 @krb5_free_error_message(i32 %161, i8* %162)
  %164 = load i8**, i8*** %10, align 8
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @free(i8* %165)
  %167 = load i64, i64* %17, align 8
  store i64 %167, i64* %6, align 8
  br label %174

168:                                              ; preds = %146
  %169 = load i8**, i8*** %10, align 8
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i8*, ...) @PAM_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %170)
  %172 = load i32*, i32** %12, align 8
  %173 = load i32**, i32*** %11, align 8
  store i32* %172, i32** %173, align 8
  store i64 0, i64* %6, align 8
  br label %174

174:                                              ; preds = %168, %153, %144, %119, %97, %84, %73, %47, %29
  %175 = load i64, i64* %6, align 8
  ret i64 %175
}

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @seteuid(i64) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i64, ...) #1

declare dso_local i64 @krb5_cc_resolve(i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, i32**) #1

declare dso_local i32 @krb5_cc_close(i32, i32) #1

declare dso_local i64 @krb5_make_principal(i32, i32**, i32*, i8*, i32*) #1

declare dso_local i32 @PAM_LOG(i8*, ...) #1

declare dso_local i64 @krb5_unparse_name(i32, i32*, i8**) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i8* @krb5_get_error_message(i32, i64) #1

declare dso_local i32 @krb5_free_error_message(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
