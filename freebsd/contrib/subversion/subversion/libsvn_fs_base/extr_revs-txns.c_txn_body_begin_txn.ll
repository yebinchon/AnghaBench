; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_txn_body_begin_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_txn_body_begin_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.begin_txn_args = type { i32, i32, i32* }
%struct.change_txn_prop_args = type { i8*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@SVN_FS_TXN_CHECK_OOD = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CHECK_OOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_FS_TXN_CLIENT_DATE = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CLIENT_DATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_7__*)* @txn_body_begin_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_begin_txn(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.begin_txn_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.change_txn_prop_args, align 8
  %9 = alloca %struct.change_txn_prop_args, align 8
  %10 = alloca %struct.change_txn_prop_args, align 8
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca %struct.change_txn_prop_args, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.begin_txn_args*
  store %struct.begin_txn_args* %14, %struct.begin_txn_args** %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.begin_txn_args*, %struct.begin_txn_args** %5, align 8
  %19 = getelementptr inbounds %struct.begin_txn_args, %struct.begin_txn_args* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @svn_fs_base__rev_get_root(i32** %6, i32 %17, i32 %20, %struct.TYPE_7__* %21, i32 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @svn_fs_bdb__create_txn(i8** %7, i32 %29, i32* %30, %struct.TYPE_7__* %31, i32 %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.begin_txn_args*, %struct.begin_txn_args** %5, align 8
  %38 = getelementptr inbounds %struct.begin_txn_args, %struct.begin_txn_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SVN_FS_TXN_CHECK_OOD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %8, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %8, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_OOD, align 4
  %51 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %8, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @svn_string_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = bitcast i8* %55 to %struct.TYPE_8__*
  %57 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %8, i32 0, i32 1
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = call i32 @txn_body_change_txn_prop(%struct.change_txn_prop_args* %8, %struct.TYPE_7__* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %61

61:                                               ; preds = %43, %2
  %62 = load %struct.begin_txn_args*, %struct.begin_txn_args** %5, align 8
  %63 = getelementptr inbounds %struct.begin_txn_args, %struct.begin_txn_args* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %9, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %9, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_LOCKS, align 4
  %76 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %9, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @svn_string_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = bitcast i8* %80 to %struct.TYPE_8__*
  %82 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %9, i32 0, i32 1
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = call i32 @txn_body_change_txn_prop(%struct.change_txn_prop_args* %9, %struct.TYPE_7__* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %68, %61
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %10, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %10, i32 0, i32 0
  store i8* %91, i8** %92, align 8
  %93 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %94 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %10, i32 0, i32 2
  store i32 %93, i32* %94, align 8
  %95 = call i32 (...) @apr_time_now()
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @svn_time_to_cstring(i32 %95, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @strlen(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %10, i32 0, i32 1
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = call i32 @txn_body_change_txn_prop(%struct.change_txn_prop_args* %10, %struct.TYPE_7__* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = load %struct.begin_txn_args*, %struct.begin_txn_args** %5, align 8
  %110 = getelementptr inbounds %struct.begin_txn_args, %struct.begin_txn_args* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SVN_FS_TXN_CLIENT_DATE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %86
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %12, i32 0, i32 3
  store i32 %118, i32* %119, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %12, i32 0, i32 0
  store i8* %120, i8** %121, align 8
  %122 = load i32, i32* @SVN_FS__PROP_TXN_CLIENT_DATE, align 4
  %123 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %12, i32 0, i32 2
  store i32 %122, i32* %123, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @svn_string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = bitcast i8* %127 to %struct.TYPE_8__*
  %129 = getelementptr inbounds %struct.change_txn_prop_args, %struct.change_txn_prop_args* %12, i32 0, i32 1
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %129, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = call i32 @txn_body_change_txn_prop(%struct.change_txn_prop_args* %12, %struct.TYPE_7__* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  br label %133

133:                                              ; preds = %115, %86
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %7, align 8
  %138 = load %struct.begin_txn_args*, %struct.begin_txn_args** %5, align 8
  %139 = getelementptr inbounds %struct.begin_txn_args, %struct.begin_txn_args* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @make_txn(i32 %136, i8* %137, i32 %140, i32 %143)
  %145 = load %struct.begin_txn_args*, %struct.begin_txn_args** %5, align 8
  %146 = getelementptr inbounds %struct.begin_txn_args, %struct.begin_txn_args* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  store i32 %144, i32* %147, align 4
  %148 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %148
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__rev_get_root(i32**, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @svn_fs_bdb__create_txn(i8**, i32, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i8* @svn_string_create(i8*, i32) #1

declare dso_local i32 @txn_body_change_txn_prop(%struct.change_txn_prop_args*, %struct.TYPE_7__*) #1

declare dso_local i32 @svn_time_to_cstring(i32, i32) #1

declare dso_local i32 @apr_time_now(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @make_txn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
