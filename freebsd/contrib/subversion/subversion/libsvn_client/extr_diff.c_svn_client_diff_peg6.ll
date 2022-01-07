; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_svn_client_diff_peg6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_svn_client_diff_peg6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8*, i8*, %struct.TYPE_14__, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32 }
%struct.TYPE_14__ = type { i8*, i8*, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Cannot ignore properties and show only properties at the same time\00", align 1
@diff_dir_added = common dso_local global i32 0, align 4
@diff_dir_changed = common dso_local global i32 0, align 4
@diff_dir_deleted = common dso_local global i32 0, align 4
@diff_file_added = common dso_local global i32 0, align 4
@diff_file_changed = common dso_local global i32 0, align 4
@diff_file_deleted = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_diff_peg6(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13, i8* %14, i8* %15, i32* %16, i32* %17, i32* %18, %struct.TYPE_12__* %19, i32* %20) #0 {
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
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
  %42 = alloca %struct.TYPE_12__*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca %struct.TYPE_13__, align 8
  %45 = alloca %struct.TYPE_11__*, align 8
  %46 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %23, align 8
  store i8* %1, i8** %24, align 8
  store i32* %2, i32** %25, align 8
  store i32* %3, i32** %26, align 8
  store i32* %4, i32** %27, align 8
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
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %42, align 8
  store i32* %20, i32** %43, align 8
  %47 = bitcast %struct.TYPE_13__* %44 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %47, i8 0, i64 152, i1 false)
  %48 = load i8*, i8** %35, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %21
  %51 = load i8*, i8** %36, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %55 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %56 = call i32* @svn_error_create(i32 %54, i32* null, i32 %55)
  store i32* %56, i32** %22, align 8
  br label %157

57:                                               ; preds = %50, %21
  %58 = load i8*, i8** %24, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %24, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i32*, i32** %23, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %43, align 8
  %69 = call i32 @create_diff_writer_info(%struct.TYPE_13__* %44, i32* %64, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** %43, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 15
  store i32* %71, i32** %72, align 8
  %73 = load i32*, i32** %39, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 14
  store i32* %73, i32** %74, align 8
  %75 = load i32*, i32** %40, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 13
  store i32* %75, i32** %76, align 8
  %77 = load i8*, i8** %38, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i8* %77, i8** %78, align 8
  %79 = load i8*, i8** %34, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 12
  store i8* %79, i8** %80, align 8
  %81 = load i8*, i8** %35, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 11
  store i8* %81, i8** %82, align 8
  %83 = load i8*, i8** %36, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 10
  store i8* %83, i8** %84, align 8
  %85 = load i8*, i8** %28, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  %87 = load i8*, i8** %37, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 9
  store i8* %87, i8** %88, align 8
  %89 = load i8*, i8** %31, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 8
  store i8* %89, i8** %90, align 8
  %91 = load i8*, i8** %32, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 7
  store i8* %91, i8** %92, align 8
  %93 = load i8*, i8** %33, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 6
  store i8* %93, i8** %94, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 5
  store i32 %97, i32* %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 4
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  store i32 %105, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  store i32* null, i32** %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  store i32* null, i32** %110, align 8
  %111 = load i32*, i32** %43, align 8
  %112 = call %struct.TYPE_11__* @svn_diff__tree_processor_create(%struct.TYPE_13__* %44, i32* %111)
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %46, align 8
  %113 = load i32, i32* @diff_dir_added, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @diff_dir_changed, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @diff_dir_deleted, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @diff_file_added, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @diff_file_changed, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @diff_file_deleted, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  store %struct.TYPE_11__* %131, %struct.TYPE_11__** %45, align 8
  %132 = load i8*, i8** %33, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %57
  %135 = load i8*, i8** %37, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134, %57
  %138 = load i8*, i8** @FALSE, align 8
  store i8* %138, i8** %30, align 8
  br label %139

139:                                              ; preds = %137, %134
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %141 = load i8*, i8** %24, align 8
  %142 = load i8*, i8** %24, align 8
  %143 = load i32*, i32** %26, align 8
  %144 = load i32*, i32** %27, align 8
  %145 = load i32*, i32** %25, align 8
  %146 = load i8*, i8** @FALSE, align 8
  %147 = load i32, i32* %29, align 4
  %148 = load i8*, i8** %30, align 8
  %149 = load i32*, i32** %41, align 8
  %150 = load i32, i32* @TRUE, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %153 = load i32*, i32** %43, align 8
  %154 = load i32*, i32** %43, align 8
  %155 = call i32 @do_diff(i32* null, i32* null, %struct.TYPE_14__* %140, i8* %141, i8* %142, i32* %143, i32* %144, i32* %145, i8* %146, i32 %147, i8* %148, i32* %149, i32 %150, %struct.TYPE_11__* %151, %struct.TYPE_12__* %152, i32* %153, i32* %154)
  %156 = call i32* @svn_error_trace(i32 %155)
  store i32* %156, i32** %22, align 8
  br label %157

157:                                              ; preds = %139, %53
  %158 = load i32*, i32** %22, align 8
  ret i32* %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @create_diff_writer_info(%struct.TYPE_13__*, i32*, i32, i32*) #2

declare dso_local %struct.TYPE_11__* @svn_diff__tree_processor_create(%struct.TYPE_13__*, i32*) #2

declare dso_local i32* @svn_error_trace(i32) #2

declare dso_local i32 @do_diff(i32*, i32*, %struct.TYPE_14__*, i8*, i8*, i32*, i32*, i32*, i8*, i32, i8*, i32*, i32, %struct.TYPE_11__*, %struct.TYPE_12__*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
