; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_skip_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_skip_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rep_read_baton = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i8* }
%struct.TYPE_3__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN__STREAM_CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.rep_read_baton*, i64)* @skip_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @skip_contents(%struct.rep_read_baton* %0, i64 %1) #0 {
  %3 = alloca %struct.rep_read_baton*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.rep_read_baton* %0, %struct.rep_read_baton** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %14 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @SVN_IS_VALID_REVNUM(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %106

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %22 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @MAX(i64 %20, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @SVN_ERR_ASSERT(i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @optimimal_allocation_size(i64 %30)
  %32 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %33 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_4__* @svn_stringbuf_create_ensure(i32 %31, i32 %34)
  %36 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %37 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %36, i32 0, i32 3
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %40 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 %38, i64* %42, align 8
  %43 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %44 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 0, i8* %49, align 1
  %50 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %51 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %6, align 8
  br label %55

55:                                               ; preds = %64, %19
  %56 = load i64, i64* %4, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %5, align 8
  %60 = icmp ne i32* %59, null
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i1 [ false, %55 ], [ %61, %58 ]
  br i1 %63, label %64, label %75

64:                                               ; preds = %62
  %65 = load i64, i64* %4, align 8
  store i64 %65, i64* %8, align 8
  %66 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32* @get_contents_from_windows(%struct.rep_read_baton* %66, i8* %67, i64* %8)
  store i32* %68, i32** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %4, align 8
  %71 = sub nsw i64 %70, %69
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %6, align 8
  br label %55

75:                                               ; preds = %62
  %76 = load i32*, i32** %5, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %105, label %78

78:                                               ; preds = %75
  %79 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %80 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %83 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %88 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @svn_checksum_update(i32 %81, i8* %86, i64 %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %95 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %100 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  br label %105

105:                                              ; preds = %78, %75
  br label %164

106:                                              ; preds = %2
  %107 = load i64, i64* %4, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %163

109:                                              ; preds = %106
  %110 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %111 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32* @svn_pool_create(i32 %112)
  store i32* %113, i32** %9, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  %116 = call i8* @apr_palloc(i32* %114, i64 %115)
  store i8* %116, i8** %10, align 8
  br label %117

117:                                              ; preds = %159, %109
  %118 = load i64, i64* %4, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32*, i32** %5, align 8
  %122 = icmp ne i32* %121, null
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %120, %117
  %125 = phi i1 [ false, %117 ], [ %123, %120 ]
  br i1 %125, label %126, label %160

126:                                              ; preds = %124
  %127 = load i64, i64* %4, align 8
  %128 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  br label %134

132:                                              ; preds = %126
  %133 = load i64, i64* %4, align 8
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i64 [ %131, %130 ], [ %133, %132 ]
  store i64 %135, i64* %11, align 8
  %136 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = call i32* @get_contents_from_windows(%struct.rep_read_baton* %136, i8* %137, i64* %11)
  store i32* %138, i32** %5, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %4, align 8
  %141 = sub nsw i64 %140, %139
  store i64 %141, i64* %4, align 8
  %142 = load i32*, i32** %5, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %159, label %144

144:                                              ; preds = %134
  %145 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %146 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i8*, i8** %10, align 8
  %149 = load i64, i64* %11, align 8
  %150 = call i32 @svn_checksum_update(i32 %147, i8* %148, i64 %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load i64, i64* %11, align 8
  %153 = load %struct.rep_read_baton*, %struct.rep_read_baton** %3, align 8
  %154 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %152
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 8
  br label %159

159:                                              ; preds = %144, %134
  br label %117

160:                                              ; preds = %124
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @svn_pool_destroy(i32* %161)
  br label %163

163:                                              ; preds = %160, %106
  br label %164

164:                                              ; preds = %163, %105
  %165 = load i32*, i32** %5, align 8
  %166 = call i32* @svn_error_trace(i32* %165)
  ret i32* %166
}

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @svn_stringbuf_create_ensure(i32, i32) #1

declare dso_local i32 @optimimal_allocation_size(i64) #1

declare dso_local i32* @get_contents_from_windows(%struct.rep_read_baton*, i8*, i64*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_checksum_update(i32, i8*, i64) #1

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local i8* @apr_palloc(i32*, i64) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
