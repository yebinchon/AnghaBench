; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_password_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_password_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@ui_method = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pass phrase\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@UI_INPUT_FLAG_DEFAULT_PWD = common dso_local global i32 0, align 4
@UI_CTRL_PRINT_ERRORS = common dso_local global i32 0, align 4
@PW_MIN_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"password buffer\00", align 1
@UI_CTRL_IS_REDOABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"User interface error\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"aborted!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @password_callback(i8* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %12, align 8
  %19 = load i32, i32* @ui_method, align 4
  %20 = call i32* @UI_new_method(i32 %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %133

23:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %16, align 8
  br label %35

35:                                               ; preds = %31, %26, %23
  %36 = load i32*, i32** %11, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = call i8* @UI_construct_prompt(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %37)
  store i8* %38, i8** %17, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @bio_err, align 4
  %43 = call i32 @BIO_printf(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @UI_free(i32* %44)
  store i32 0, i32* %5, align 4
  br label %135

46:                                               ; preds = %35
  %47 = load i32, i32* @UI_INPUT_FLAG_DEFAULT_PWD, align 4
  %48 = load i32, i32* %15, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %15, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @UI_CTRL_PRINT_ERRORS, align 4
  %52 = call i64 @UI_ctrl(i32* %50, i32 %51, i32 1, i32 0, i32 0)
  %53 = load i32*, i32** %11, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %55 = call i32 @UI_add_user_data(i32* %53, %struct.TYPE_4__* %54)
  %56 = load i32*, i32** %11, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @PW_MIN_LENGTH, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @UI_add_input_string(i32* %56, i8* %57, i32 %58, i8* %59, i32 %60, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %46
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = call i8* @app_malloc(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %71, i8** %14, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i8*, i8** %14, align 8
  %76 = load i32, i32* @PW_MIN_LENGTH, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @UI_add_verify_string(i32* %72, i8* %73, i32 %74, i8* %75, i32 %76, i32 %78, i8* %79)
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %69, %66, %46
  %82 = load i32, i32* %13, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %96, %84
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @UI_process(i32* %86)
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* @UI_CTRL_IS_REDOABLE, align 4
  %94 = call i64 @UI_ctrl(i32* %92, i32 %93, i32 0, i32 0, i32 0)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %91, %88
  %97 = phi i1 [ false, %88 ], [ %95, %91 ]
  br i1 %97, label %85, label %98

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98, %81
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @OPENSSL_clear_free(i8* %100, i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @strlen(i8* %106)
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %105, %99
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, i32* @bio_err, align 4
  %113 = call i32 @BIO_printf(i32 %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32, i32* @bio_err, align 4
  %115 = call i32 @ERR_print_errors(i32 %114)
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @OPENSSL_cleanse(i8* %116, i32 %117)
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %111, %108
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %120, -2
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32, i32* @bio_err, align 4
  %124 = call i32 @BIO_printf(i32 %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @OPENSSL_cleanse(i8* %125, i32 %126)
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %122, %119
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @UI_free(i32* %129)
  %131 = load i8*, i8** %17, align 8
  %132 = call i32 @OPENSSL_free(i8* %131)
  br label %133

133:                                              ; preds = %128, %4
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %41
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32* @UI_new_method(i32) #1

declare dso_local i8* @UI_construct_prompt(i32*, i8*, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @UI_free(i32*) #1

declare dso_local i64 @UI_ctrl(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @UI_add_user_data(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @UI_add_input_string(i32*, i8*, i32, i8*, i32, i32) #1

declare dso_local i8* @app_malloc(i32, i8*) #1

declare dso_local i32 @UI_add_verify_string(i32*, i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @UI_process(i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
