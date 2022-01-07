; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_hunk_readline_original_or_modified.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_hunk_readline_original_or_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_diff__hunk_range = type { i64, i64 }
%struct.TYPE_9__ = type { i8* }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_SET = common dso_local global i32 0, align 4
@APR_SIZE_MAX = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.svn_diff__hunk_range*, %struct.TYPE_9__**, i8**, i32*, i8, i32, i32*, i32*)* @hunk_readline_original_or_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hunk_readline_original_or_modified(i32* %0, %struct.svn_diff__hunk_range* %1, %struct.TYPE_9__** %2, i8** %3, i32* %4, i8 signext %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.svn_diff__hunk_range*, align 8
  %13 = alloca %struct.TYPE_9__**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store %struct.svn_diff__hunk_range* %1, %struct.svn_diff__hunk_range** %12, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %13, align 8
  store i8** %3, i8*** %14, align 8
  store i32* %4, i32** %15, align 8
  store i8 %5, i8* %16, align 1
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %27 = load i8**, i8*** %14, align 8
  %28 = icmp ne i8** %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %9
  store i8** %24, i8*** %14, align 8
  br label %30

30:                                               ; preds = %29, %9
  %31 = load %struct.svn_diff__hunk_range*, %struct.svn_diff__hunk_range** %12, align 8
  %32 = getelementptr inbounds %struct.svn_diff__hunk_range, %struct.svn_diff__hunk_range* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.svn_diff__hunk_range*, %struct.svn_diff__hunk_range** %12, align 8
  %35 = getelementptr inbounds %struct.svn_diff__hunk_range, %struct.svn_diff__hunk_range* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i32, i32* @TRUE, align 4
  %40 = load i32*, i32** %15, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i8**, i8*** %14, align 8
  store i8* null, i8** %41, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = call %struct.TYPE_9__* @svn_stringbuf_create_empty(i32* %42)
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %44, align 8
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %10, align 8
  br label %214

46:                                               ; preds = %30
  %47 = load i32*, i32** %11, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = call i32 @svn_io_file_get_offset(i64* %22, i32* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* @APR_SET, align 4
  %53 = load %struct.svn_diff__hunk_range*, %struct.svn_diff__hunk_range** %12, align 8
  %54 = getelementptr inbounds %struct.svn_diff__hunk_range, %struct.svn_diff__hunk_range* %53, i32 0, i32 0
  %55 = load i32*, i32** %19, align 8
  %56 = call i32 @svn_io_file_seek(i32* %51, i32 %52, i64* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %19, align 8
  %59 = call i32* @svn_pool_create(i32* %58)
  store i32* %59, i32** %25, align 8
  br label %60

60:                                               ; preds = %112, %46
  %61 = load i32*, i32** %25, align 8
  %62 = call i32 @svn_pool_clear(i32* %61)
  %63 = load %struct.svn_diff__hunk_range*, %struct.svn_diff__hunk_range** %12, align 8
  %64 = getelementptr inbounds %struct.svn_diff__hunk_range, %struct.svn_diff__hunk_range* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.svn_diff__hunk_range*, %struct.svn_diff__hunk_range** %12, align 8
  %67 = getelementptr inbounds %struct.svn_diff__hunk_range, %struct.svn_diff__hunk_range* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  store i64 %69, i64* %20, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i8**, i8*** %14, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load i64, i64* %20, align 8
  %74 = load i32*, i32** %25, align 8
  %75 = load i32*, i32** %25, align 8
  %76 = call i32 @svn_io_file_readline(i32* %70, %struct.TYPE_9__** %23, i8** %71, i32* %72, i64 %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.svn_diff__hunk_range*, %struct.svn_diff__hunk_range** %12, align 8
  %79 = getelementptr inbounds %struct.svn_diff__hunk_range, %struct.svn_diff__hunk_range* %78, i32 0, i32 0
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %25, align 8
  %82 = call i32 @svn_io_file_get_offset(i64* %79, i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* %16, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %60
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 92
  br label %101

101:                                              ; preds = %93, %60
  %102 = phi i1 [ true, %60 ], [ %100, %93 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %21, align 4
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %21, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32*, i32** %15, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %107, %104
  %113 = phi i1 [ false, %104 ], [ %111, %107 ]
  br i1 %113, label %60, label %114

114:                                              ; preds = %112
  %115 = load i32, i32* %21, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32*, i32** %18, align 8
  %119 = call %struct.TYPE_9__* @svn_stringbuf_create_ensure(i32 0, i32* %118)
  %120 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %120, align 8
  %121 = load i8**, i8*** %14, align 8
  store i8* null, i8** %121, align 8
  br label %160

122:                                              ; preds = %114
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 43
  br i1 %129, label %146, label %130

130:                                              ; preds = %122
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 45
  br i1 %137, label %146, label %138

138:                                              ; preds = %130
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 32
  br i1 %145, label %146, label %154

146:                                              ; preds = %138, %130, %122
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i32*, i32** %18, align 8
  %152 = call %struct.TYPE_9__* @svn_stringbuf_create(i8* %150, i32* %151)
  %153 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  store %struct.TYPE_9__* %152, %struct.TYPE_9__** %153, align 8
  br label %159

154:                                              ; preds = %138
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %156 = load i32*, i32** %18, align 8
  %157 = call %struct.TYPE_9__* @svn_stringbuf_dup(%struct.TYPE_9__* %155, i32* %156)
  %158 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %158, align 8
  br label %159

159:                                              ; preds = %154, %146
  br label %160

160:                                              ; preds = %159, %117
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %205, label %163

163:                                              ; preds = %160
  %164 = load i32*, i32** %15, align 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %205

167:                                              ; preds = %163
  %168 = load i8**, i8*** %14, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %205, label %171

171:                                              ; preds = %167
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %205

178:                                              ; preds = %171
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %202, label %181

181:                                              ; preds = %178
  %182 = load i8**, i8*** %14, align 8
  %183 = icmp ne i8** %182, %24
  br i1 %183, label %184, label %202

184:                                              ; preds = %181
  store i64 0, i64* %26, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = load i32, i32* @APR_SET, align 4
  %187 = load i32*, i32** %19, align 8
  %188 = call i32 @svn_io_file_seek(i32* %185, i32 %186, i64* %26, i32* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  %190 = load i32*, i32** %11, align 8
  %191 = load i8**, i8*** %14, align 8
  %192 = load i64, i64* @APR_SIZE_MAX, align 8
  %193 = load i32*, i32** %19, align 8
  %194 = load i32*, i32** %19, align 8
  %195 = call i32 @svn_io_file_readline(i32* %190, %struct.TYPE_9__** %23, i8** %191, i32* null, i64 %192, i32* %193, i32* %194)
  %196 = call i32 @SVN_ERR(i32 %195)
  %197 = load i8**, i8*** %14, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = icmp ne i8* %198, null
  %200 = zext i1 %199 to i32
  %201 = call i32 @SVN_ERR_ASSERT(i32 %200)
  br label %202

202:                                              ; preds = %184, %181, %178
  %203 = load i32, i32* @FALSE, align 4
  %204 = load i32*, i32** %15, align 8
  store i32 %203, i32* %204, align 4
  br label %205

205:                                              ; preds = %202, %171, %167, %163, %160
  %206 = load i32*, i32** %11, align 8
  %207 = load i32, i32* @APR_SET, align 4
  %208 = load i32*, i32** %19, align 8
  %209 = call i32 @svn_io_file_seek(i32* %206, i32 %207, i64* %22, i32* %208)
  %210 = call i32 @SVN_ERR(i32 %209)
  %211 = load i32*, i32** %25, align 8
  %212 = call i32 @svn_pool_destroy(i32* %211)
  %213 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %213, i32** %10, align 8
  br label %214

214:                                              ; preds = %205, %38
  %215 = load i32*, i32** %10, align 8
  ret i32* %215
}

declare dso_local %struct.TYPE_9__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_get_offset(i64*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_seek(i32*, i32, i64*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_io_file_readline(i32*, %struct.TYPE_9__**, i8**, i32*, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_stringbuf_dup(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
