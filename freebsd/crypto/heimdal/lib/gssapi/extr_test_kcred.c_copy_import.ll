; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_kcred.c_copy_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_kcred.c_copy_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GSS_C_NO_NAME = common dso_local global i32 0, align 4
@GSS_C_INDEFINITE = common dso_local global i32 0, align 4
@GSS_C_NO_OID_SET = common dso_local global i32 0, align 4
@GSS_C_INITIATE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"gss_acquire_cred\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gss_inquire_cred\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"krb5_init_context\00", align 1
@krb5_cc_type_memory = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"krb5_cc_new_unique\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"gss_krb5_copy_ccache\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gss_krb5_import_cred\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"gss_inquire_cred 2\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"gss_compare_name\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"names not equal\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"lifetime not equal %lu != %lu\00", align 1
@GSS_C_BOTH = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"usages disjoined\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @copy_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_import() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = load i32, i32* @GSS_C_NO_NAME, align 4
  %18 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %19 = load i32, i32* @GSS_C_NO_OID_SET, align 4
  %20 = load i32, i32* @GSS_C_INITIATE, align 4
  %21 = call i64 @gss_acquire_cred(i64* %4, i32 %17, i32 %18, i32 %19, i32 %20, i32* %1, i32* null, i32* null)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @GSS_S_COMPLETE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %0
  %28 = load i32, i32* %1, align 4
  %29 = call i64 @gss_inquire_cred(i64* %4, i32 %28, i32* %5, i64* %7, i64* %9, i32* %11)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @GSS_S_COMPLETE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %27
  %36 = call i64 @krb5_init_context(i32* %15)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @krb5_cc_type_memory, align 4
  %44 = call i64 @krb5_cc_new_unique(i32 %42, i32 %43, i32* null, i32* %13)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %15, align 4
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @krb5_err(i32 %48, i32 1, i64 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i64 @gss_krb5_copy_ccache(i64* %4, i32 %52, i32 %53)
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @GSS_S_COMPLETE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %51
  %61 = load i32, i32* %13, align 4
  %62 = call i64 @gss_krb5_import_cred(i64* %4, i32 %61, i32* null, i32* null, i32* %2)
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @GSS_S_COMPLETE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i32, i32* %2, align 4
  %70 = call i64 @gss_inquire_cred(i64* %4, i32 %69, i32* %6, i64* %8, i64* %10, i32* %12)
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @GSS_S_COMPLETE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %68
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @gss_compare_name(i64* %4, i32 %77, i32 %78, i32* %16)
  store i64 %79, i64* %3, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* @GSS_S_COMPLETE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %76
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i64 %95, i64 %96)
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @GSS_C_BOTH, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @GSS_C_BOTH, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %106, %102
  br label %113

113:                                              ; preds = %112, %98
  %114 = call i32 @gss_release_name(i64* %4, i32* %6)
  %115 = call i32 @gss_release_oid_set(i64* %4, i32* %12)
  %116 = load i32, i32* %2, align 4
  %117 = call i64 @gss_inquire_cred(i64* %4, i32 %116, i32* %6, i64* %8, i64* %10, i32* %12)
  store i64 %117, i64* %3, align 8
  %118 = load i64, i64* %3, align 8
  %119 = load i64, i64* @GSS_S_COMPLETE, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %113
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i64 @gss_compare_name(i64* %4, i32 %124, i32 %125, i32* %16)
  store i64 %126, i64* %3, align 8
  %127 = load i64, i64* %3, align 8
  %128 = load i64, i64* @GSS_S_COMPLETE, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %123
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %132
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %8, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i64 %142, i64 %143)
  br label %145

145:                                              ; preds = %141, %137
  %146 = call i32 @gss_release_cred(i64* %4, i32* %1)
  %147 = call i32 @gss_release_cred(i64* %4, i32* %2)
  %148 = call i32 @gss_release_name(i64* %4, i32* %5)
  %149 = call i32 @gss_release_name(i64* %4, i32* %6)
  %150 = call i32 @gss_release_oid_set(i64* %4, i32* %11)
  %151 = call i32 @gss_release_oid_set(i64* %4, i32* %12)
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @krb5_cc_destroy(i32 %152, i32 %153)
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @krb5_free_context(i32 %155)
  ret void
}

declare dso_local i64 @gss_acquire_cred(i64*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @gss_inquire_cred(i64*, i32, i32*, i64*, i64*, i32*) #1

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i64 @krb5_cc_new_unique(i32, i32, i32*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @gss_krb5_copy_ccache(i64*, i32, i32) #1

declare dso_local i64 @gss_krb5_import_cred(i64*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @gss_compare_name(i64*, i32, i32, i32*) #1

declare dso_local i32 @gss_release_name(i64*, i32*) #1

declare dso_local i32 @gss_release_oid_set(i64*, i32*) #1

declare dso_local i32 @gss_release_cred(i64*, i32*) #1

declare dso_local i32 @krb5_cc_destroy(i32, i32) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
