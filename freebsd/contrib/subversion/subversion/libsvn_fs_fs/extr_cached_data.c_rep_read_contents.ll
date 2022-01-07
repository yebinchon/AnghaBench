; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_rep_read_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_rep_read_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rep_read_baton = type { i64, i64, i32*, i32, i32, %struct.TYPE_12__*, i32, i64, i32, i32, i32, %struct.TYPE_13__, i32, i32, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Checksum mismatch while reading representation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @rep_read_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_read_contents(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rep_read_baton*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.rep_read_baton*
  store %struct.rep_read_baton* %14, %struct.rep_read_baton** %8, align 8
  %15 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %16 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %15, i32 0, i32 15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @get_contents_from_fulltext(i64* %9, %struct.rep_read_baton* %20, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %28, i32** %4, align 8
  br label %191

29:                                               ; preds = %19
  %30 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %31 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %30, i32 0, i32 15
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %34 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %32
  %38 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %39 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %38, i32 0, i32 11
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %43 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %45 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %44, i32 0, i32 14
  %46 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %47 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %46, i32 0, i32 13
  %48 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %49 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %48, i32 0, i32 12
  %50 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %51 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %50, i32 0, i32 5
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %54 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %53, i32 0, i32 11
  %55 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %56 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @build_rep_list(i32* %45, i32* %47, i32* %49, %struct.TYPE_12__* %52, %struct.TYPE_13__* %54, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %61 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %62 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @skip_contents(%struct.rep_read_baton* %60, i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %66

66:                                               ; preds = %37, %32
  %67 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %68 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %71 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32*, i32** %7, align 8
  store i32 0, i32* %75, align 4
  br label %82

76:                                               ; preds = %66
  %77 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @get_contents_from_windows(%struct.rep_read_baton* %77, i8* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %82

82:                                               ; preds = %76, %74
  %83 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %84 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %89 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @svn_stringbuf_appendbytes(i32* %90, i8* %91, i32 %93)
  br label %95

95:                                               ; preds = %87, %82
  %96 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %97 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %155, label %100

100:                                              ; preds = %95
  %101 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %102 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @svn_checksum_update(i32 %103, i8* %104, i32 %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %113 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %117 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %120 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %123, label %154

123:                                              ; preds = %100
  %124 = load i32, i32* @svn_checksum_md5, align 4
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32 %124, i32* %125, align 4
  %126 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %127 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = load i64, i64* @TRUE, align 8
  %131 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %132 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %131, i32 0, i32 7
  store i64 %130, i64* %132, align 8
  %133 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %134 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %137 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @svn_checksum_final(%struct.TYPE_10__** %10, i32 %135, i32 %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %142 = call i32 @svn_checksum_match(%struct.TYPE_10__* %141, %struct.TYPE_10__* %11)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %123
  %145 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %147 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %148 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %151 = call i32 @svn_checksum_mismatch_err(%struct.TYPE_10__* %11, %struct.TYPE_10__* %146, i32 %149, i32 %150)
  %152 = call i32* @svn_error_create(i32 %145, i32 %151, i32* null)
  store i32* %152, i32** %4, align 8
  br label %191

153:                                              ; preds = %123
  br label %154

154:                                              ; preds = %153, %100
  br label %155

155:                                              ; preds = %154, %95
  %156 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %157 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %160 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %189

163:                                              ; preds = %155
  %164 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %165 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %189

168:                                              ; preds = %163
  %169 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %170 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %169, i32 0, i32 5
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  store %struct.TYPE_11__* %173, %struct.TYPE_11__** %12, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %178 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %177, i32 0, i32 4
  %179 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %180 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %183 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @svn_cache__set(i32 %176, i32* %178, i32* %181, i32 %184)
  %186 = call i32 @SVN_ERR(i32 %185)
  %187 = load %struct.rep_read_baton*, %struct.rep_read_baton** %8, align 8
  %188 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %187, i32 0, i32 2
  store i32* null, i32** %188, align 8
  br label %189

189:                                              ; preds = %168, %163, %155
  %190 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %190, i32** %4, align 8
  br label %191

191:                                              ; preds = %189, %144, %27
  %192 = load i32*, i32** %4, align 8
  ret i32* %192
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_contents_from_fulltext(i64*, %struct.rep_read_baton*, i8*, i32*) #1

declare dso_local i32 @build_rep_list(i32*, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @skip_contents(%struct.rep_read_baton*, i32) #1

declare dso_local i32 @get_contents_from_windows(%struct.rep_read_baton*, i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(i32*, i8*, i32) #1

declare dso_local i32 @svn_checksum_update(i32, i8*, i32) #1

declare dso_local i32 @svn_checksum_final(%struct.TYPE_10__**, i32, i32) #1

declare dso_local i32 @svn_checksum_match(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32* @svn_error_create(i32, i32, i32*) #1

declare dso_local i32 @svn_checksum_mismatch_err(%struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_cache__set(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
