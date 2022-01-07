; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_copy_versioned_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_copy_versioned_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_WC_MISSING = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_wc_notify_add = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_17__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (i32*, i8*, i8*, i8*, i8*, i64, i64, i64, i32*, i32, i32, i32, i8*, i32 (i8*, %struct.TYPE_16__*, i32*)*, i8*, i32*)* @copy_versioned_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @copy_versioned_file(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 %5, i64 %6, i64 %7, i32* %8, i32 %9, i32 %10, i32 %11, i8* %12, i32 (i8*, %struct.TYPE_16__*, i32*)* %13, i8* %14, i32* %15) #0 {
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32 (i8*, %struct.TYPE_16__*, i32*)*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca %struct.TYPE_17__*, align 8
  %39 = alloca i64, align 8
  %40 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %17, align 8
  store i8* %1, i8** %18, align 8
  store i8* %2, i8** %19, align 8
  store i8* %3, i8** %20, align 8
  store i8* %4, i8** %21, align 8
  store i64 %5, i64* %22, align 8
  store i64 %6, i64* %23, align 8
  store i64 %7, i64* %24, align 8
  store i32* %8, i32** %25, align 8
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store i32 %11, i32* %28, align 4
  store i8* %12, i8** %29, align 8
  store i32 (i8*, %struct.TYPE_16__*, i32*)* %13, i32 (i8*, %struct.TYPE_16__*, i32*)** %30, align 8
  store i8* %14, i8** %31, align 8
  store i32* %15, i32** %32, align 8
  store i32* null, i32** %33, align 8
  %41 = load i64, i64* %22, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %107, label %43

43:                                               ; preds = %16
  store i8* null, i8** %34, align 8
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* %35, align 8
  %45 = load i8*, i8** %18, align 8
  store i8* %45, i8** %34, align 8
  %46 = load i64, i64* %23, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %43
  %49 = load i32*, i32** %17, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = load i32*, i32** %32, align 8
  %52 = load i32*, i32** %32, align 8
  %53 = call %struct.TYPE_17__* @svn_wc__db_read_conflict(i32** %36, i32* null, i32* null, i32* %49, i8* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(%struct.TYPE_17__* %53)
  %55 = load i32*, i32** %17, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load i32*, i32** %36, align 8
  %58 = load i32*, i32** %32, align 8
  %59 = load i32*, i32** %32, align 8
  %60 = call %struct.TYPE_17__* @svn_wc__conflict_read_text_conflict(i8** %37, i32* null, i32* null, i32* %55, i8* %56, i32* %57, i32* %58, i32* %59)
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %38, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %62 = icmp ne %struct.TYPE_17__* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %48
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SVN_ERR_WC_MISSING, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %71 = call i32 @svn_error_clear(%struct.TYPE_17__* %70)
  store i8* null, i8** %37, align 8
  br label %75

72:                                               ; preds = %63, %48
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %74 = call i32 @SVN_ERR(%struct.TYPE_17__* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** %37, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i8*, i8** %37, align 8
  %80 = load i32*, i32** %32, align 8
  %81 = call %struct.TYPE_17__* @svn_io_check_path(i8* %79, i64* %39, i32* %80)
  %82 = call i32 @SVN_ERR(%struct.TYPE_17__* %81)
  %83 = load i64, i64* %39, align 8
  %84 = load i64, i64* @svn_node_file, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i64, i64* @TRUE, align 8
  store i64 %87, i64* %35, align 8
  %88 = load i8*, i8** %37, align 8
  store i8* %88, i8** %34, align 8
  br label %89

89:                                               ; preds = %86, %78
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90, %43
  %92 = load i32*, i32** %17, align 8
  %93 = load i8*, i8** %34, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = load i64, i64* @TRUE, align 8
  %97 = load i64, i64* %35, align 8
  %98 = load i32*, i32** %25, align 8
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* %27, align 4
  %101 = load i32, i32* %28, align 4
  %102 = load i8*, i8** %29, align 8
  %103 = load i32*, i32** %32, align 8
  %104 = load i32*, i32** %32, align 8
  %105 = call %struct.TYPE_17__* @copy_to_tmpdir(i32** %33, i32* null, i32* %92, i8* %93, i8* %94, i8* %95, i64 %96, i64 %97, i32* %98, i32 %99, i32 %100, i32 %101, i8* %102, i32* %103, i32* %104)
  %106 = call i32 @SVN_ERR(%struct.TYPE_17__* %105)
  br label %107

107:                                              ; preds = %91, %16
  %108 = load i32*, i32** %17, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = load i8*, i8** %19, align 8
  %111 = load i8*, i8** %20, align 8
  %112 = load i64, i64* %24, align 8
  %113 = load i32*, i32** %33, align 8
  %114 = load i32*, i32** %32, align 8
  %115 = call %struct.TYPE_17__* @svn_wc__db_op_copy(i32* %108, i8* %109, i8* %110, i8* %111, i64 %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(%struct.TYPE_17__* %115)
  %117 = load i32 (i8*, %struct.TYPE_16__*, i32*)*, i32 (i8*, %struct.TYPE_16__*, i32*)** %30, align 8
  %118 = icmp ne i32 (i8*, %struct.TYPE_16__*, i32*)* %117, null
  br i1 %118, label %119, label %132

119:                                              ; preds = %107
  %120 = load i8*, i8** %19, align 8
  %121 = load i32, i32* @svn_wc_notify_add, align 4
  %122 = load i32*, i32** %32, align 8
  %123 = call %struct.TYPE_16__* @svn_wc_create_notify(i8* %120, i32 %121, i32* %122)
  store %struct.TYPE_16__* %123, %struct.TYPE_16__** %40, align 8
  %124 = load i64, i64* @svn_node_file, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i32 (i8*, %struct.TYPE_16__*, i32*)*, i32 (i8*, %struct.TYPE_16__*, i32*)** %30, align 8
  %128 = load i8*, i8** %31, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %130 = load i32*, i32** %32, align 8
  %131 = call i32 %127(i8* %128, %struct.TYPE_16__* %129, i32* %130)
  br label %132

132:                                              ; preds = %119, %107
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_17__* %133
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__db_read_conflict(i32**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__conflict_read_text_conflict(i8**, i32*, i32*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_17__* @copy_to_tmpdir(i32**, i32*, i32*, i8*, i8*, i8*, i64, i64, i32*, i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_wc__db_op_copy(i32*, i8*, i8*, i8*, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
