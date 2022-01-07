; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_app_get_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_app_get_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APP_PASS_LEN = common dso_local global i32 0, align 4
@app_get_pass.pwdbio = internal global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"pass:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"env:\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't read environment variable %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Can't open file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"fd:\00", align 1
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't access file descriptor %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@FORMAT_TEXT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Can't open BIO for stdin\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Invalid password argument \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Error reading password from BIO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @app_get_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @app_get_pass(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @APP_PASS_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strncmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 5
  %22 = call i8* @OPENSSL_strdup(i8* %21)
  store i8* %22, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %137

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = call i8* @getenv(i8* %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @bio_err, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = call i32 (i32, i8*, ...) @BIO_printf(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %137

38:                                               ; preds = %27
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @OPENSSL_strdup(i8* %39)
  store i8* %40, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %137

41:                                               ; preds = %23
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** @app_get_pass.pwdbio, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %114

47:                                               ; preds = %44, %41
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strncmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 5
  %54 = call i32* @BIO_new_file(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %54, i32** @app_get_pass.pwdbio, align 8
  %55 = load i32*, i32** @app_get_pass.pwdbio, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* @bio_err, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 5
  %61 = call i32 (i32, i8*, ...) @BIO_printf(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %137

62:                                               ; preds = %51
  br label %113

63:                                               ; preds = %47
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 @strncmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = call i32 @atoi(i8* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @BIO_NOCLOSE, align 4
  %76 = call i32* @BIO_new_fd(i32 %74, i32 %75)
  store i32* %76, i32** @app_get_pass.pwdbio, align 8
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32*, i32** @app_get_pass.pwdbio, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* @bio_err, align 4
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  %87 = call i32 (i32, i8*, ...) @BIO_printf(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %86)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %137

88:                                               ; preds = %80
  %89 = call i32 (...) @BIO_f_buffer()
  %90 = call i32* @BIO_new(i32 %89)
  store i32* %90, i32** %11, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32*, i32** @app_get_pass.pwdbio, align 8
  %93 = call i32* @BIO_push(i32* %91, i32* %92)
  store i32* %93, i32** @app_get_pass.pwdbio, align 8
  br label %112

94:                                               ; preds = %63
  %95 = load i8*, i8** %4, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32, i32* @FORMAT_TEXT, align 4
  %100 = call i32* @dup_bio_in(i32 %99)
  store i32* %100, i32** @app_get_pass.pwdbio, align 8
  %101 = load i32*, i32** @app_get_pass.pwdbio, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @bio_err, align 4
  %105 = call i32 (i32, i8*, ...) @BIO_printf(i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %137

106:                                              ; preds = %98
  br label %111

107:                                              ; preds = %94
  %108 = load i32, i32* @bio_err, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 (i32, i8*, ...) @BIO_printf(i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %109)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %137

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %88
  br label %113

113:                                              ; preds = %112, %62
  br label %114

114:                                              ; preds = %113, %44
  %115 = load i32*, i32** @app_get_pass.pwdbio, align 8
  %116 = load i32, i32* @APP_PASS_LEN, align 4
  %117 = call i32 @BIO_gets(i32* %115, i8* %15, i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32*, i32** @app_get_pass.pwdbio, align 8
  %122 = call i32 @BIO_free_all(i32* %121)
  store i32* null, i32** @app_get_pass.pwdbio, align 8
  br label %123

123:                                              ; preds = %120, %114
  %124 = load i32, i32* %9, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @bio_err, align 4
  %128 = call i32 (i32, i8*, ...) @BIO_printf(i32 %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %137

129:                                              ; preds = %123
  %130 = call i8* @strchr(i8* %15, i8 signext 10)
  store i8* %130, i8** %6, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i8*, i8** %6, align 8
  store i8 0, i8* %134, align 1
  br label %135

135:                                              ; preds = %133, %129
  %136 = call i8* @OPENSSL_strdup(i8* %15)
  store i8* %136, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %137

137:                                              ; preds = %135, %126, %107, %103, %83, %57, %38, %33, %19
  %138 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i8*, i8** %3, align 8
  ret i8* %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i8* @OPENSSL_strdup(i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @BIO_printf(i32, i8*, ...) #2

declare dso_local i32* @BIO_new_file(i8*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32* @BIO_new_fd(i32, i32) #2

declare dso_local i32* @BIO_new(i32) #2

declare dso_local i32 @BIO_f_buffer(...) #2

declare dso_local i32* @BIO_push(i32*, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @dup_bio_in(i32) #2

declare dso_local i32 @BIO_gets(i32*, i8*, i32) #2

declare dso_local i32 @BIO_free_all(i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
