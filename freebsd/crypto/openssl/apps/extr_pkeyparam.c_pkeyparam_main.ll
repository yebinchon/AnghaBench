; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_pkeyparam.c_pkeyparam_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_pkeyparam.c_pkeyparam_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pkeyparam_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@FORMAT_PEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error reading parameters\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Parameters are valid\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Parameters are invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Detailed error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkeyparam_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* @pkeyparam_options, align 4
  %23 = call i8* @opt_init(i32 %20, i8** %21, i32 %22)
  store i8* %23, i8** %16, align 8
  br label %24

24:                                               ; preds = %47, %2
  %25 = call i32 (...) @opt_next()
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, 134
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  switch i32 %28, label %47 [
    i32 134, label %29
    i32 133, label %29
    i32 132, label %34
    i32 131, label %37
    i32 129, label %39
    i32 135, label %41
    i32 128, label %44
    i32 130, label %45
    i32 136, label %46
  ]

29:                                               ; preds = %27, %27
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i32*, i32** @bio_err, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %128

34:                                               ; preds = %27
  %35 = load i32, i32* @pkeyparam_options, align 4
  %36 = call i32 @opt_help(i32 %35)
  store i32 0, i32* %11, align 4
  br label %128

37:                                               ; preds = %27
  %38 = call i8* (...) @opt_arg()
  store i8* %38, i8** %14, align 8
  br label %47

39:                                               ; preds = %27
  %40 = call i8* (...) @opt_arg()
  store i8* %40, i8** %15, align 8
  br label %47

41:                                               ; preds = %27
  %42 = call i8* (...) @opt_arg()
  %43 = call i32* @setup_engine(i8* %42, i32 0)
  store i32* %43, i32** %5, align 8
  br label %47

44:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %47

45:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %47

46:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %27, %46, %45, %44, %41, %39, %37
  br label %24

48:                                               ; preds = %24
  %49 = call i32 (...) @opt_num_rest()
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %30

53:                                               ; preds = %48
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* @FORMAT_PEM, align 4
  %56 = call i32* @bio_open_default(i8* %54, i8 signext 114, i32 %55)
  store i32* %56, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %128

60:                                               ; preds = %53
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* @FORMAT_PEM, align 4
  %63 = call i32* @bio_open_default(i8* %61, i8 signext 119, i32 %62)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %128

67:                                               ; preds = %60
  %68 = load i32*, i32** %6, align 8
  %69 = call i32* @PEM_read_bio_Parameters(i32* %68, i32* null)
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32*, i32** @bio_err, align 8
  %74 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32*, i32** @bio_err, align 8
  %76 = call i32 @ERR_print_errors(i32* %75)
  br label %128

77:                                               ; preds = %67
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %77
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i32* @EVP_PKEY_CTX_new(i32* %81, i32* %82)
  store i32* %83, i32** %18, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32*, i32** @bio_err, align 8
  %88 = call i32 @ERR_print_errors(i32* %87)
  br label %128

89:                                               ; preds = %80
  %90 = load i32*, i32** %18, align 8
  %91 = call i32 @EVP_PKEY_param_check(i32* %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %110

97:                                               ; preds = %89
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %103, %97
  %101 = call i64 (...) @ERR_peek_error()
  store i64 %101, i64* %19, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32*, i32** %7, align 8
  %105 = load i64, i64* %19, align 8
  %106 = call i8* @ERR_reason_error_string(i64 %105)
  %107 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  %108 = call i32 (...) @ERR_get_error()
  br label %100

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %94
  %111 = load i32*, i32** %18, align 8
  %112 = call i32 @EVP_PKEY_CTX_free(i32* %111)
  br label %113

113:                                              ; preds = %110, %77
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load i32*, i32** %7, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @PEM_write_bio_Parameters(i32* %117, i32* %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32*, i32** %7, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @EVP_PKEY_print_params(i32* %124, i32* %125, i32 0, i32* null)
  br label %127

127:                                              ; preds = %123, %120
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %127, %86, %72, %66, %59, %34, %30
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @EVP_PKEY_free(i32* %129)
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @release_engine(i32* %131)
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @BIO_free_all(i32* %133)
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @BIO_free(i32* %135)
  %137 = load i32, i32* %11, align 4
  ret i32 %137
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @PEM_read_bio_Parameters(i32*, i32*) #1

declare dso_local i32 @ERR_print_errors(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_param_check(i32*) #1

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i8* @ERR_reason_error_string(i64) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @PEM_write_bio_Parameters(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_print_params(i32*, i32*, i32, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
