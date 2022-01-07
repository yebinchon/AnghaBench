; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translated_stream_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translated_stream_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.translated_stream_baton = type { i64, %struct.TYPE_3__*, i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i64, i8* }

@SVN__STREAM_CHUNK_SIZE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @translated_stream_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @translated_stream_read(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.translated_stream_baton*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.translated_stream_baton*
  store %struct.translated_stream_baton* %16, %struct.translated_stream_baton** %8, align 8
  %17 = load i32, i32* @SVN__STREAM_CHUNK_SIZE, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %46

22:                                               ; preds = %3
  %23 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %24 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %27 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %25, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %22
  %33 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %34 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %39 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = getelementptr inbounds i8, i8* %37, i64 %40
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %6, align 8
  store i8 %43, i8* %44, align 1
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %4, align 8
  br label %175

46:                                               ; preds = %22, %3
  br label %47

47:                                               ; preds = %140, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @SVN__STREAM_CHUNK_SIZE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = icmp sgt i32 %52, 0
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i1 [ false, %47 ], [ %53, %51 ]
  br i1 %55, label %56, label %169

56:                                               ; preds = %54
  %57 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %58 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @svn_pool_clear(i32 %59)
  %61 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %62 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %65 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %63, %68
  br i1 %69, label %122, label %70

70:                                               ; preds = %56
  %71 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %72 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = call i32 @svn_stringbuf_setempty(%struct.TYPE_3__* %73)
  %75 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %76 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %78 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %81 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @svn_stream_read_full(i32 %79, i32* %82, i32* %9)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %86 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %89 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_3__* %87, i32 %90)
  store i32* %91, i32** %14, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %94 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %97 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %101 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @translate_chunk(i32* %92, i32 %95, i32* %98, i32 %99, i32 %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @SVN__STREAM_CHUNK_SIZE, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %70
  %109 = load i32*, i32** %14, align 8
  %110 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %111 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %114 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @translate_chunk(i32* %109, i32 %112, i32* null, i32 0, i32 %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  br label %118

118:                                              ; preds = %108, %70
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @svn_stream_close(i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  br label %122

122:                                              ; preds = %118, %56
  %123 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %124 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %123, i32 0, i32 1
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %129 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %127, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %122
  %137 = load i32, i32* %10, align 4
  br label %140

138:                                              ; preds = %122
  %139 = load i32, i32* %13, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  store i32 %141, i32* %12, align 4
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %147 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %146, i32 0, i32 1
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %152 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @memcpy(i8* %145, i8* %154, i32 %155)
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %163 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %10, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %10, align 4
  br label %47

169:                                              ; preds = %54
  %170 = load i32, i32* %10, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, %170
  store i32 %173, i32* %171, align 4
  %174 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %174, i32** %4, align 8
  br label %175

175:                                              ; preds = %169, %32
  %176 = load i32*, i32** %4, align 8
  ret i32* %176
}

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32 @svn_stringbuf_setempty(%struct.TYPE_3__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_read_full(i32, i32*, i32*) #1

declare dso_local i32* @svn_stream_from_stringbuf(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @translate_chunk(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
