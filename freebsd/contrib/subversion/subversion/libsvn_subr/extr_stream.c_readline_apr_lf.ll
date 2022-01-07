; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_readline_apr_lf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_readline_apr_lf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i64 }

@SVN__LINE_CHUNK_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Can't read a line from file '%s'\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't read a line from stream\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_6__**, i32*, i32*)* @readline_apr_lf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @readline_apr_lf(i32* %0, %struct.TYPE_6__** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* @SVN__LINE_CHUNK_SIZE, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call %struct.TYPE_6__* @svn_stringbuf_create_ensure(i64 %14, i32* %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  br label %17

17:                                               ; preds = %4, %136
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %28, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @apr_file_gets(i8* %25, i32 %34, i32* %35)
  store i64 %36, i64* %11, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = call i64 @strlen(i8* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @APR_STATUS_IS_EOF(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %17
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %75 = call i32 @svn_stringbuf_chop(%struct.TYPE_6__* %74, i32 1)
  br label %76

76:                                               ; preds = %73, %60, %55
  %77 = load i32, i32* @TRUE, align 4
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %80, align 8
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %5, align 8
  br label %144

82:                                               ; preds = %17
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* @APR_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %82
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call i32* @svn_io_file_name_get(i8** %12, i32* %87, i32* %88)
  store i32* %89, i32** %13, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i8* null, i8** %12, align 8
  br label %93

93:                                               ; preds = %92, %86
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @svn_error_clear(i32* %94)
  %96 = load i8*, i8** %12, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %101 = load i8*, i8** %12, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @svn_dirent_local_style(i8* %101, i32* %102)
  %104 = call i32* (i64, i32, ...) @svn_error_wrap_apr(i64 %99, i32 %100, i32 %103)
  store i32* %104, i32** %5, align 8
  br label %144

105:                                              ; preds = %93
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %108 = call i32* (i64, i32, ...) @svn_error_wrap_apr(i64 %106, i32 %107)
  store i32* %108, i32** %5, align 8
  br label %144

109:                                              ; preds = %82
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %110
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %118, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 10
  br i1 %127, label %128, label %136

128:                                              ; preds = %115
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %130 = call i32 @svn_stringbuf_chop(%struct.TYPE_6__* %129, i32 1)
  %131 = load i32, i32* @FALSE, align 4
  %132 = load i32*, i32** %8, align 8
  store i32 %131, i32* %132, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %134 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %133, %struct.TYPE_6__** %134, align 8
  %135 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %135, i32** %5, align 8
  br label %144

136:                                              ; preds = %115, %110
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SVN__LINE_CHUNK_SIZE, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @svn_stringbuf_ensure(%struct.TYPE_6__* %137, i64 %142)
  br label %17

144:                                              ; preds = %128, %105, %98, %76
  %145 = load i32*, i32** %5, align 8
  ret i32* %145
}

declare dso_local %struct.TYPE_6__* @svn_stringbuf_create_ensure(i64, i32*) #1

declare dso_local i64 @apr_file_gets(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i64) #1

declare dso_local i32 @svn_stringbuf_chop(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @svn_io_file_name_get(i8**, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_ensure(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
