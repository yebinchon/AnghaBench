; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translated_stream_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translated_stream_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.translated_stream_baton = type { i64, i32, i64, %struct.TYPE_10__*, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__*, i64, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32 }

@SVN__TRANSLATION_BUF_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @translated_stream_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @translated_stream_seek(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.translated_stream_baton*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.translated_stream_baton*
  store %struct.translated_stream_baton* %8, %struct.translated_stream_baton** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %98

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %15 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %20 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %23 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %22, i32 0, i32 3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %26 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @translate_chunk(i32 %21, %struct.TYPE_10__* %24, i32* null, i32 0, i32 %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  br label %30

30:                                               ; preds = %18, %11
  %31 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %32 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @svn_stream_seek(i32 %33, i32 %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %40 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %39, i32 0, i32 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = bitcast %struct.TYPE_8__* %41 to i8*
  %47 = bitcast %struct.TYPE_8__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 24, i1 false)
  %48 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %49 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %48, i32 0, i32 3
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = bitcast %struct.TYPE_10__* %50 to i8*
  %56 = bitcast %struct.TYPE_10__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %62 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %64 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @svn_stringbuf_setempty(i32 %65)
  %67 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %68 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @svn_stringbuf_appendbytes(i32 %69, i32 %75, i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %88 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %90 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SVN__TRANSLATION_BUF_SIZE, align 4
  %97 = call i32 @memcpy(i32 %91, i32 %95, i32 %96)
  br label %137

98:                                               ; preds = %2
  %99 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %100 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @svn_stream_reset(i32 %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %105 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %104, i32 0, i32 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %109 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %108, i32 0, i32 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %113 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %112, i32 0, i32 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %117 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %116, i32 0, i32 3
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %121 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %120, i32 0, i32 3
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %125 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %124, i32 0, i32 3
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load i64, i64* @FALSE, align 8
  %129 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %130 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %132 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @svn_stringbuf_setempty(i32 %133)
  %135 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %5, align 8
  %136 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %98, %30
  %138 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %138
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @translate_chunk(i32, %struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @svn_stream_seek(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @svn_stringbuf_setempty(i32) #1

declare dso_local i32 @svn_stringbuf_appendbytes(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @svn_stream_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
