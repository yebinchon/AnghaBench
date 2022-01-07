; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_add_update_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_add_update_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32*, i32*, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Can't update '%s' because it is not a file\00", align 1
@TRUE = common dso_local global i32 0, align 4
@OP_OPEN_FILE = common dso_local global i64 0, align 8
@OP_ADD_FILE = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't update file at '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__mtcc_add_update_file(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_6__* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @svn_relpath_is_canonical(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br label %25

25:                                               ; preds = %22, %7
  %26 = phi i1 [ false, %7 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @SVN_ERR_ASSERT(i32 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = call i32 @svn_client__mtcc_check_path(i64* %18, i8* %29, i32 %30, %struct.TYPE_6__* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i64, i64* %18, align 8
  %36 = load i64, i64* @svn_node_file, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load i32, i32* @SVN_ERR_FS_NOT_FILE, align 4
  %40 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %9, align 8
  %42 = call i32* @svn_error_createf(i32 %39, i32* null, i32 %40, i8* %41)
  store i32* %42, i32** %8, align 8
  br label %115

43:                                               ; preds = %25
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = load i32, i32* @TRUE, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @mtcc_op_find(%struct.TYPE_7__** %16, i32* %17, i8* %44, i32 %47, i32 %48, i32 %49, i32 %50, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %58 = icmp ne %struct.TYPE_7__* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %43
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @OP_OPEN_FILE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @OP_ADD_FILE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %65, %59
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71, %65, %43
  %77 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %78 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i8*, i8** %9, align 8
  %80 = call i32* @svn_error_createf(i32 %77, i32* null, i32 %78, i8* %79)
  store i32* %80, i32** %8, align 8
  br label %115

81:                                               ; preds = %71
  %82 = load i32*, i32** %10, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  store i32* %82, i32** %84, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i32*, i32** %11, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32* @svn_checksum_dup(i32* %88, i32 %91)
  br label %94

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %87
  %95 = phi i32* [ %92, %87 ], [ null, %93 ]
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  store i32* %95, i32** %97, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store i32* %98, i32** %100, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load i32*, i32** %13, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32* @svn_checksum_dup(i32* %104, i32 %107)
  br label %110

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109, %103
  %111 = phi i32* [ %108, %103 ], [ null, %109 ]
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  %114 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %114, i32** %8, align 8
  br label %115

115:                                              ; preds = %110, %76, %38
  %116 = load i32*, i32** %8, align 8
  ret i32* %116
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__mtcc_check_path(i64*, i8*, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @mtcc_op_find(%struct.TYPE_7__**, i32*, i8*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_checksum_dup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
