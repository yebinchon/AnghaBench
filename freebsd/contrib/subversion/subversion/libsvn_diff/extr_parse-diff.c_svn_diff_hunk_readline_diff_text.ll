; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_svn_diff_hunk_readline_diff_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_svn_diff_hunk_readline_diff_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_11__ = type { i8* }

@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_SET = common dso_local global i32 0, align 4
@APR_SIZE_MAX = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_diff_hunk_readline_diff_text(%struct.TYPE_12__* %0, %struct.TYPE_11__** %1, i8** %2, i64* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store i8** %17, i8*** %10, align 8
  br label %23

23:                                               ; preds = %22, %6
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %27, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load i64, i64* @TRUE, align 8
  %35 = load i64*, i64** %11, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i8**, i8*** %10, align 8
  store i8* null, i8** %36, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call %struct.TYPE_11__* @svn_stringbuf_create_empty(i32* %37)
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %39, align 8
  %40 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %40, i32** %7, align 8
  br label %174

41:                                               ; preds = %23
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @svn_io_file_get_offset(i64* %16, i32 %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @APR_SET, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @svn_io_file_seek(i32 %50, i32 %51, i64* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %61, %65
  store i64 %66, i64* %15, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i8**, i8*** %10, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @svn_io_file_readline(i32 %69, %struct.TYPE_11__** %14, i8** %70, i64* %71, i64 %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @svn_io_file_get_offset(i64* %79, i32 %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i64*, i64** %11, align 8
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %128

89:                                               ; preds = %41
  %90 = load i8**, i8*** %10, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %128, label %93

93:                                               ; preds = %89
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %93
  %101 = load i8**, i8*** %10, align 8
  %102 = icmp ne i8** %101, %17
  br i1 %102, label %103, label %125

103:                                              ; preds = %100
  store i64 0, i64* %18, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @APR_SET, align 4
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @svn_io_file_seek(i32 %106, i32 %107, i64* %18, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i8**, i8*** %10, align 8
  %115 = load i64, i64* @APR_SIZE_MAX, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @svn_io_file_readline(i32 %113, %struct.TYPE_11__** %19, i8** %114, i64* null, i64 %115, i32* %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i8**, i8*** %10, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i32 @SVN_ERR_ASSERT(i32 %123)
  br label %125

125:                                              ; preds = %103, %100
  %126 = load i64, i64* @FALSE, align 8
  %127 = load i64*, i64** %11, align 8
  store i64 %126, i64* %127, align 8
  br label %128

128:                                              ; preds = %125, %93, %89, %41
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @APR_SET, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = call i32 @svn_io_file_seek(i32 %131, i32 %132, i64* %16, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %170

142:                                              ; preds = %128
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 43
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  store i8 45, i8* %154, align 1
  br label %169

155:                                              ; preds = %142
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 45
  br i1 %162, label %163, label %168

163:                                              ; preds = %155
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  store i8 43, i8* %167, align 1
  br label %168

168:                                              ; preds = %163, %155
  br label %169

169:                                              ; preds = %168, %150
  br label %170

170:                                              ; preds = %169, %128
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %172 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %171, %struct.TYPE_11__** %172, align 8
  %173 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %173, i32** %7, align 8
  br label %174

174:                                              ; preds = %170, %33
  %175 = load i32*, i32** %7, align 8
  ret i32* %175
}

declare dso_local %struct.TYPE_11__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_get_offset(i64*, i32, i32*) #1

declare dso_local i32 @svn_io_file_seek(i32, i32, i64*, i32*) #1

declare dso_local i32 @svn_io_file_readline(i32, %struct.TYPE_11__**, i8**, i64*, i64, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
