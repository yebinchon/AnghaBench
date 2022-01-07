; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_mcnf.c_ssl_do_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_mcnf.c_ssl_do_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }

@SSL_F_SSL_DO_CONFIG = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"system_default\00", align 1
@SSL_R_INVALID_CONFIGURATION_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@SSL_CONF_FLAG_FILE = common dso_local global i32 0, align 4
@SSL_CONF_FLAG_CERTIFICATE = common dso_local global i32 0, align 4
@SSL_CONF_FLAG_REQUIRE_PRIVATE = common dso_local global i32 0, align 4
@ssl_undefined_function = common dso_local global i64 0, align 8
@SSL_CONF_FLAG_SERVER = common dso_local global i32 0, align 4
@SSL_CONF_FLAG_CLIENT = common dso_local global i32 0, align 4
@SSL_R_UNKNOWN_COMMAND = common dso_local global i32 0, align 4
@SSL_R_BAD_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"section=\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c", cmd=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c", arg=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i8*, i32)* @ssl_do_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_do_config(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = icmp eq %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = icmp eq %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @SSL_F_SSL_DO_CONFIG, align 4
  %26 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %27 = call i32 @SSLerr(i32 %25, i32 %26)
  br label %144

28:                                               ; preds = %21, %4
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %35

35:                                               ; preds = %34, %31, %28
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @conf_ssl_name_find(i8* %36, i64* %11)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @SSL_F_SSL_DO_CONFIG, align 4
  %44 = load i32, i32* @SSL_R_INVALID_CONFIGURATION_NAME, align 4
  %45 = call i32 @SSLerr(i32 %43, i32 %44)
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %42, %39
  br label %144

49:                                               ; preds = %35
  %50 = load i64, i64* %11, align 8
  %51 = call i32* @conf_ssl_get(i64 %50, i8** %7, i64* %12)
  store i32* %51, i32** %16, align 8
  %52 = call i32* (...) @SSL_CONF_CTX_new()
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %144

56:                                               ; preds = %49
  %57 = load i32, i32* @SSL_CONF_FLAG_FILE, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @SSL_CONF_FLAG_CERTIFICATE, align 4
  %62 = load i32, i32* @SSL_CONF_FLAG_REQUIRE_PRIVATE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %14, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %60, %56
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %15, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = call i32 @SSL_CONF_CTX_set_ssl(i32* %73, %struct.TYPE_10__* %74)
  br label %83

76:                                               ; preds = %66
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %15, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = call i32 @SSL_CONF_CTX_set_ssl_ctx(i32* %80, %struct.TYPE_9__* %81)
  br label %83

83:                                               ; preds = %76, %69
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ssl_undefined_function, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @SSL_CONF_FLAG_SERVER, align 4
  %91 = load i32, i32* %14, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ssl_undefined_function, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @SSL_CONF_FLAG_CLIENT, align 4
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %99, %93
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @SSL_CONF_CTX_set_flags(i32* %104, i32 %105)
  store i64 0, i64* %10, align 8
  br label %107

107:                                              ; preds = %138, %103
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %141

111:                                              ; preds = %107
  %112 = load i32*, i32** %16, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @conf_ssl_get_cmd(i32* %112, i64 %113, i8** %17, i8** %18)
  %115 = load i32*, i32** %9, align 8
  %116 = load i8*, i8** %17, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = call i32 @SSL_CONF_cmd(i32* %115, i8* %116, i8* %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %111
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, -2
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32, i32* @SSL_F_SSL_DO_CONFIG, align 4
  %126 = load i32, i32* @SSL_R_UNKNOWN_COMMAND, align 4
  %127 = call i32 @SSLerr(i32 %125, i32 %126)
  br label %132

128:                                              ; preds = %121
  %129 = load i32, i32* @SSL_F_SSL_DO_CONFIG, align 4
  %130 = load i32, i32* @SSL_R_BAD_VALUE, align 4
  %131 = call i32 @SSLerr(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %124
  %133 = load i8*, i8** %7, align 8
  %134 = load i8*, i8** %17, align 8
  %135 = load i8*, i8** %18, align 8
  %136 = call i32 (i32, i8*, i8*, ...) @ERR_add_error_data(i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %135)
  br label %144

137:                                              ; preds = %111
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %10, align 8
  br label %107

141:                                              ; preds = %107
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @SSL_CONF_CTX_finish(i32* %142)
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %141, %132, %55, %48, %24
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @SSL_CONF_CTX_free(i32* %145)
  %147 = load i32, i32* %13, align 4
  %148 = icmp sle i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 0, i32 1
  ret i32 %150
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @conf_ssl_name_find(i8*, i64*) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*, ...) #1

declare dso_local i32* @conf_ssl_get(i64, i8**, i64*) #1

declare dso_local i32* @SSL_CONF_CTX_new(...) #1

declare dso_local i32 @SSL_CONF_CTX_set_ssl(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @SSL_CONF_CTX_set_ssl_ctx(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @SSL_CONF_CTX_set_flags(i32*, i32) #1

declare dso_local i32 @conf_ssl_get_cmd(i32*, i64, i8**, i8**) #1

declare dso_local i32 @SSL_CONF_cmd(i32*, i8*, i8*) #1

declare dso_local i32 @SSL_CONF_CTX_finish(i32*) #1

declare dso_local i32 @SSL_CONF_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
