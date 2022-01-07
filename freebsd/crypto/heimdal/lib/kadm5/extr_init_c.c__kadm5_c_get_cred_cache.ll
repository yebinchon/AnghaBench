; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c__kadm5_c_get_cred_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c__kadm5_c_get_cred_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KADM5_ADMIN_SERVICE = common dso_local global i8* null, align 8
@KADM5_FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Unable to find local user name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"admin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kadm5_c_get_cred_cache(i32 %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32* %6, i32** %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32** %7, i32*** %17, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %8
  %26 = load i8*, i8** %13, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* null, i8** %13, align 8
  br label %31

31:                                               ; preds = %30, %25, %8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i8*, i8** @KADM5_ADMIN_SERVICE, align 8
  store i8* %35, i8** %12, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @krb5_parse_name(i32 %40, i8* %41, i32** %21)
  store i64 %42, i64* %18, align 8
  %43 = load i64, i64* %18, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i64, i64* %18, align 8
  store i64 %46, i64* %9, align 8
  br label %167

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32*, i32** %16, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32*, i32** %16, align 8
  store i32* %52, i32** %19, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %19, align 8
  %55 = call i64 @krb5_cc_get_principal(i32 %53, i32* %54, i32** %21)
  store i64 %55, i64* %18, align 8
  %56 = load i64, i64* %18, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i64, i64* %18, align 8
  store i64 %59, i64* %9, align 8
  br label %167

60:                                               ; preds = %51
  br label %85

61:                                               ; preds = %48
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @get_cache_principal(i32 %62, i32** %19, i32** %20)
  store i64 %63, i64* %18, align 8
  %64 = load i64, i64* %18, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %61
  %67 = call i8* (...) @get_default_username()
  store i8* %67, i8** %22, align 8
  %68 = load i8*, i8** %22, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = load i64, i64* @KADM5_FAILURE, align 8
  %73 = call i32 @krb5_set_error_message(i32 %71, i64 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %74 = load i64, i64* @KADM5_FAILURE, align 8
  store i64 %74, i64* %9, align 8
  br label %167

75:                                               ; preds = %66
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %22, align 8
  %78 = call i64 @krb5_make_principal(i32 %76, i32** %20, i32* null, i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i64 %78, i64* %18, align 8
  %79 = load i64, i64* %18, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i64, i64* %18, align 8
  store i64 %82, i64* %9, align 8
  br label %167

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %61
  br label %85

85:                                               ; preds = %84, %60
  %86 = load i32*, i32** %21, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32*, i32** %20, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32*, i32** %20, align 8
  store i32* %92, i32** %21, align 8
  br label %93

93:                                               ; preds = %91, %88, %85
  %94 = load i32*, i32** %19, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %135

96:                                               ; preds = %93
  %97 = load i32*, i32** %21, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %135

99:                                               ; preds = %96
  %100 = load i32*, i32** %20, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %21, align 8
  %105 = load i32*, i32** %20, align 8
  %106 = call i64 @krb5_principal_compare(i32 %103, i32* %104, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %102, %99
  %109 = load i32, i32* %10, align 4
  %110 = load i32*, i32** %19, align 8
  %111 = load i32*, i32** %21, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i64 @get_kadm_ticket(i32 %109, i32* %110, i32* %111, i8* %112)
  store i64 %113, i64* %18, align 8
  %114 = load i64, i64* %18, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %108
  %117 = load i32*, i32** %19, align 8
  %118 = load i32**, i32*** %17, align 8
  store i32* %117, i32** %118, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32*, i32** %20, align 8
  %121 = call i32 @krb5_free_principal(i32 %119, i32* %120)
  %122 = load i32*, i32** %20, align 8
  %123 = load i32*, i32** %21, align 8
  %124 = icmp ne i32* %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load i32, i32* %10, align 4
  %127 = load i32*, i32** %21, align 8
  %128 = call i32 @krb5_free_principal(i32 %126, i32* %127)
  br label %129

129:                                              ; preds = %125, %116
  store i64 0, i64* %9, align 8
  br label %167

130:                                              ; preds = %108
  %131 = load i32*, i32** %16, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i64 -1, i64* %9, align 8
  br label %167

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134, %102, %96, %93
  %136 = load i32*, i32** %19, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i32*, i32** %19, align 8
  %140 = load i32*, i32** %16, align 8
  %141 = icmp ne i32* %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i32, i32* %10, align 4
  %144 = load i32*, i32** %19, align 8
  %145 = call i32 @krb5_cc_close(i32 %143, i32* %144)
  br label %146

146:                                              ; preds = %142, %138, %135
  %147 = load i32*, i32** %21, align 8
  %148 = load i32*, i32** %20, align 8
  %149 = icmp ne i32* %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32, i32* %10, align 4
  %152 = load i32*, i32** %20, align 8
  %153 = call i32 @krb5_free_principal(i32 %151, i32* %152)
  br label %154

154:                                              ; preds = %150, %146
  %155 = load i32, i32* %10, align 4
  %156 = load i32*, i32** %21, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load i8*, i8** %15, align 8
  %160 = load i8*, i8** %12, align 8
  %161 = load i32**, i32*** %17, align 8
  %162 = call i64 @get_new_cache(i32 %155, i32* %156, i8* %157, i32 %158, i8* %159, i8* %160, i32** %161)
  store i64 %162, i64* %18, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i32*, i32** %21, align 8
  %165 = call i32 @krb5_free_principal(i32 %163, i32* %164)
  %166 = load i64, i64* %18, align 8
  store i64 %166, i64* %9, align 8
  br label %167

167:                                              ; preds = %154, %133, %129, %81, %70, %58, %45
  %168 = load i64, i64* %9, align 8
  ret i64 %168
}

declare dso_local i64 @krb5_parse_name(i32, i8*, i32**) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32*, i32**) #1

declare dso_local i64 @get_cache_principal(i32, i32**, i32**) #1

declare dso_local i8* @get_default_username(...) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*) #1

declare dso_local i64 @krb5_make_principal(i32, i32**, i32*, i8*, i8*, i32*) #1

declare dso_local i64 @krb5_principal_compare(i32, i32*, i32*) #1

declare dso_local i64 @get_kadm_ticket(i32, i32*, i32*, i8*) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

declare dso_local i64 @get_new_cache(i32, i32*, i8*, i32, i8*, i8*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
