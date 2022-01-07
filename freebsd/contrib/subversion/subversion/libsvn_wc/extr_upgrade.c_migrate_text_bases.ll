; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_migrate_text_bases.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_migrate_text_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8* }

@TEXT_BASE_SUBDIR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@svn_io_file_del_none = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@APR_FINFO_SIZE = common dso_local global i32 0, align 4
@STMT_INSERT_OR_IGNORE_PRISTINE = common dso_local global i32 0, align 4
@SVN_WC__REVERT_EXT = common dso_local global i32 0, align 4
@SVN_WC__BASE_EXT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i8*, i32*, i32*, i32*)* @migrate_text_bases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @migrate_text_bases(i32** %0, i8* %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_10__, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_8__*, align 8
  %30 = alloca %struct.TYPE_9__*, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32* @svn_pool_create(i32* %31)
  store i32* %32, i32** %14, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @TEXT_BASE_SUBDIR, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = call i8* @svn_wc__adm_child(i8* %33, i32 %34, i32* %35)
  store i8* %36, i8** %16, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32* @apr_hash_make(i32* %37)
  %39 = load i32**, i32*** %7, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i64, i64* @TRUE, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @svn_io_get_dirents3(i32** %13, i8* %40, i64 %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32* @apr_hash_first(i32* %46, i32* %47)
  store i32* %48, i32** %15, align 8
  br label %49

49:                                               ; preds = %185, %6
  %50 = load i32*, i32** %15, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %188

52:                                               ; preds = %49
  %53 = load i32*, i32** %15, align 8
  %54 = call i8* @apr_hash_this_key(i32* %53)
  store i8* %54, i8** %17, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @svn_pool_clear(i32* %55)
  %57 = load i8*, i8** %16, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = call i8* @svn_dirent_join(i8* %57, i8* %58, i32* %59)
  store i8* %60, i8** %21, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @svn_io_file_del_none, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @svn_stream_open_unique(i32** %26, i8** %22, i8* %61, i32 %62, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i8*, i8** %21, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @svn_stream_open_readonly(i32** %25, i8* %67, i32* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %25, align 8
  %73 = load i32, i32* @svn_checksum_md5, align 4
  %74 = load i64, i64* @TRUE, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = call i32* @svn_stream_checksummed2(i32* %72, i32** %18, i32* null, i32 %73, i64 %74, i32* %75)
  store i32* %76, i32** %25, align 8
  %77 = load i32*, i32** %25, align 8
  %78 = load i32, i32* @svn_checksum_sha1, align 4
  %79 = load i64, i64* @TRUE, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i32* @svn_stream_checksummed2(i32* %77, i32** %19, i32* null, i32 %78, i64 %79, i32* %80)
  store i32* %81, i32** %25, align 8
  %82 = load i32*, i32** %25, align 8
  %83 = load i32*, i32** %26, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @svn_stream_copy3(i32* %82, i32* %83, i32* null, i32* null, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i8*, i8** %21, align 8
  %88 = load i32, i32* @APR_FINFO_SIZE, align 4
  %89 = load i32*, i32** %14, align 8
  %90 = call i32 @svn_io_stat(%struct.TYPE_10__* %24, i8* %87, i32 %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* @STMT_INSERT_OR_IGNORE_PRISTINE, align 4
  %94 = call i32 @svn_sqlite__get_statement(i32** %23, i32* %92, i32 %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i32*, i32** %23, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @svn_sqlite__bind_checksum(i32* %96, i32 1, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load i32*, i32** %23, align 8
  %102 = load i32*, i32** %18, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @svn_sqlite__bind_checksum(i32* %101, i32 2, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32*, i32** %23, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @svn_sqlite__bind_int64(i32* %106, i32 3, i32 %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i32*, i32** %23, align 8
  %112 = call i32 @svn_sqlite__insert(i32* null, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load i8*, i8** %9, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @svn_wc__db_pristine_get_future_path(i8** %20, i8* %114, i32* %115, i32* %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i8*, i8** %20, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = call i32 @svn_dirent_dirname(i8* %120, i32* %121)
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @svn_wc__ensure_directory(i32 %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i8*, i8** %22, align 8
  %127 = load i8*, i8** %20, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @svn_io_file_move(i8* %126, i8* %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load i8*, i8** %17, align 8
  %132 = load i32, i32* @SVN_WC__REVERT_EXT, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = call i8* @remove_suffix(i8* %131, i32 %132, i32* %133)
  store i8* %134, i8** %27, align 8
  %135 = load i8*, i8** %27, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %52
  %138 = load i64, i64* @TRUE, align 8
  store i64 %138, i64* %28, align 8
  br label %145

139:                                              ; preds = %52
  %140 = load i8*, i8** %17, align 8
  %141 = load i32, i32* @SVN_WC__BASE_EXT, align 4
  %142 = load i32*, i32** %11, align 8
  %143 = call i8* @remove_suffix(i8* %140, i32 %141, i32* %142)
  store i8* %143, i8** %27, align 8
  %144 = load i64, i64* @FALSE, align 8
  store i64 %144, i64* %28, align 8
  br label %145

145:                                              ; preds = %139, %137
  %146 = load i8*, i8** %27, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %185

149:                                              ; preds = %145
  %150 = load i32**, i32*** %7, align 8
  %151 = load i32*, i32** %150, align 8
  %152 = load i8*, i8** %27, align 8
  %153 = call %struct.TYPE_8__* @svn_hash_gets(i32* %151, i8* %152)
  store %struct.TYPE_8__* %153, %struct.TYPE_8__** %29, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %155 = icmp eq %struct.TYPE_8__* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i32*, i32** %11, align 8
  %158 = call %struct.TYPE_8__* @apr_pcalloc(i32* %157, i32 32)
  store %struct.TYPE_8__* %158, %struct.TYPE_8__** %29, align 8
  br label %159

159:                                              ; preds = %156, %149
  %160 = load i64, i64* %28, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  br label %168

165:                                              ; preds = %159
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  br label %168

168:                                              ; preds = %165, %162
  %169 = phi %struct.TYPE_9__* [ %164, %162 ], [ %167, %165 ]
  store %struct.TYPE_9__* %169, %struct.TYPE_9__** %30, align 8
  %170 = load i32*, i32** %19, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = call i8* @svn_checksum_dup(i32* %170, i32* %171)
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  %175 = load i32*, i32** %18, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = call i8* @svn_checksum_dup(i32* %175, i32* %176)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  %180 = load i32**, i32*** %7, align 8
  %181 = load i32*, i32** %180, align 8
  %182 = load i8*, i8** %27, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %184 = call i32 @svn_hash_sets(i32* %181, i8* %182, %struct.TYPE_8__* %183)
  br label %185

185:                                              ; preds = %168, %148
  %186 = load i32*, i32** %15, align 8
  %187 = call i32* @apr_hash_next(i32* %186)
  store i32* %187, i32** %15, align 8
  br label %49

188:                                              ; preds = %49
  %189 = load i32*, i32** %14, align 8
  %190 = call i32 @svn_pool_destroy(i32* %189)
  %191 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %191
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @svn_wc__adm_child(i8*, i32, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_get_dirents3(i32**, i8*, i64, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32* @svn_stream_checksummed2(i32*, i32**, i32*, i32, i64, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_stat(%struct.TYPE_10__*, i8*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__bind_checksum(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__bind_int64(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__insert(i32*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_future_path(i8**, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__ensure_directory(i32, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_io_file_move(i8*, i8*, i32*) #1

declare dso_local i8* @remove_suffix(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_hash_gets(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_checksum_dup(i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_8__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
