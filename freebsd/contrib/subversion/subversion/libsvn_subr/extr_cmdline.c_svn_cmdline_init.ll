; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_svn_cmdline_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_svn_cmdline_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: error: cannot open '/dev/null'\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@_IOLBF = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@__const.svn_cmdline_init.env_vars = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str.6 = private unnamed_addr constant [8 x i8] c"not set\00", align 1
@.str.7 = private unnamed_addr constant [143 x i8] c"%s: warning: cannot set LC_CTYPE locale\0A%s: warning: environment variable %s is %s\0A%s: warning: please check that your locale name is correct\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"%s: error: cannot initialize APR: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c": \00", align 1
@TRUE = common dso_local global i8* null, align 8
@apr_terminate = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"%s: error: atexit registration failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@_CRTDBG_FILE_STDERR = common dso_local global i32 0, align 4
@_CRTDBG_MODE_DEBUG = common dso_local global i32 0, align 4
@_CRTDBG_MODE_FILE = common dso_local global i32 0, align 4
@_CRT_ASSERT = common dso_local global i32 0, align 4
@_CRT_ERROR = common dso_local global i32 0, align 4
@_CRT_WARN = common dso_local global i32 0, align 4
@_OUT_TO_STDERR = common dso_local global i32 0, align 4
@input_encoding = common dso_local global i8* null, align 8
@output_encoding = common dso_local global i8* null, align 8
@shortcut_stderr_to_console = common dso_local global i8* null, align 8
@shortcut_stdout_to_console = common dso_local global i8* null, align 8
@svn__unhandled_exception_filter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_cmdline_init(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca %struct.stat, align 4
  %11 = alloca [4 x i8*], align 16
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [1024 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = call i32 @fstat(i32 0, %struct.stat* %10)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %35, label %21

21:                                               ; preds = %17, %2
  %22 = call i32 @fstat(i32 1, %struct.stat* %10)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @O_WRONLY, align 4
  %26 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %21
  %29 = call i32 @fstat(i32 2, %struct.stat* %10)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* @O_WRONLY, align 4
  %33 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %44

35:                                               ; preds = %31, %24, %17
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %43, i32* %3, align 4
  br label %179

44:                                               ; preds = %31, %28
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @_IONBF, align 4
  %50 = call i32 @setvbuf(i32* %48, i32* null, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32*, i32** @stdout, align 8
  %53 = load i32, i32* @_IOLBF, align 4
  %54 = call i32 @setvbuf(i32* %52, i32* null, i32 %53, i32 0)
  %55 = load i32, i32* @LC_ALL, align 4
  %56 = call i32 @setlocale(i32 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %105, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @LC_CTYPE, align 4
  %60 = call i32 @setlocale(i32 %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %105, label %62

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %104

65:                                               ; preds = %62
  %66 = bitcast [4 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %66, i8* align 16 bitcast ([4 x i8*]* @__const.svn_cmdline_init.env_vars to i8*), i64 32, i1 false)
  %67 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  store i8** %67, i8*** %12, align 8
  store i8* null, i8** %13, align 8
  br label %68

68:                                               ; preds = %85, %65
  %69 = load i8**, i8*** %12, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i8**, i8*** %12, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @getenv(i8* %74)
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %88

85:                                               ; preds = %78, %72
  %86 = load i8**, i8*** %12, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %87, i8*** %12, align 8
  br label %68

88:                                               ; preds = %84, %68
  %89 = load i8**, i8*** %12, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i8**, i8*** %12, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 -1
  store i8** %94, i8*** %12, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32*, i32** %5, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = load i8**, i8*** %12, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.7, i64 0, i64 0), i8* %97, i8* %98, i8* %100, i8* %101, i8* %102)
  br label %104

104:                                              ; preds = %95, %62
  br label %105

105:                                              ; preds = %104, %58, %51
  %106 = call i64 (...) @apr_initialize()
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i32*, i32** %5, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %115 = call i32 @apr_strerror(i64 %113, i8* %114, i32 1023)
  %116 = load i32*, i32** %5, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %119 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %117, i8* %118)
  br label %120

120:                                              ; preds = %112, %109
  %121 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %121, i32* %3, align 4
  br label %179

122:                                              ; preds = %105
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @strncpy(i8* %123, i8* %124, i32 61)
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 61
  store i8 0, i8* %126, align 1
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %128 = call i32 @strcat(i8* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %129 = call i32* (...) @svn_dso_initialize2()
  store i32* %129, i32** %8, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %144

131:                                              ; preds = %122
  %132 = load i32*, i32** %5, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32*, i32** %8, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = load i8*, i8** @TRUE, align 8
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %139 = call i32 @svn_handle_error2(i32* %135, i32* %136, i8* %137, i8* %138)
  br label %140

140:                                              ; preds = %134, %131
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @svn_error_clear(i32* %141)
  %143 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %143, i32* %3, align 4
  br label %179

144:                                              ; preds = %122
  %145 = load i32, i32* @apr_terminate, align 4
  %146 = call i64 @atexit(i32 %145)
  %147 = icmp sgt i64 0, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load i32*, i32** %5, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32*, i32** %5, align 8
  %153 = load i8*, i8** %4, align 8
  %154 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %152, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %151, %148
  %156 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %156, i32* %3, align 4
  br label %179

157:                                              ; preds = %144
  %158 = call i32* @svn_pool_create(i32* null)
  store i32* %158, i32** %7, align 8
  %159 = load i32, i32* @FALSE, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @svn_utf_initialize2(i32 %159, i32* %160)
  %162 = call i32* (...) @svn_nls_init()
  store i32* %162, i32** %8, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %177

164:                                              ; preds = %157
  %165 = load i32*, i32** %5, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i32*, i32** %8, align 8
  %169 = load i32*, i32** %5, align 8
  %170 = load i8*, i8** @TRUE, align 8
  %171 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %172 = call i32 @svn_handle_error2(i32* %168, i32* %169, i8* %170, i8* %171)
  br label %173

173:                                              ; preds = %167, %164
  %174 = load i32*, i32** %8, align 8
  %175 = call i32 @svn_error_clear(i32* %174)
  %176 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %176, i32* %3, align 4
  br label %179

177:                                              ; preds = %157
  %178 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %173, %155, %140, %120, %42
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i32) #1

declare dso_local i32 @setlocale(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @apr_initialize(...) #1

declare dso_local i32 @apr_strerror(i64, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32* @svn_dso_initialize2(...) #1

declare dso_local i32 @svn_handle_error2(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i64 @atexit(i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_utf_initialize2(i32, i32*) #1

declare dso_local i32* @svn_nls_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
