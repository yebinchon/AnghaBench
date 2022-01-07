; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__get_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__get_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@SVN_HASH_TERMINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"malformed property list for node-revision '%s' in '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"malformed property list for node-revision '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__get_proplist(i32** %0, %struct.TYPE_16__* %1, %struct.TYPE_19__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_18__, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %30 = call i64 @svn_fs_fs__id_txn_used(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %25
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i8* @svn_fs_fs__path_txn_node_props(%struct.TYPE_16__* %33, i32 %36, i32* %37)
  store i8* %38, i8** %13, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @apr_hash_make(i32* %39)
  store i32* %40, i32** %10, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @svn_stream_open_readonly(i32** %11, i8* %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @SVN_HASH_TERMINATOR, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32* @svn_hash_read2(i32* %46, i32* %47, i32 %48, i32* %49)
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %32
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call %struct.TYPE_15__* @svn_fs_fs__id_unparse(i32 %56, i32* %57)
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %14, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @svn_stream_close(i32* %60)
  %62 = call i32* @svn_error_compose_create(i32* %59, i32 %61)
  store i32* %62, i32** %12, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = call i32* (i32*, i32, i32, ...) @svn_error_quick_wrapf(i32* %63, i32 %64, i32 %67, i8* %68)
  store i32* %69, i32** %5, align 8
  br label %184

70:                                               ; preds = %32
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @svn_stream_close(i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  br label %180

74:                                               ; preds = %25, %4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = icmp ne %struct.TYPE_17__* %77, null
  br i1 %78, label %79, label %176

79:                                               ; preds = %74
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  store %struct.TYPE_20__* %82, %struct.TYPE_20__** %16, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  store %struct.TYPE_17__* %85, %struct.TYPE_17__** %17, align 8
  %86 = bitcast %struct.TYPE_18__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %86, i8 0, i64 12, i1 false)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %79
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @SVN_IS_VALID_REVNUM(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load i32**, i32*** %6, align 8
  %107 = bitcast i32** %106 to i8**
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @svn_cache__get(i8** %107, i64* %19, i64 %110, %struct.TYPE_18__* %18, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load i64, i64* %19, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %5, align 8
  br label %184

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %99, %79
  %120 = load i32*, i32** %9, align 8
  %121 = call i32* @apr_hash_make(i32* %120)
  store i32* %121, i32** %10, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = load i32, i32* @FALSE, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @svn_fs_fs__get_contents(i32** %11, %struct.TYPE_16__* %122, %struct.TYPE_17__* %125, i32 %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = load i32*, i32** %10, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* @SVN_HASH_TERMINATOR, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = call i32* @svn_hash_read2(i32* %130, i32* %131, i32 %132, i32* %133)
  store i32* %134, i32** %15, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %153

137:                                              ; preds = %119
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = call %struct.TYPE_15__* @svn_fs_fs__id_unparse(i32 %140, i32* %141)
  store %struct.TYPE_15__* %142, %struct.TYPE_15__** %20, align 8
  %143 = load i32*, i32** %15, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @svn_stream_close(i32* %144)
  %146 = call i32* @svn_error_compose_create(i32* %143, i32 %145)
  store i32* %146, i32** %15, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32* (i32*, i32, i32, ...) @svn_error_quick_wrapf(i32* %147, i32 %148, i32 %151)
  store i32* %152, i32** %5, align 8
  br label %184

153:                                              ; preds = %119
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @svn_stream_close(i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %153
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @SVN_IS_VALID_REVNUM(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 @svn_cache__set(i64 %170, %struct.TYPE_18__* %18, i32* %171, i32* %172)
  %174 = call i32 @SVN_ERR(i32 %173)
  br label %175

175:                                              ; preds = %167, %161, %153
  br label %179

176:                                              ; preds = %74
  %177 = load i32*, i32** %9, align 8
  %178 = call i32* @apr_hash_make(i32* %177)
  store i32* %178, i32** %10, align 8
  br label %179

179:                                              ; preds = %176, %175
  br label %180

180:                                              ; preds = %179, %70
  %181 = load i32*, i32** %10, align 8
  %182 = load i32**, i32*** %6, align 8
  store i32* %181, i32** %182, align 8
  %183 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %183, i32** %5, align 8
  br label %184

184:                                              ; preds = %180, %137, %116, %53
  %185 = load i32*, i32** %5, align 8
  ret i32* %185
}

declare dso_local i64 @svn_fs_fs__id_txn_used(i32*) #1

declare dso_local i8* @svn_fs_fs__path_txn_node_props(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32* @svn_hash_read2(i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_fs_fs__id_unparse(i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32* @svn_error_quick_wrapf(i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_cache__get(i8**, i64*, i64, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @svn_fs_fs__get_contents(i32**, %struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @svn_cache__set(i64, %struct.TYPE_18__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
