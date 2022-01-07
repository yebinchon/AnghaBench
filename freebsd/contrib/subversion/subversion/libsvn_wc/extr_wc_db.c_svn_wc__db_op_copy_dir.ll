; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_copy_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_copy_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32, i32*, i32*, i32, i32*, i32, i32, i32, i8*, i32*, i8*, i32, i32 }

@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_copy_dir(i32* %0, i8* %1, i32* %2, i8* %3, i32 %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i32* %10, i32 %11, i64 %12, i32* %13, i32* %14, i32* %15) #0 {
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_11__*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca %struct.TYPE_12__, align 8
  %36 = alloca i32, align 4
  store i32* %0, i32** %17, align 8
  store i8* %1, i8** %18, align 8
  store i32* %2, i32** %19, align 8
  store i8* %3, i8** %20, align 8
  store i32 %4, i32* %21, align 4
  store i8* %5, i8** %22, align 8
  store i8* %6, i8** %23, align 8
  store i8* %7, i8** %24, align 8
  store i8* %8, i8** %25, align 8
  store i8* %9, i8** %26, align 8
  store i32* %10, i32** %27, align 8
  store i32 %11, i32* %28, align 4
  store i64 %12, i64* %29, align 8
  store i32* %13, i32** %30, align 8
  store i32* %14, i32** %31, align 8
  store i32* %15, i32** %32, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = call i32 @svn_dirent_is_absolute(i8* %37)
  %39 = call i32 @SVN_ERR_ASSERT(i32 %38)
  %40 = load i32*, i32** %19, align 8
  %41 = icmp ne i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @SVN_ERR_ASSERT(i32 %42)
  %44 = load i32*, i32** %17, align 8
  %45 = load i8*, i8** %18, align 8
  %46 = load i32*, i32** %32, align 8
  %47 = load i32*, i32** %32, align 8
  %48 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_11__** %33, i8** %34, i32* %44, i8* %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %51 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_11__* %50)
  %52 = call i32 @blank_iwb(%struct.TYPE_12__* %35)
  %53 = load i32, i32* @svn_wc__db_status_normal, align 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 15
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @svn_node_dir, align 4
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 14
  store i32 %55, i32* %56, align 8
  %57 = load i8*, i8** %24, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %81

59:                                               ; preds = %16
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 8
  %61 = load i8*, i8** %24, align 8
  %62 = load i8*, i8** %25, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %32, align 8
  %67 = call i32 @create_repos_id(i32* %60, i8* %61, i8* %62, i32 %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i8*, i8** %23, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = load i8*, i8** %26, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 13
  store i8* %71, i8** %72, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 12
  store i32* %73, i32** %74, align 8
  %75 = load i8*, i8** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 11
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* %21, align 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 10
  store i32 %77, i32* %78, align 8
  %79 = load i8*, i8** %22, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  br label %81

81:                                               ; preds = %59, %16
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %23, align 8
  %87 = load i8*, i8** %26, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %89 = load i8*, i8** %34, align 8
  %90 = load i32*, i32** %32, align 8
  %91 = call i32 @op_depth_for_copy(i32* %82, i32* %83, i32* %36, i32 %85, i8* %86, i8* %87, %struct.TYPE_11__* %88, i8* %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i32*, i32** %27, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 7
  store i32* %93, i32** %94, align 8
  %95 = load i32, i32* %28, align 4
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 6
  store i32 %95, i32* %96, align 8
  %97 = load i64, i64* %29, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %81
  %100 = load i32, i32* %36, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %36, align 4
  %106 = icmp eq i32 %104, %105
  br label %107

107:                                              ; preds = %102, %99
  %108 = phi i1 [ true, %99 ], [ %106, %102 ]
  br label %109

109:                                              ; preds = %107, %81
  %110 = phi i1 [ false, %81 ], [ %108, %107 ]
  %111 = zext i1 %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %31, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 5
  store i32* %113, i32** %114, align 8
  %115 = load i32*, i32** %30, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  store i32* %115, i32** %116, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %118 = load i8*, i8** %34, align 8
  %119 = load i32*, i32** %32, align 8
  %120 = call i32 @insert_working_node(%struct.TYPE_12__* %35, %struct.TYPE_11__* %117, i8* %118, i32* %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %122 = call i32 @SVN_WC__DB_WITH_TXN(i32 %120, %struct.TYPE_11__* %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %124 = load i8*, i8** %18, align 8
  %125 = load i32, i32* %28, align 4
  %126 = load i32*, i32** %32, align 8
  %127 = call i32 @flush_entries(%struct.TYPE_11__* %123, i8* %124, i32 %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  %129 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %129
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_11__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_11__*) #1

declare dso_local i32 @blank_iwb(%struct.TYPE_12__*) #1

declare dso_local i32 @create_repos_id(i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @op_depth_for_copy(i32*, i32*, i32*, i32, i8*, i8*, %struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @insert_working_node(%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @flush_entries(%struct.TYPE_11__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
