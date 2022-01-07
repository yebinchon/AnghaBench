; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_rep_write_get_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_rep_write_get_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32*, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_25__*, i64, %struct.TYPE_27__*, i8*, i8* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32 }

@svn_checksum_sha1 = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_fs_x__rep_delta = common dso_local global i32 0, align 4
@svn_fs_x__rep_self_delta = common dso_local global i32 0, align 4
@rep_write_cleanup = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_28__**, %struct.TYPE_27__*, %struct.TYPE_25__*, i32*)* @rep_write_get_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_write_get_baton(%struct.TYPE_28__** %0, %struct.TYPE_27__* %1, %struct.TYPE_25__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_28__**, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_24__, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_28__** %0, %struct.TYPE_28__*** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %9, align 8
  store i32 1, i32* %16, align 4
  %22 = bitcast %struct.TYPE_24__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 20, i1 false)
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @svn_fs_x__get_txn_id(i32 %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call %struct.TYPE_28__* @apr_pcalloc(i32* %28, i32 88)
  store %struct.TYPE_28__* %29, %struct.TYPE_28__** %10, align 8
  %30 = load i32, i32* @svn_checksum_sha1, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i8* @svn_checksum_ctx_create(i32 %30, i32* %31)
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 13
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @svn_checksum_md5, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i8* @svn_checksum_ctx_create(i32 %35, i32* %36)
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 12
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 11
  store %struct.TYPE_27__* %40, %struct.TYPE_27__** %42, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @svn_pool_create(i32* %46)
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 10
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 9
  store %struct.TYPE_25__* %52, %struct.TYPE_25__** %54, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 8
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %58 = load i32, i32* %18, align 4
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @get_writable_proto_rev(i32** %11, i32* %56, %struct.TYPE_27__* %57, i32 %58, i32 %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %11, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 7
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 6
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* @TRUE, align 4
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @svn_stream_from_aprfile2(i32* %69, i32 %70, i32 %73)
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @svn_checksum__wrap_write_stream_fnv1a_32x4(i32* %68, i32 %74, i32 %77)
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 5
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @svn_io_file_get_offset(i32* %82, i32* %83, i32 %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %91 = load i32, i32* @FALSE, align 4
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @choose_delta_base(%struct.TYPE_23__** %12, %struct.TYPE_27__* %89, %struct.TYPE_25__* %90, i32 %91, i32 %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %99 = load i32, i32* @TRUE, align 4
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @svn_fs_x__get_contents(i32** %13, %struct.TYPE_27__* %97, %struct.TYPE_23__* %98, i32 %99, i32 %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %106 = icmp ne %struct.TYPE_23__* %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @svn_fs_x__get_revnum(i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 3
  store i32 %112, i32* %113, align 4
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  store i32 %117, i32* %118, align 4
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* @svn_fs_x__rep_delta, align 4
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  br label %128

125:                                              ; preds = %4
  %126 = load i32, i32* @svn_fs_x__rep_self_delta, align 4
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %107
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @svn_fs_x__write_rep_header(%struct.TYPE_24__* %17, i32 %131, i32 %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 4
  %139 = load i32*, i32** %11, align 8
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @svn_io_file_get_offset(i32* %138, i32* %139, i32 %142)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %149 = load i32, i32* @rep_write_cleanup, align 4
  %150 = load i32, i32* @apr_pool_cleanup_null, align 4
  %151 = call i32 @apr_pool_cleanup_register(i32 %147, %struct.TYPE_28__* %148, i32 %149, i32 %150)
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @svn_stream_disown(i32 %154, i32* %157)
  %159 = load i32, i32* %16, align 4
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = call i32 @svn_txdelta_to_svndiff3(i32* %14, i8** %15, i32 %158, i32 %159, i32 %162, i32* %163)
  %165 = load i32, i32* %14, align 4
  %166 = load i8*, i8** %15, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @svn_txdelta_target_push(i32 %165, i8* %166, i32* %167, i32* %170)
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %175 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %5, align 8
  store %struct.TYPE_28__* %174, %struct.TYPE_28__** %175, align 8
  %176 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %176
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @svn_fs_x__get_txn_id(i32) #2

declare dso_local %struct.TYPE_28__* @apr_pcalloc(i32*, i32) #2

declare dso_local i8* @svn_checksum_ctx_create(i32, i32*) #2

declare dso_local i32 @svn_pool_create(i32*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @get_writable_proto_rev(i32**, i32*, %struct.TYPE_27__*, i32, i32) #2

declare dso_local i32 @svn_checksum__wrap_write_stream_fnv1a_32x4(i32*, i32, i32) #2

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32) #2

declare dso_local i32 @svn_io_file_get_offset(i32*, i32*, i32) #2

declare dso_local i32 @choose_delta_base(%struct.TYPE_23__**, %struct.TYPE_27__*, %struct.TYPE_25__*, i32, i32) #2

declare dso_local i32 @svn_fs_x__get_contents(i32**, %struct.TYPE_27__*, %struct.TYPE_23__*, i32, i32) #2

declare dso_local i32 @svn_fs_x__get_revnum(i32) #2

declare dso_local i32 @svn_fs_x__write_rep_header(%struct.TYPE_24__*, i32, i32) #2

declare dso_local i32 @apr_pool_cleanup_register(i32, %struct.TYPE_28__*, i32, i32) #2

declare dso_local i32 @svn_txdelta_to_svndiff3(i32*, i8**, i32, i32, i32, i32*) #2

declare dso_local i32 @svn_stream_disown(i32, i32*) #2

declare dso_local i32 @svn_txdelta_target_push(i32, i8*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
