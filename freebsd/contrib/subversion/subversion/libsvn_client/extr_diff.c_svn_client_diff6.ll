; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_svn_client_diff6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_svn_client_diff6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i8*, i8*, %struct.TYPE_17__, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32 }
%struct.TYPE_17__ = type { i8*, i8*, i32*, i32* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32 }

@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Cannot ignore properties and show only properties at the same time\00", align 1
@svn_opt_revision_unspecified = common dso_local global i32 0, align 4
@diff_dir_added = common dso_local global i32 0, align 4
@diff_dir_changed = common dso_local global i32 0, align 4
@diff_dir_deleted = common dso_local global i32 0, align 4
@diff_file_added = common dso_local global i32 0, align 4
@diff_file_changed = common dso_local global i32 0, align 4
@diff_file_deleted = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_diff6(i32* %0, i8* %1, %struct.TYPE_18__* %2, i8* %3, %struct.TYPE_18__* %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13, i8* %14, i8* %15, i32* %16, i32* %17, i32* %18, %struct.TYPE_20__* %19, i32* %20) #0 {
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_18__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_18__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca %struct.TYPE_20__*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca %struct.TYPE_21__, align 8
  %45 = alloca %struct.TYPE_18__, align 4
  %46 = alloca %struct.TYPE_19__*, align 8
  %47 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %23, align 8
  store i8* %1, i8** %24, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %25, align 8
  store i8* %3, i8** %26, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %27, align 8
  store i8* %5, i8** %28, align 8
  store i32 %6, i32* %29, align 4
  store i8* %7, i8** %30, align 8
  store i8* %8, i8** %31, align 8
  store i8* %9, i8** %32, align 8
  store i8* %10, i8** %33, align 8
  store i8* %11, i8** %34, align 8
  store i8* %12, i8** %35, align 8
  store i8* %13, i8** %36, align 8
  store i8* %14, i8** %37, align 8
  store i8* %15, i8** %38, align 8
  store i32* %16, i32** %39, align 8
  store i32* %17, i32** %40, align 8
  store i32* %18, i32** %41, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %42, align 8
  store i32* %20, i32** %43, align 8
  %48 = bitcast %struct.TYPE_21__* %44 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %48, i8 0, i64 152, i1 false)
  %49 = load i8*, i8** %35, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %21
  %52 = load i8*, i8** %36, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %57 = call i32* @svn_error_create(i32 %55, i32* null, i32 %56)
  store i32* %57, i32** %22, align 8
  br label %159

58:                                               ; preds = %51, %21
  %59 = load i32, i32* @svn_opt_revision_unspecified, align 4
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load i8*, i8** %24, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %26, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %23, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %43, align 8
  %72 = call i32 @create_diff_writer_info(%struct.TYPE_21__* %44, i32* %67, i32 %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %43, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 15
  store i32* %74, i32** %75, align 8
  %76 = load i32*, i32** %39, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 14
  store i32* %76, i32** %77, align 8
  %78 = load i32*, i32** %40, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 13
  store i32* %78, i32** %79, align 8
  %80 = load i8*, i8** %38, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %34, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 12
  store i8* %82, i8** %83, align 8
  %84 = load i8*, i8** %35, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 11
  store i8* %84, i8** %85, align 8
  %86 = load i8*, i8** %36, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 10
  store i8* %86, i8** %87, align 8
  %88 = load i8*, i8** %28, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = load i8*, i8** %37, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 9
  store i8* %90, i8** %91, align 8
  %92 = load i8*, i8** %31, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 8
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** %32, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 7
  store i8* %94, i8** %95, align 8
  %96 = load i8*, i8** %33, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 6
  store i8* %96, i8** %97, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 5
  store i32 %100, i32* %101, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 4
  store i32 %104, i32* %105, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 3
  store i32 %108, i32* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 3
  store i32* null, i32** %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  %114 = load i32*, i32** %43, align 8
  %115 = call %struct.TYPE_19__* @svn_diff__tree_processor_create(%struct.TYPE_21__* %44, i32* %114)
  store %struct.TYPE_19__* %115, %struct.TYPE_19__** %47, align 8
  %116 = load i32, i32* @diff_dir_added, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @diff_dir_changed, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @diff_dir_deleted, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @diff_file_added, align 4
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @diff_file_changed, align 4
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @diff_file_deleted, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  store %struct.TYPE_19__* %134, %struct.TYPE_19__** %46, align 8
  %135 = load i8*, i8** %33, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %58
  %138 = load i8*, i8** %37, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %137, %58
  %141 = load i8*, i8** @FALSE, align 8
  store i8* %141, i8** %30, align 8
  br label %142

142:                                              ; preds = %140, %137
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %144 = load i8*, i8** %24, align 8
  %145 = load i8*, i8** %26, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %148 = load i32, i32* @TRUE, align 4
  %149 = load i32, i32* %29, align 4
  %150 = load i8*, i8** %30, align 8
  %151 = load i32*, i32** %41, align 8
  %152 = load i32, i32* @TRUE, align 4
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %155 = load i32*, i32** %43, align 8
  %156 = load i32*, i32** %43, align 8
  %157 = call i32 @do_diff(i32* null, i32* null, %struct.TYPE_17__* %143, i8* %144, i8* %145, %struct.TYPE_18__* %146, %struct.TYPE_18__* %147, %struct.TYPE_18__* %45, i32 %148, i32 %149, i8* %150, i32* %151, i32 %152, %struct.TYPE_19__* %153, %struct.TYPE_20__* %154, i32* %155, i32* %156)
  %158 = call i32* @svn_error_trace(i32 %157)
  store i32* %158, i32** %22, align 8
  br label %159

159:                                              ; preds = %142, %54
  %160 = load i32*, i32** %22, align 8
  ret i32* %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @create_diff_writer_info(%struct.TYPE_21__*, i32*, i32, i32*) #2

declare dso_local %struct.TYPE_19__* @svn_diff__tree_processor_create(%struct.TYPE_21__*, i32*) #2

declare dso_local i32* @svn_error_trace(i32) #2

declare dso_local i32 @do_diff(i32*, i32*, %struct.TYPE_17__*, i8*, i8*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32, i8*, i32*, i32, %struct.TYPE_19__*, %struct.TYPE_20__*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
