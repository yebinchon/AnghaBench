; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_write_container_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_write_container_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, i64 }
%struct.write_container_baton = type { i32, i64, i8*, i8* }
%struct.TYPE_12__ = type { i8*, i32, %struct.TYPE_11__, i64, i8* }
%struct.TYPE_11__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@SVN_FS_FS__ITEM_TYPE_DIR_REP = common dso_local global i64 0, align 8
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@write_container_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"PLAIN\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"ENDREP\0A\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i32*, i8*, i32 (i32*, i8*, i32*)*, i32*, i32*, i64, i64, i32*)* @write_container_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_container_rep(%struct.TYPE_13__* %0, i32* %1, i8* %2, i32 (i32*, i8*, i32*)* %3, i32* %4, i32* %5, i64 %6, i64 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32 (i32*, i8*, i32*)*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.write_container_baton*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  %25 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 (i32*, i8*, i32*)* %3, i32 (i32*, i8*, i32*)** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  store i8* null, i8** %23, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32*, i32** %19, align 8
  %28 = call i32 @svn_io_file_get_offset(i8** %23, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %19, align 8
  %31 = call %struct.write_container_baton* @apr_pcalloc(i32* %30, i32 32)
  store %struct.write_container_baton* %31, %struct.write_container_baton** %21, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32*, i32** %19, align 8
  %35 = call i32 @svn_stream_from_aprfile2(i32* %32, i32 %33, i32* %34)
  %36 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %37 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i64 @svn_fs_fs__use_log_addressing(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %9
  %42 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %43 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = call i32 @fnv1a_wrap_stream(i32** %22, i32 %44, i32* %45)
  %47 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %48 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %50

49:                                               ; preds = %9
  store i32* null, i32** %22, align 8
  br label %50

50:                                               ; preds = %49, %41
  %51 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %52 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @svn_checksum_md5, align 4
  %54 = load i32*, i32** %19, align 8
  %55 = call i8* @svn_checksum_ctx_create(i32 %53, i32* %54)
  %56 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %57 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i64, i64* @SVN_FS_FS__ITEM_TYPE_DIR_REP, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load i32, i32* @svn_checksum_sha1, align 4
  %63 = load i32*, i32** %19, align 8
  %64 = call i8* @svn_checksum_ctx_create(i32 %62, i32* %63)
  %65 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %66 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %61, %50
  %68 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %69 = load i32*, i32** %19, align 8
  %70 = call i32* @svn_stream_create(%struct.write_container_baton* %68, i32* %69)
  store i32* %70, i32** %20, align 8
  %71 = load i32*, i32** %20, align 8
  %72 = load i32, i32* @write_container_handler, align 4
  %73 = call i32 @svn_stream_set_write(i32* %71, i32 %72)
  %74 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %75 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @svn_stream_puts(i32 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32 (i32*, i8*, i32*)*, i32 (i32*, i8*, i32*)** %14, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i32*, i32** %19, align 8
  %83 = call i32 %79(i32* %80, i8* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %86 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %87 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %90 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = call i32 @digests_final(%struct.TYPE_13__* %85, i8* %88, i8* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %96 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %101 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %17, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %67
  %108 = load i32*, i32** %15, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = load i8*, i8** %23, align 8
  %112 = load i32*, i32** %16, align 8
  %113 = load i32*, i32** %19, align 8
  %114 = load i32*, i32** %19, align 8
  %115 = call i32 @get_shared_rep(%struct.TYPE_13__** %24, i32* %108, %struct.TYPE_13__* %109, i32* %110, i8* %111, i32* %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %118 = icmp ne %struct.TYPE_13__* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %107
  %120 = load i32*, i32** %12, align 8
  %121 = load i8*, i8** %23, align 8
  %122 = load i32*, i32** %19, align 8
  %123 = call i32 @svn_io_file_trunc(i32* %120, i8* %121, i32* %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %127 = call i32 @memcpy(%struct.TYPE_13__* %125, %struct.TYPE_13__* %126, i32 24)
  %128 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %128, i32** %10, align 8
  br label %186

129:                                              ; preds = %107
  br label %130

130:                                              ; preds = %129, %67
  %131 = load %struct.write_container_baton*, %struct.write_container_baton** %21, align 8
  %132 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @svn_stream_puts(i32 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i32*, i32** %15, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i8*, i8** %23, align 8
  %142 = load i32*, i32** %19, align 8
  %143 = call i32 @allocate_item_index(i32* %137, i32* %138, i32* %140, i8* %141, i32* %142)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load i32*, i32** %15, align 8
  %146 = call i64 @svn_fs_fs__use_log_addressing(i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %184

148:                                              ; preds = %130
  %149 = load i8*, i8** %23, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i8* %149, i8** %150, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = load i32*, i32** %19, align 8
  %153 = call i32 @svn_io_file_get_offset(i8** %23, i32* %151, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  %155 = load i8*, i8** %23, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = ptrtoint i8* %155 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = inttoptr i64 %160 to i8*
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  store i8* %161, i8** %162, align 8
  %163 = load i64, i64* %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  store i64 %163, i64* %164, align 8
  %165 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %174 = load i32*, i32** %22, align 8
  %175 = load i32*, i32** %19, align 8
  %176 = call i32 @fnv1a_checksum_finalize(i32* %173, i32* %174, i32* %175)
  %177 = call i32 @SVN_ERR(i32 %176)
  %178 = load i32*, i32** %15, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32*, i32** %19, align 8
  %182 = call i32 @store_p2l_index_entry(i32* %178, i32* %180, %struct.TYPE_12__* %25, i32* %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  br label %184

184:                                              ; preds = %148, %130
  %185 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %185, i32** %10, align 8
  br label %186

186:                                              ; preds = %184, %119
  %187 = load i32*, i32** %10, align 8
  ret i32* %187
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_get_offset(i8**, i32*, i32*) #1

declare dso_local %struct.write_container_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i64 @svn_fs_fs__use_log_addressing(i32*) #1

declare dso_local i32 @fnv1a_wrap_stream(i32**, i32, i32*) #1

declare dso_local i8* @svn_checksum_ctx_create(i32, i32*) #1

declare dso_local i32* @svn_stream_create(%struct.write_container_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_puts(i32, i8*) #1

declare dso_local i32 @digests_final(%struct.TYPE_13__*, i8*, i8*, i32*) #1

declare dso_local i32 @get_shared_rep(%struct.TYPE_13__**, i32*, %struct.TYPE_13__*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_trunc(i32*, i8*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @allocate_item_index(i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @fnv1a_checksum_finalize(i32*, i32*, i32*) #1

declare dso_local i32 @store_p2l_index_entry(i32*, i32*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
