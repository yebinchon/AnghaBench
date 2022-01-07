; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_unlock_proto_rev_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_unlock_proto_rev_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unlock_proto_rev_baton = type { i32, i32* }
%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Can't unlock unknown transaction '%s'\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Can't unlock nonlocked transaction '%s'\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Can't unlock prototype revision lockfile for transaction '%s'\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Can't close prototype revision lockfile for transaction '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @unlock_proto_rev_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @unlock_proto_rev_body(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.unlock_proto_rev_baton*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.unlock_proto_rev_baton*
  store %struct.unlock_proto_rev_baton* %13, %struct.unlock_proto_rev_baton** %8, align 8
  %14 = load %struct.unlock_proto_rev_baton*, %struct.unlock_proto_rev_baton** %8, align 8
  %15 = getelementptr inbounds %struct.unlock_proto_rev_baton, %struct.unlock_proto_rev_baton* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.unlock_proto_rev_baton*, %struct.unlock_proto_rev_baton** %8, align 8
  %19 = getelementptr inbounds %struct.unlock_proto_rev_baton, %struct.unlock_proto_rev_baton* %18, i32 0, i32 0
  %20 = load i64, i64* @FALSE, align 8
  %21 = call %struct.TYPE_3__* @get_shared_txn(i32* %17, i32* %19, i64 %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %10, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.unlock_proto_rev_baton*, %struct.unlock_proto_rev_baton** %8, align 8
  %28 = getelementptr inbounds %struct.unlock_proto_rev_baton, %struct.unlock_proto_rev_baton* %27, i32 0, i32 0
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @svn_fs_fs__id_txn_unparse(i32* %28, i32* %29)
  %31 = call i32* @svn_error_createf(i32 %25, i32* null, i32 %26, i32 %30)
  store i32* %31, i32** %4, align 8
  br label %76

32:                                               ; preds = %3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.unlock_proto_rev_baton*, %struct.unlock_proto_rev_baton** %8, align 8
  %41 = getelementptr inbounds %struct.unlock_proto_rev_baton, %struct.unlock_proto_rev_baton* %40, i32 0, i32 0
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @svn_fs_fs__id_txn_unparse(i32* %41, i32* %42)
  %44 = call i32* @svn_error_createf(i32 %38, i32* null, i32 %39, i32 %43)
  store i32* %44, i32** %4, align 8
  br label %76

45:                                               ; preds = %32
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @apr_file_unlock(i32* %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.unlock_proto_rev_baton*, %struct.unlock_proto_rev_baton** %8, align 8
  %54 = getelementptr inbounds %struct.unlock_proto_rev_baton, %struct.unlock_proto_rev_baton* %53, i32 0, i32 0
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @svn_fs_fs__id_txn_unparse(i32* %54, i32* %55)
  %57 = call i32* @svn_error_wrap_apr(i64 %51, i32 %52, i32 %56)
  store i32* %57, i32** %4, align 8
  br label %76

58:                                               ; preds = %45
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @apr_file_close(i32* %59)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.unlock_proto_rev_baton*, %struct.unlock_proto_rev_baton** %8, align 8
  %67 = getelementptr inbounds %struct.unlock_proto_rev_baton, %struct.unlock_proto_rev_baton* %66, i32 0, i32 0
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @svn_fs_fs__id_txn_unparse(i32* %67, i32* %68)
  %70 = call i32* @svn_error_wrap_apr(i64 %64, i32 %65, i32 %69)
  store i32* %70, i32** %4, align 8
  br label %76

71:                                               ; preds = %58
  %72 = load i64, i64* @FALSE, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %4, align 8
  br label %76

76:                                               ; preds = %71, %63, %50, %37, %24
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

declare dso_local %struct.TYPE_3__* @get_shared_txn(i32*, i32*, i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_fs__id_txn_unparse(i32*, i32*) #1

declare dso_local i64 @apr_file_unlock(i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i32) #1

declare dso_local i64 @apr_file_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
