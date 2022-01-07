; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_stream_translated.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_stream_translated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.translated_stream_baton = type { i8*, i8*, i64, i32, i32, i8*, i8*, i32* }

@FALSE = common dso_local global i32 0, align 4
@SVN__TRANSLATION_BUF_SIZE = common dso_local global i32 0, align 4
@translated_stream_read = common dso_local global i32 0, align 4
@translated_stream_write = common dso_local global i32 0, align 4
@translated_stream_close = common dso_local global i32 0, align 4
@translated_stream_mark = common dso_local global i32 0, align 4
@translated_stream_seek = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*, i32, i32*, i32, i32*)* @stream_translated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stream_translated(i32* %0, i8* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.translated_stream_baton*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i8* @apr_palloc(i32* %22, i32 56)
  %24 = bitcast i8* %23 to %struct.translated_stream_baton*
  store %struct.translated_stream_baton* %24, %struct.translated_stream_baton** %15, align 8
  %25 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %15, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call i32* @svn_stream_create(%struct.translated_stream_baton* %25, i32* %26)
  store i32* %27, i32** %16, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load i32*, i32** %14, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @apr_pstrdup(i32* %31, i8* %32)
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %30, %7
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load i32*, i32** %12, align 8
  %39 = call i64 @apr_hash_count(i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32* null, i32** %12, align 8
  br label %72

42:                                               ; preds = %37
  %43 = load i32*, i32** %14, align 8
  %44 = call i32* @apr_hash_make(i32* %43)
  store i32* %44, i32** %17, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i8* @svn_pool_create(i32* %45)
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** %19, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i32* @apr_hash_first(i32* %48, i32* %49)
  store i32* %50, i32** %18, align 8
  br label %51

51:                                               ; preds = %65, %42
  %52 = load i32*, i32** %18, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32*, i32** %18, align 8
  %56 = call i32 @apr_hash_this(i32* %55, i8** %20, i32* null, i8** %21)
  %57 = load i32*, i32** %17, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = call i8* @apr_pstrdup(i32* %58, i8* %59)
  %61 = load i8*, i8** %21, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @svn_string_dup(i8* %61, i32* %62)
  %64 = call i32 @svn_hash_sets(i32* %57, i8* %60, i32 %63)
  br label %65

65:                                               ; preds = %54
  %66 = load i32*, i32** %18, align 8
  %67 = call i32* @apr_hash_next(i32* %66)
  store i32* %67, i32** %18, align 8
  br label %51

68:                                               ; preds = %51
  %69 = load i32*, i32** %19, align 8
  %70 = call i32 @svn_pool_destroy(i32* %69)
  %71 = load i32*, i32** %17, align 8
  store i32* %71, i32** %12, align 8
  br label %72

72:                                               ; preds = %68, %41
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %15, align 8
  %76 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %75, i32 0, i32 7
  store i32* %74, i32** %76, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = call i8* @create_translation_baton(i8* %77, i32* %78, i32 %79, i32* %80, i32 %81, i32* %82)
  %84 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %15, align 8
  %85 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** %14, align 8
  %92 = call i8* @create_translation_baton(i8* %86, i32* %87, i32 %88, i32* %89, i32 %90, i32* %91)
  %93 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %15, align 8
  %94 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %15, align 8
  %97 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @svn_stringbuf_create_empty(i32* %98)
  %100 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %15, align 8
  %101 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %15, align 8
  %103 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = call i8* @svn_pool_create(i32* %104)
  %106 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %15, align 8
  %107 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = load i32, i32* @SVN__TRANSLATION_BUF_SIZE, align 4
  %110 = call i8* @apr_palloc(i32* %108, i32 %109)
  %111 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %15, align 8
  %112 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = load i32, i32* @translated_stream_read, align 4
  %115 = call i32 @svn_stream_set_read2(i32* %113, i32* null, i32 %114)
  %116 = load i32*, i32** %16, align 8
  %117 = load i32, i32* @translated_stream_write, align 4
  %118 = call i32 @svn_stream_set_write(i32* %116, i32 %117)
  %119 = load i32*, i32** %16, align 8
  %120 = load i32, i32* @translated_stream_close, align 4
  %121 = call i32 @svn_stream_set_close(i32* %119, i32 %120)
  %122 = load i32*, i32** %8, align 8
  %123 = call i64 @svn_stream_supports_mark(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %73
  %126 = load i32*, i32** %16, align 8
  %127 = load i32, i32* @translated_stream_mark, align 4
  %128 = call i32 @svn_stream_set_mark(i32* %126, i32 %127)
  %129 = load i32*, i32** %16, align 8
  %130 = load i32, i32* @translated_stream_seek, align 4
  %131 = call i32 @svn_stream_set_seek(i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %125, %73
  %133 = load i32*, i32** %16, align 8
  ret i32* %133
}

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32* @svn_stream_create(%struct.translated_stream_baton*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i8* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32) #1

declare dso_local i32 @svn_string_dup(i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i8* @create_translation_baton(i8*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32*, i32) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

declare dso_local i64 @svn_stream_supports_mark(i32*) #1

declare dso_local i32 @svn_stream_set_mark(i32*, i32) #1

declare dso_local i32 @svn_stream_set_seek(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
