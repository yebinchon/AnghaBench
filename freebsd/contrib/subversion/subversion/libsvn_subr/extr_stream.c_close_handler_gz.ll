; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_close_handler_gz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_close_handler_gz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zbaton = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32, i8* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"inflateEnd\00", align 1
@ZBUFFER_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"deflateEnd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @close_handler_gz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_handler_gz(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.zbaton*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.zbaton*
  store %struct.zbaton* %9, %struct.zbaton** %4, align 8
  %10 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %11 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %16 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @inflateEnd(%struct.TYPE_4__* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %21 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @svn_error__wrap_zlib(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  br label %27

27:                                               ; preds = %14, %1
  %28 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %29 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %109

32:                                               ; preds = %27
  %33 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %34 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* @ZBUFFER_SIZE, align 8
  %37 = call i8* @apr_palloc(i32 %35, i64 %36)
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %95, %32
  %39 = load i64, i64* @TRUE, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %96

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %44 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i8* %42, i8** %46, align 8
  %47 = load i64, i64* @ZBUFFER_SIZE, align 8
  %48 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %49 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i64 %47, i64* %51, align 8
  %52 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %53 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* @Z_FINISH, align 4
  %56 = call i32 @deflate(%struct.TYPE_5__* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @Z_STREAM_END, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %41
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @Z_OK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %67 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @svn_error__wrap_zlib(i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = call i32* @svn_error_trace(i32 %71)
  store i32* %72, i32** %2, align 8
  br label %115

73:                                               ; preds = %60, %41
  %74 = load i64, i64* @ZBUFFER_SIZE, align 8
  %75 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %76 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %74, %79
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %85 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @svn_stream_write(i32 %86, i8* %87, i64* %7)
  %89 = call i32 @SVN_ERR(i32 %88)
  br label %90

90:                                               ; preds = %83, %73
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @Z_STREAM_END, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %96

95:                                               ; preds = %90
  br label %38

96:                                               ; preds = %94, %38
  %97 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %98 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = call i32 @deflateEnd(%struct.TYPE_5__* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %103 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @svn_error__wrap_zlib(i32 %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  br label %109

109:                                              ; preds = %96, %27
  %110 = load %struct.zbaton*, %struct.zbaton** %4, align 8
  %111 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @svn_stream_close(i32 %112)
  %114 = call i32* @svn_error_trace(i32 %113)
  store i32* %114, i32** %2, align 8
  br label %115

115:                                              ; preds = %109, %64
  %116 = load i32*, i32** %2, align 8
  ret i32* %116
}

declare dso_local i32 @inflateEnd(%struct.TYPE_4__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_error__wrap_zlib(i32, i8*, i32) #1

declare dso_local i8* @apr_palloc(i32, i64) #1

declare dso_local i32 @deflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_stream_write(i32, i8*, i64*) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_5__*) #1

declare dso_local i32 @svn_stream_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
