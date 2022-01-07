; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_delete.c_svn_wc_delete4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_delete.c_svn_wc_delete4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32* }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"'%s' cannot be deleted\00", align 1
@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"'%s' is the root of a working copy and cannot be deleted\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"'%s' represents the repository root and cannot be deleted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @svn_wc_delete4(%struct.TYPE_16__* %0, i8* %1, i64 %2, i64 %3, i32 %4, i8* %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %29 = load i32*, i32** %19, align 8
  store i32* %29, i32** %20, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %21, align 8
  store i32* null, i32** %26, align 8
  %33 = load i32*, i32** %21, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i32*, i32** %20, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = call %struct.TYPE_17__* @svn_wc__db_read_info(i32* %23, i64* %24, i32* null, i8** %27, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %25, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %33, i8* %34, i32* %35, i32* %36)
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %22, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %9
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %42 = icmp ne %struct.TYPE_17__* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %51 = call i32 @svn_error_clear(%struct.TYPE_17__* %50)
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i8*, i8** %16, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = call %struct.TYPE_17__* @erase_unversioned_from_wc(i8* %55, i32 %56, i32 %57, i8* %58, i32* %59)
  %61 = call i32 @SVN_ERR(%struct.TYPE_17__* %60)
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %10, align 8
  br label %162

64:                                               ; preds = %43, %40, %9
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %66 = call i32 @SVN_ERR(%struct.TYPE_17__* %65)
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %23, align 4
  switch i32 %68, label %76 [
    i32 129, label %69
    i32 128, label %69
  ]

69:                                               ; preds = %67, %67
  %70 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %71 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %72 = load i8*, i8** %12, align 8
  %73 = load i32*, i32** %20, align 8
  %74 = call i32 @svn_dirent_local_style(i8* %72, i32* %73)
  %75 = call %struct.TYPE_17__* @svn_error_createf(i64 %70, i32* null, i32 %71, i32 %74)
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %10, align 8
  br label %162

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %23, align 4
  %79 = load i32, i32* @svn_wc__db_status_normal, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load i64, i64* %24, align 8
  %83 = load i64, i64* @svn_node_dir, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i32*, i32** %21, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i32*, i32** %20, align 8
  %89 = call %struct.TYPE_17__* @svn_wc__db_is_wcroot(i64* %28, i32* %86, i8* %87, i32* %88)
  %90 = call i32 @SVN_ERR(%struct.TYPE_17__* %89)
  %91 = load i64, i64* %28, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load i64, i64* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 8
  %95 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i8*, i8** %12, align 8
  %97 = load i32*, i32** %20, align 8
  %98 = call i32 @svn_dirent_local_style(i8* %96, i32* %97)
  %99 = call %struct.TYPE_17__* @svn_error_createf(i64 %94, i32* null, i32 %95, i32 %98)
  store %struct.TYPE_17__* %99, %struct.TYPE_17__** %10, align 8
  br label %162

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100, %81, %77
  %102 = load i8*, i8** %27, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i8*, i8** %27, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load i64, i64* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 8
  %111 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i8*, i8** %12, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = call i32 @svn_dirent_local_style(i8* %112, i32* %113)
  %115 = call %struct.TYPE_17__* @svn_error_createf(i64 %110, i32* null, i32 %111, i32 %114)
  store %struct.TYPE_17__* %115, %struct.TYPE_17__** %10, align 8
  br label %162

116:                                              ; preds = %104, %101
  %117 = load i32*, i32** %21, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = load i32*, i32** %20, align 8
  %120 = call i32 @svn_dirent_dirname(i8* %118, i32* %119)
  %121 = load i32*, i32** %20, align 8
  %122 = call %struct.TYPE_17__* @svn_wc__write_check(i32* %117, i32 %120, i32* %121)
  %123 = call i32 @SVN_ERR(%struct.TYPE_17__* %122)
  %124 = load i64, i64* %13, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %116
  %127 = load i32*, i32** %21, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = load i64, i64* %24, align 8
  %130 = load i64, i64* %25, align 8
  %131 = load i32*, i32** %19, align 8
  %132 = load i32*, i32** %19, align 8
  %133 = call %struct.TYPE_17__* @create_delete_wq_items(i32** %26, i32* %127, i8* %128, i64 %129, i64 %130, i32* %131, i32* %132)
  %134 = call i32 @SVN_ERR(%struct.TYPE_17__* %133)
  br label %135

135:                                              ; preds = %126, %116
  %136 = load i32*, i32** %21, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = load i64, i64* %13, align 8
  %139 = icmp ne i64 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = load i32*, i32** %26, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i8*, i8** %16, align 8
  %145 = load i32, i32* %17, align 4
  %146 = load i8*, i8** %18, align 8
  %147 = load i32*, i32** %20, align 8
  %148 = call %struct.TYPE_17__* @svn_wc__db_op_delete(i32* %136, i8* %137, i32* null, i32 %141, i32* null, i32* %142, i32 %143, i8* %144, i32 %145, i8* %146, i32* %147)
  %149 = call i32 @SVN_ERR(%struct.TYPE_17__* %148)
  %150 = load i32*, i32** %26, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %160

152:                                              ; preds = %135
  %153 = load i32*, i32** %21, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load i8*, i8** %16, align 8
  %157 = load i32*, i32** %19, align 8
  %158 = call %struct.TYPE_17__* @svn_wc__wq_run(i32* %153, i8* %154, i32 %155, i8* %156, i32* %157)
  %159 = call i32 @SVN_ERR(%struct.TYPE_17__* %158)
  br label %160

160:                                              ; preds = %152, %135
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %161, %struct.TYPE_17__** %10, align 8
  br label %162

162:                                              ; preds = %160, %109, %93, %69, %62
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  ret %struct.TYPE_17__* %163
}

declare dso_local %struct.TYPE_17__* @svn_wc__db_read_info(i32*, i64*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_17__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @erase_unversioned_from_wc(i8*, i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_error_createf(i64, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__db_is_wcroot(i64*, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__write_check(i32*, i32, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @create_delete_wq_items(i32**, i32*, i8*, i64, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__db_op_delete(i32*, i8*, i32*, i32, i32*, i32*, i32, i8*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
