; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_write_handler_gz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_write_handler_gz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zbaton = type { i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i64, i32, i32, i8*, i32*, i32*, i32, i32 }

@zalloc = common dso_local global i32 0, align 4
@zfree = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"deflateInit\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @write_handler_gz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_handler_gz(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.zbaton*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.zbaton*
  store %struct.zbaton* %14, %struct.zbaton** %7, align 8
  %15 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %16 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %57

19:                                               ; preds = %3
  %20 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %21 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i8* @apr_palloc(i32* %22, i32 4)
  %24 = bitcast i8* %23 to %struct.TYPE_3__*
  %25 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %26 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %25, i32 0, i32 1
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = load i32, i32* @zalloc, align 4
  %28 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %29 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 7
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @zfree, align 4
  %33 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %34 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 6
  store i32 %32, i32* %36, align 8
  %37 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %38 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %41 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 5
  store i32* %39, i32** %43, align 8
  %44 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %45 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %48 = call i32 @deflateInit(%struct.TYPE_3__* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %51 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @svn_error__wrap_zlib(i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  br label %57

57:                                               ; preds = %19, %3
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 1000
  %63 = add nsw i32 %59, %62
  %64 = add nsw i32 %63, 13
  store i32 %64, i32* %10, align 4
  %65 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %66 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32* @svn_pool_create(i32* %67)
  store i32* %68, i32** %8, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i8* @apr_palloc(i32* %69, i32 %70)
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %75 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  store i32* %73, i32** %77, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %84 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 %82, i64* %86, align 8
  br label %87

87:                                               ; preds = %137, %57
  %88 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %89 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %138

94:                                               ; preds = %87
  %95 = load i8*, i8** %9, align 8
  %96 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %97 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  store i8* %95, i8** %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %105 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 8
  %108 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %109 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i32, i32* @Z_NO_FLUSH, align 4
  %112 = call i32 @deflate(%struct.TYPE_3__* %110, i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %115 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @svn_error__wrap_zlib(i32 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %123 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %121, %126
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %94
  %131 = load %struct.zbaton*, %struct.zbaton** %7, align 8
  %132 = getelementptr inbounds %struct.zbaton, %struct.zbaton* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @svn_stream_write(i32 %133, i8* %134, i32* %11)
  %136 = call i32 @SVN_ERR(i32 %135)
  br label %137

137:                                              ; preds = %130, %94
  br label %87

138:                                              ; preds = %87
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @svn_pool_destroy(i32* %139)
  %141 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %141
}

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @deflateInit(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_error__wrap_zlib(i32, i8*, i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @deflate(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @svn_stream_write(i32, i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
