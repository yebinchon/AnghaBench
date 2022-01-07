; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_read_handler_gz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_read_handler_gz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zbaton = type { %struct.TYPE_3__*, i32, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i8*, i32*, i32, i32, i32 }

@zalloc = common dso_local global i32 0, align 4
@zfree = common dso_local global i32 0, align 4
@ZBUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"inflateInit\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"inflate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64*)* @read_handler_gz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_handler_gz(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.zbaton*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.zbaton*
  store %struct.zbaton* %11, %struct.zbaton** %8, align 8
  %12 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %13 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %86

16:                                               ; preds = %3
  %17 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %18 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @apr_palloc(i32 %19, i32 4)
  %21 = bitcast i8* %20 to %struct.TYPE_3__*
  %22 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %23 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %22, i32 0, i32 0
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %23, align 8
  %24 = load i32, i32* @zalloc, align 4
  %25 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %26 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 7
  store i32 %24, i32* %28, align 8
  %29 = load i32, i32* @zfree, align 4
  %30 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %31 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 6
  store i32 %29, i32* %33, align 4
  %34 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %35 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %38 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  store i32 %36, i32* %40, align 8
  %41 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %42 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ZBUFFER_SIZE, align 4
  %45 = call i8* @apr_palloc(i32 %43, i32 %44)
  %46 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %47 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %49 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %52 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i8* %50, i8** %54, align 8
  %55 = load i32, i32* @ZBUFFER_SIZE, align 4
  %56 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %57 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  %60 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %61 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %64 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %67 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %71 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %70, i32 0, i32 1
  %72 = call i32 @read_helper_gz(i32 %62, i8* %65, i32* %69, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %75 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = call i32 @inflateInit(%struct.TYPE_3__* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %80 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @svn_error__wrap_zlib(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %16, %3
  %87 = load i8*, i8** %6, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %90 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  store i32* %88, i32** %92, align 8
  %93 = load i64*, i64** %7, align 8
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %96 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i64 %94, i64* %98, align 8
  br label %99

99:                                               ; preds = %176, %86
  %100 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %101 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %177

106:                                              ; preds = %99
  %107 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %108 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %106
  %114 = load i32, i32* @ZBUFFER_SIZE, align 4
  %115 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %116 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 8
  %119 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %120 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %123 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  store i8* %121, i8** %125, align 8
  %126 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %127 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %130 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %133 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %132, i32 0, i32 0
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %137 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %136, i32 0, i32 1
  %138 = call i32 @read_helper_gz(i32 %128, i8* %131, i32* %135, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  br label %140

140:                                              ; preds = %113, %106
  %141 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %142 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %141, i32 0, i32 0
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load i64*, i64** %7, align 8
  store i64 0, i64* %148, align 8
  %149 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %149, i32** %4, align 8
  br label %187

150:                                              ; preds = %140
  %151 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %152 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %151, i32 0, i32 0
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %155 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @inflate(%struct.TYPE_3__* %153, i32 %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @Z_STREAM_END, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %150
  br label %177

162:                                              ; preds = %150
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @Z_OK, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %169 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %168, i32 0, i32 0
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @svn_error__wrap_zlib(i32 %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  %174 = call i32* @svn_error_trace(i32 %173)
  store i32* %174, i32** %4, align 8
  br label %187

175:                                              ; preds = %162
  br label %176

176:                                              ; preds = %175
  br label %99

177:                                              ; preds = %161, %99
  %178 = load %struct.zbaton*, %struct.zbaton** %8, align 8
  %179 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %178, i32 0, i32 0
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** %7, align 8
  %184 = load i64, i64* %183, align 8
  %185 = sub nsw i64 %184, %182
  store i64 %185, i64* %183, align 8
  %186 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %186, i32** %4, align 8
  br label %187

187:                                              ; preds = %177, %166, %147
  %188 = load i32*, i32** %4, align 8
  ret i32* %188
}

declare dso_local i8* @apr_palloc(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_helper_gz(i32, i8*, i32*, i32*) #1

declare dso_local i32 @inflateInit(%struct.TYPE_3__*) #1

declare dso_local i32 @svn_error__wrap_zlib(i32, i8*, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_3__*, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
