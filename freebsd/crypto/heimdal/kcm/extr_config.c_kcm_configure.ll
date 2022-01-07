; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_config.c_kcm_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_config.c_kcm_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"error at argument `%s'\00", align 1
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@config_file = common dso_local global i32* null, align 8
@_PATH_KCM_CONF = common dso_local global i32* null, align 8
@kcm_context = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"getting configuration files\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"reading configuration files\00", align 1
@max_request_str = common dso_local global i8* null, align 8
@max_request = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"kcm\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"max-request\00", align 1
@system_principal = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"principal\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"initializing system ccache\00", align 1
@DETACH_IS_DEFAULT = common dso_local global i32 0, align 4
@detach_from_console = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kcm_configure(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %16, %2
  %10 = load i32, i32* @args, align 4
  %11 = load i32, i32* @num_args, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = call i64 @getarg(i32 %10, i32 %11, i32 %12, i8** %13, i32* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load i8**, i8*** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %9

23:                                               ; preds = %9
  %24 = load i64, i64* @help_flag, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @usage(i32 0)
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i64, i64* @version_flag, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @print_version(i32* null)
  %33 = call i32 @exit(i32 0) #3
  unreachable

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %3, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i8**, i8*** %4, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  store i8** %41, i8*** %4, align 8
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = call i32 @usage(i32 1)
  br label %46

46:                                               ; preds = %44, %34
  %47 = load i32*, i32** @config_file, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32*, i32** @_PATH_KCM_CONF, align 8
  store i32* %50, i32** @config_file, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32*, i32** @config_file, align 8
  %53 = call i64 @krb5_prepend_config_files_default(i32* %52, i8*** %8)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @kcm_context, align 4
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @krb5_err(i32 %57, i32 1, i64 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* @kcm_context, align 4
  %62 = load i8**, i8*** %8, align 8
  %63 = call i64 @krb5_set_config_files(i32 %61, i8** %62)
  store i64 %63, i64* %5, align 8
  %64 = load i8**, i8*** %8, align 8
  %65 = call i32 @krb5_free_config_files(i8** %64)
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i32, i32* @kcm_context, align 4
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @krb5_err(i32 %69, i32 1, i64 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %60
  %73 = load i8*, i8** @max_request_str, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8*, i8** @max_request_str, align 8
  %77 = call i32 @parse_bytes(i8* %76, i32* null)
  store i32 %77, i32* @max_request, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @max_request, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, i32* @kcm_context, align 4
  %83 = call i8* @krb5_config_get_string(i32 %82, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i8* %83, i8** %7, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @parse_bytes(i8* %87, i32* null)
  store i32 %88, i32* @max_request, align 4
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89, %78
  %91 = load i32*, i32** @system_principal, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32* @kcm_system_config_get_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %94, i32** @system_principal, align 8
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i32*, i32** @system_principal, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = call i64 (...) @ccache_init_system()
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* @kcm_context, align 4
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @krb5_err(i32 %103, i32 1, i64 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %95
  %108 = call i32 (...) @kcm_openlog()
  %109 = load i32, i32* @max_request, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 65536, i32* @max_request, align 4
  br label %112

112:                                              ; preds = %111, %107
  ret void
}

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @krb5_prepend_config_files_default(i32*, i8***) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_set_config_files(i32, i8**) #1

declare dso_local i32 @krb5_free_config_files(i8**) #1

declare dso_local i32 @parse_bytes(i8*, i32*) #1

declare dso_local i8* @krb5_config_get_string(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32* @kcm_system_config_get_string(i8*) #1

declare dso_local i64 @ccache_init_system(...) #1

declare dso_local i32 @kcm_openlog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
