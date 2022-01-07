; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_svn_wc__move2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_svn_wc__move2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__move2(%struct.TYPE_4__* %0, i8* %1, i8* %2, i64 %3, i64 %4, i32 %5, i8* %6, i32* %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32* %7, i32** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %22, align 8
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %23, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i32*, i32** %21, align 8
  %36 = call i32 @svn_dirent_dirname(i8* %34, i32* %35)
  %37 = load i32*, i32** %21, align 8
  %38 = call i32 @svn_wc__write_check(i32* %33, i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load i32*, i32** %21, align 8
  %45 = call i32 @svn_dirent_dirname(i8* %43, i32* %44)
  %46 = load i32*, i32** %21, align 8
  %47 = call i32 @svn_wc__write_check(i32* %42, i32 %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i64, i64* @TRUE, align 8
  %53 = load i64, i64* @TRUE, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i8*, i8** %18, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = load i8*, i8** %20, align 8
  %59 = load i32*, i32** %21, align 8
  %60 = call i32 @copy_or_move(i64* %23, %struct.TYPE_4__* %49, i8* %50, i8* %51, i64 %52, i64 %53, i64 %54, i32 %55, i8* %56, i32* %57, i8* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i64, i64* %15, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %10
  %65 = load i8*, i8** %13, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i32*, i32** %21, align 8
  %69 = call i32 @svn_io_file_rename2(i8* %65, i8* %66, i32 %67, i32* %68)
  %70 = call i32* @svn_error_trace(i32 %69)
  store i32* %70, i32** %26, align 8
  %71 = load i32*, i32** %26, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %64
  %74 = load i32*, i32** %26, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i64, i64* @TRUE, align 8
  %80 = load i32, i32* %17, align 4
  %81 = load i8*, i8** %18, align 8
  %82 = load i32*, i32** %21, align 8
  %83 = call i32 @svn_wc__db_op_delete(i32* %77, i8* %78, i8* null, i64 %79, i32* null, i32* null, i32 %80, i8* %81, i32* null, i8* null, i32* %82)
  %84 = call i32 @svn_error_compose_create(i32* %74, i32 %83)
  %85 = call i32* @svn_error_trace(i32 %84)
  store i32* %85, i32** %11, align 8
  br label %143

86:                                               ; preds = %64
  br label %87

87:                                               ; preds = %86, %10
  %88 = load i32*, i32** %22, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i32*, i32** %21, align 8
  %91 = load i32*, i32** %21, align 8
  %92 = call i32 @svn_wc__db_read_info(i32* null, i64* %24, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %25, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %88, i8* %89, i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i64, i64* %24, align 8
  %95 = load i64, i64* @svn_node_dir, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %87
  %98 = load i32*, i32** %22, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* %17, align 4
  %102 = load i8*, i8** %18, align 8
  %103 = load i32*, i32** %21, align 8
  %104 = call i32 @remove_all_conflict_markers(i32* %98, i8* %99, i8* %100, i32 %101, i8* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  br label %106

106:                                              ; preds = %97, %87
  %107 = load i64, i64* %25, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load i32*, i32** %22, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i64, i64* %24, align 8
  %113 = load i64, i64* @svn_node_dir, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i8*, i8** %14, align 8
  br label %119

117:                                              ; preds = %109
  %118 = load i8*, i8** %13, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i8* [ %116, %115 ], [ %118, %117 ]
  %121 = load i32*, i32** %21, align 8
  %122 = call i32 @remove_node_conflict_markers(i32* %110, i8* %111, i8* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  br label %124

124:                                              ; preds = %119, %106
  %125 = load i32*, i32** %22, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load i64, i64* %23, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i8*, i8** %14, align 8
  br label %132

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i8* [ %130, %129 ], [ null, %131 ]
  %134 = load i64, i64* @TRUE, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i8*, i8** %18, align 8
  %137 = load i32*, i32** %19, align 8
  %138 = load i8*, i8** %20, align 8
  %139 = load i32*, i32** %21, align 8
  %140 = call i32 @svn_wc__db_op_delete(i32* %125, i8* %126, i8* %133, i64 %134, i32* null, i32* null, i32 %135, i8* %136, i32* %137, i8* %138, i32* %139)
  %141 = call i32 @SVN_ERR(i32 %140)
  %142 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %142, i32** %11, align 8
  br label %143

143:                                              ; preds = %132, %73
  %144 = load i32*, i32** %11, align 8
  ret i32* %144
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__write_check(i32*, i32, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @copy_or_move(i64*, %struct.TYPE_4__*, i8*, i8*, i64, i64, i64, i32, i8*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_io_file_rename2(i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__db_op_delete(i32*, i8*, i8*, i64, i32*, i32*, i32, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @remove_all_conflict_markers(i32*, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @remove_node_conflict_markers(i32*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
