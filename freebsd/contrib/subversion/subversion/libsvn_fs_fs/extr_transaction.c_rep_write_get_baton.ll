; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_rep_write_get_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_rep_write_get_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rep_write_baton = type { i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_11__*, i64, i32*, i32*, i8*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@svn_checksum_sha1 = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_fs_fs__rep_delta = common dso_local global i32 0, align 4
@svn_fs_fs__rep_self_delta = common dso_local global i32 0, align 4
@rep_write_cleanup = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.rep_write_baton**, i32*, %struct.TYPE_11__*, i32*)* @rep_write_get_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_write_get_baton(%struct.rep_write_baton** %0, i32* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca %struct.rep_write_baton**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rep_write_baton*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__, align 4
  store %struct.rep_write_baton** %0, %struct.rep_write_baton*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = bitcast %struct.TYPE_9__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 20, i1 false)
  %17 = load i32*, i32** %8, align 8
  %18 = call %struct.rep_write_baton* @apr_pcalloc(i32* %17, i32 88)
  store %struct.rep_write_baton* %18, %struct.rep_write_baton** %9, align 8
  %19 = load i32, i32* @svn_checksum_sha1, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i8* @svn_checksum_ctx_create(i32 %19, i32* %20)
  %22 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %23 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %22, i32 0, i32 13
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @svn_checksum_md5, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i8* @svn_checksum_ctx_create(i32 %24, i32* %25)
  %27 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %28 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %27, i32 0, i32 12
  store i8* %26, i8** %28, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %31 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %30, i32 0, i32 11
  store i32* %29, i32** %31, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %34 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %33, i32 0, i32 10
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @svn_pool_create(i32* %35)
  %37 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %38 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %40 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %39, i32 0, i32 9
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %43 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %42, i32 0, i32 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %43, align 8
  %44 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %45 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %44, i32 0, i32 7
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @svn_fs_fs__id_txn_id(i32 %49)
  %51 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %52 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @get_writable_proto_rev(i32** %10, i32* %45, i32* %46, i32 %50, i32 %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %58 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %57, i32 0, i32 6
  store i32* %56, i32** %58, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @TRUE, align 4
  %61 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %62 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @svn_stream_from_aprfile2(i32* %59, i32 %60, i32 %63)
  %65 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %66 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @svn_fs_fs__use_log_addressing(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %4
  %71 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %72 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %71, i32 0, i32 5
  %73 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %74 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %77 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @fnv1a_wrap_stream(i32* %72, i32 %75, i32 %78)
  %80 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %81 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %70, %4
  %83 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %84 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %83, i32 0, i32 4
  %85 = load i32*, i32** %10, align 8
  %86 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %87 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @svn_io_file_get_offset(i32* %84, i32* %85, i32 %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = load i32, i32* @FALSE, align 4
  %94 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %95 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @choose_delta_base(%struct.TYPE_10__** %11, i32* %91, %struct.TYPE_11__* %92, i32 %93, i32 %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %101 = load i32, i32* @TRUE, align 4
  %102 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %103 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @svn_fs_fs__get_contents(i32** %12, i32* %99, %struct.TYPE_10__* %100, i32 %101, i32 %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %108 = icmp ne %struct.TYPE_10__* %107, null
  br i1 %108, label %109, label %124

109:                                              ; preds = %82
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  store i32 %112, i32* %113, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32 %116, i32* %117, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @svn_fs_fs__rep_delta, align 4
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 %122, i32* %123, align 4
  br label %127

124:                                              ; preds = %82
  %125 = load i32, i32* @svn_fs_fs__rep_self_delta, align 4
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %109
  %128 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %129 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %132 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @svn_fs_fs__write_rep_header(%struct.TYPE_9__* %15, i32 %130, i32 %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %137 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %136, i32 0, i32 3
  %138 = load i32*, i32** %10, align 8
  %139 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %140 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @svn_io_file_get_offset(i32* %137, i32* %138, i32 %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  %144 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %145 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %148 = load i32, i32* @rep_write_cleanup, align 4
  %149 = load i32, i32* @apr_pool_cleanup_null, align 4
  %150 = call i32 @apr_pool_cleanup_register(i32 %146, %struct.rep_write_baton* %147, i32 %148, i32 %149)
  %151 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %152 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @txdelta_to_svndiff(i32* %13, i8** %14, i32 %153, i32* %154, i32* %155)
  %157 = load i32, i32* %13, align 4
  %158 = load i8*, i8** %14, align 8
  %159 = load i32*, i32** %12, align 8
  %160 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %161 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @svn_txdelta_target_push(i32 %157, i8* %158, i32* %159, i32 %162)
  %164 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %165 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.rep_write_baton*, %struct.rep_write_baton** %9, align 8
  %167 = load %struct.rep_write_baton**, %struct.rep_write_baton*** %5, align 8
  store %struct.rep_write_baton* %166, %struct.rep_write_baton** %167, align 8
  %168 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.rep_write_baton* @apr_pcalloc(i32*, i32) #2

declare dso_local i8* @svn_checksum_ctx_create(i32, i32*) #2

declare dso_local i32 @svn_pool_create(i32*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @get_writable_proto_rev(i32**, i32*, i32*, i32, i32) #2

declare dso_local i32 @svn_fs_fs__id_txn_id(i32) #2

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32) #2

declare dso_local i64 @svn_fs_fs__use_log_addressing(i32*) #2

declare dso_local i32 @fnv1a_wrap_stream(i32*, i32, i32) #2

declare dso_local i32 @svn_io_file_get_offset(i32*, i32*, i32) #2

declare dso_local i32 @choose_delta_base(%struct.TYPE_10__**, i32*, %struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @svn_fs_fs__get_contents(i32**, i32*, %struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @svn_fs_fs__write_rep_header(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @apr_pool_cleanup_register(i32, %struct.rep_write_baton*, i32, i32) #2

declare dso_local i32 @txdelta_to_svndiff(i32*, i8**, i32, i32*, i32*) #2

declare dso_local i32 @svn_txdelta_target_push(i32, i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
