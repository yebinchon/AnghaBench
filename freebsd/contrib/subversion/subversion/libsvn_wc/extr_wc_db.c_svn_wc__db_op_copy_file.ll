; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_copy_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_copy_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32, i32*, i32*, i32*, i64, i32*, i32, i32, i32, i8*, i32*, i8*, i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_copy_file(i32* %0, i8* %1, i32* %2, i8* %3, i32 %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i32* %10, i64 %11, i32* %12, i64 %13, i32* %14, i32* %15, i32* %16) #0 {
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca %struct.TYPE_11__*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca %struct.TYPE_12__, align 8
  %38 = alloca i32, align 4
  store i32* %0, i32** %18, align 8
  store i8* %1, i8** %19, align 8
  store i32* %2, i32** %20, align 8
  store i8* %3, i8** %21, align 8
  store i32 %4, i32* %22, align 4
  store i8* %5, i8** %23, align 8
  store i8* %6, i8** %24, align 8
  store i8* %7, i8** %25, align 8
  store i8* %8, i8** %26, align 8
  store i8* %9, i8** %27, align 8
  store i32* %10, i32** %28, align 8
  store i64 %11, i64* %29, align 8
  store i32* %12, i32** %30, align 8
  store i64 %13, i64* %31, align 8
  store i32* %14, i32** %32, align 8
  store i32* %15, i32** %33, align 8
  store i32* %16, i32** %34, align 8
  %39 = load i8*, i8** %19, align 8
  %40 = call i32 @svn_dirent_is_absolute(i8* %39)
  %41 = call i32 @SVN_ERR_ASSERT(i32 %40)
  %42 = load i32*, i32** %20, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @SVN_ERR_ASSERT(i32 %44)
  %46 = load i8*, i8** %24, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %17
  %49 = load i8*, i8** %25, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %26, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %28, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %27, align 8
  %59 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %79, label %61

61:                                               ; preds = %57, %54, %51, %48, %17
  %62 = load i8*, i8** %24, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i8*, i8** %25, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i8*, i8** %26, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32*, i32** %28, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i8*, i8** %27, align 8
  %75 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %76 = icmp ne i8* %74, %75
  br label %77

77:                                               ; preds = %73, %70, %67, %64, %61
  %78 = phi i1 [ false, %70 ], [ false, %67 ], [ false, %64 ], [ false, %61 ], [ %76, %73 ]
  br label %79

79:                                               ; preds = %77, %57
  %80 = phi i1 [ true, %57 ], [ %78, %77 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @SVN_ERR_ASSERT(i32 %81)
  %83 = load i32*, i32** %18, align 8
  %84 = load i8*, i8** %19, align 8
  %85 = load i32*, i32** %34, align 8
  %86 = load i32*, i32** %34, align 8
  %87 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_11__** %35, i8** %36, i32* %83, i8* %84, i32* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %90 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_11__* %89)
  %91 = call i32 @blank_iwb(%struct.TYPE_12__* %37)
  %92 = load i32, i32* @svn_wc__db_status_normal, align 4
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 16
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @svn_node_file, align 4
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 15
  store i32 %94, i32* %95, align 8
  %96 = load i8*, i8** %25, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %120

98:                                               ; preds = %79
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 9
  %100 = load i8*, i8** %25, align 8
  %101 = load i8*, i8** %26, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %34, align 8
  %106 = call i32 @create_repos_id(i32* %99, i8* %100, i8* %101, i32 %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load i8*, i8** %24, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i8* %108, i8** %109, align 8
  %110 = load i8*, i8** %27, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 14
  store i8* %110, i8** %111, align 8
  %112 = load i32*, i32** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 13
  store i32* %112, i32** %113, align 8
  %114 = load i8*, i8** %21, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 12
  store i8* %114, i8** %115, align 8
  %116 = load i32, i32* %22, align 4
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 11
  store i32 %116, i32* %117, align 8
  %118 = load i8*, i8** %23, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  store i8* %118, i8** %119, align 8
  br label %120

120:                                              ; preds = %98, %79
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 10
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** %24, align 8
  %126 = load i8*, i8** %27, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %128 = load i8*, i8** %36, align 8
  %129 = load i32*, i32** %34, align 8
  %130 = call i32 @op_depth_for_copy(i32* %121, i32* %122, i32* %38, i32 %124, i8* %125, i8* %126, %struct.TYPE_11__* %127, i8* %128, i32* %129)
  %131 = call i32 @SVN_ERR(i32 %130)
  %132 = load i32*, i32** %28, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 8
  store i32* %132, i32** %133, align 8
  %134 = load i64, i64* %31, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %120
  %137 = load i32, i32* %38, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %38, align 4
  %143 = icmp eq i32 %141, %142
  br label %144

144:                                              ; preds = %139, %136
  %145 = phi i1 [ true, %136 ], [ %143, %139 ]
  br label %146

146:                                              ; preds = %144, %120
  %147 = phi i1 [ false, %120 ], [ %145, %144 ]
  %148 = zext i1 %147 to i32
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  store i32 %148, i32* %149, align 4
  %150 = load i64, i64* %29, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load i64, i64* %29, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 7
  store i64 %153, i64* %154, align 8
  %155 = load i32*, i32** %30, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 6
  store i32* %155, i32** %156, align 8
  br label %157

157:                                              ; preds = %152, %146
  %158 = load i32*, i32** %33, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 5
  store i32* %158, i32** %159, align 8
  %160 = load i32*, i32** %32, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  store i32* %160, i32** %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %163 = load i8*, i8** %36, align 8
  %164 = load i32*, i32** %34, align 8
  %165 = call i32 @insert_working_node(%struct.TYPE_12__* %37, %struct.TYPE_11__* %162, i8* %163, i32* %164)
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %167 = call i32 @SVN_WC__DB_WITH_TXN(i32 %165, %struct.TYPE_11__* %166)
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %169 = load i8*, i8** %19, align 8
  %170 = load i32, i32* @svn_depth_empty, align 4
  %171 = load i32*, i32** %34, align 8
  %172 = call i32 @flush_entries(%struct.TYPE_11__* %168, i8* %169, i32 %170, i32* %171)
  %173 = call i32 @SVN_ERR(i32 %172)
  %174 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %174
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
