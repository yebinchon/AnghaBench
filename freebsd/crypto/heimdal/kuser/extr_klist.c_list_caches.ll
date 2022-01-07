; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_list_caches.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_list_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"krb5_cc_default_name\00", align 1
@KRB5_CC_NOSUPP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"krb5_cc_cache_get_first\00", align 1
@COL_NAME = common dso_local global i32 0, align 4
@COL_CACHENAME = common dso_local global i32 0, align 4
@COL_EXPIRES = common dso_local global i32 0, align 4
@COL_DEFCACHE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [16 x i8] c">>> Expired <<<\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"krb5_cc_get_full_name\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @list_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_caches(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @krb5_cc_default_name(i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @krb5_errx(i32 %21, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @krb5_cc_cache_get_first(i32 %26, i32* null, i32* %4)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @KRB5_CC_NOSUPP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %149

32:                                               ; preds = %23
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @krb5_err(i32 %36, i32 1, i64 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39
  %41 = call i32 (...) @rtbl_create()
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @COL_NAME, align 4
  %44 = call i32 @rtbl_add_column(i32 %42, i32 %43, i32 0)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @COL_CACHENAME, align 4
  %47 = call i32 @rtbl_add_column(i32 %45, i32 %46, i32 0)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @COL_EXPIRES, align 4
  %50 = call i32 @rtbl_add_column(i32 %48, i32 %49, i32 0)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @COL_DEFCACHE, align 4
  %53 = call i32 @rtbl_add_column(i32 %51, i32 %52, i32 0)
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @rtbl_set_prefix(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @COL_NAME, align 4
  %58 = call i32 @rtbl_set_column_prefix(i32 %56, i32 %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %131, %70, %40
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @krb5_cc_cache_next(i32 %60, i32 %61, i32* %8)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %138

64:                                               ; preds = %59
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @krb5_cc_get_principal(i32 %65, i32 %66, i32** %10)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %59

71:                                               ; preds = %64
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @check_for_tgt(i32 %72, i32 %73, i32* %74, i32* %13)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @krb5_cc_get_friendly_name(i32 %76, i32 %77, i8** %12)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %131

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @COL_NAME, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @rtbl_add_column_entry(i32 %82, i32 %83, i8* %84)
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @COL_CACHENAME, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i8* @krb5_cc_get_name(i32 %88, i32 %89)
  %91 = call i32 @rtbl_add_column_entry(i32 %86, i32 %87, i8* %90)
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = call i8* @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i8* %95, i8** %14, align 8
  br label %99

96:                                               ; preds = %81
  %97 = load i32, i32* %13, align 4
  %98 = call i8* @printable_time(i32 %97)
  store i8* %98, i8** %14, align 8
  br label %99

99:                                               ; preds = %96, %94
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @COL_EXPIRES, align 4
  %102 = load i8*, i8** %14, align 8
  %103 = call i32 @rtbl_add_column_entry(i32 %100, i32 %101, i8* %102)
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i64 @krb5_cc_get_full_name(i32 %106, i32 %107, i8** %15)
  store i64 %108, i64* %7, align 8
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %99
  %112 = load i32, i32* %3, align 4
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @krb5_err(i32 %112, i32 1, i64 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %99
  %116 = load i8*, i8** %15, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = call i64 @strcmp(i8* %116, i8* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @COL_DEFCACHE, align 4
  %123 = call i32 @rtbl_add_column_entry(i32 %121, i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %128

124:                                              ; preds = %115
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @COL_DEFCACHE, align 4
  %127 = call i32 @rtbl_add_column_entry(i32 %125, i32 %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @krb5_xfree(i8* %129)
  br label %131

131:                                              ; preds = %128, %71
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @krb5_cc_close(i32 %132, i32 %133)
  %135 = load i32, i32* %3, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @krb5_free_principal(i32 %135, i32* %136)
  br label %59

138:                                              ; preds = %59
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @krb5_cc_cache_end_seq_get(i32 %139, i32 %140)
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @stdout, align 4
  %146 = call i32 @rtbl_format(i32 %144, i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @rtbl_destroy(i32 %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %138, %31
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i8* @krb5_cc_default_name(i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @krb5_cc_cache_get_first(i32, i32*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @rtbl_create(...) #1

declare dso_local i32 @rtbl_add_column(i32, i32, i32) #1

declare dso_local i32 @rtbl_set_prefix(i32, i8*) #1

declare dso_local i32 @rtbl_set_column_prefix(i32, i32, i8*) #1

declare dso_local i64 @krb5_cc_cache_next(i32, i32, i32*) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, i32**) #1

declare dso_local i32 @check_for_tgt(i32, i32, i32*, i32*) #1

declare dso_local i64 @krb5_cc_get_friendly_name(i32, i32, i8**) #1

declare dso_local i32 @rtbl_add_column_entry(i32, i32, i8*) #1

declare dso_local i8* @krb5_cc_get_name(i32, i32) #1

declare dso_local i8* @N_(i8*, i8*) #1

declare dso_local i8* @printable_time(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_cc_get_full_name(i32, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @krb5_xfree(i8*) #1

declare dso_local i32 @krb5_cc_close(i32, i32) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i32 @krb5_cc_cache_end_seq_get(i32, i32) #1

declare dso_local i32 @rtbl_format(i32, i32) #1

declare dso_local i32 @rtbl_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
