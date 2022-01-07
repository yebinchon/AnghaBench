; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_unlock_proto_rev_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_unlock_proto_rev_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64 }

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
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = call %struct.TYPE_5__* @get_shared_txn(i32* %17, i32 %20, i64 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %10, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @svn_fs_x__txn_name(i32 %30, i32* %31)
  %33 = call i32* @svn_error_createf(i32 %26, i32* null, i32 %27, i32 %32)
  store i32* %33, i32** %4, align 8
  br label %81

34:                                               ; preds = %3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @svn_fs_x__txn_name(i32 %44, i32* %45)
  %47 = call i32* @svn_error_createf(i32 %40, i32* null, i32 %41, i32 %46)
  store i32* %47, i32** %4, align 8
  br label %81

48:                                               ; preds = %34
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @apr_file_unlock(i32* %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @svn_fs_x__txn_name(i32 %58, i32* %59)
  %61 = call i32* @svn_error_wrap_apr(i64 %54, i32 %55, i32 %60)
  store i32* %61, i32** %4, align 8
  br label %81

62:                                               ; preds = %48
  %63 = load i32*, i32** %9, align 8
  %64 = call i64 @apr_file_close(i32* %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @svn_fs_x__txn_name(i32 %72, i32* %73)
  %75 = call i32* @svn_error_wrap_apr(i64 %68, i32 %69, i32 %74)
  store i32* %75, i32** %4, align 8
  br label %81

76:                                               ; preds = %62
  %77 = load i64, i64* @FALSE, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %80, i32** %4, align 8
  br label %81

81:                                               ; preds = %76, %67, %53, %39, %25
  %82 = load i32*, i32** %4, align 8
  ret i32* %82
}

declare dso_local %struct.TYPE_5__* @get_shared_txn(i32*, i32, i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_x__txn_name(i32, i32*) #1

declare dso_local i64 @apr_file_unlock(i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i32) #1

declare dso_local i64 @apr_file_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
