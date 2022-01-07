; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_svn_fs_base__set_txn_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_svn_fs_base__set_txn_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@transaction_kind_normal = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_FS__PROP_TXN_CLIENT_DATE = common dso_local global i8* null, align 8
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__set_txn_prop(i32* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = call i32 @get_txn(%struct.TYPE_4__** %14, i32* %15, i8* %16, i32 %17, i32* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @transaction_kind_normal, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32* @svn_fs_base__err_txn_not_mutable(i32* %28, i8* %29)
  store i32* %30, i32** %7, align 8
  br label %84

31:                                               ; preds = %6
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %40, i32** %7, align 8
  br label %84

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** %13, align 8
  %48 = call i64 @apr_hash_make(i32* %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i8*, i8** @SVN_FS__PROP_TXN_CLIENT_DATE, align 8
  %56 = call i64 @svn_hash_gets(i64 %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %61 = call i32 @strcmp(i8* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i8*, i8** @SVN_FS__PROP_TXN_CLIENT_DATE, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32* @svn_string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %68)
  %70 = call i32 @svn_hash_sets(i64 %66, i8* %67, i32* %69)
  br label %71

71:                                               ; preds = %63, %58, %51
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @svn_hash_sets(i64 %74, i8* %75, i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = call i32* @put_txn(i32* %78, %struct.TYPE_4__* %79, i8* %80, i32* %81, i32* %82)
  store i32* %83, i32** %7, align 8
  br label %84

84:                                               ; preds = %71, %39, %27
  %85 = load i32*, i32** %7, align 8
  ret i32* %85
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_txn(%struct.TYPE_4__**, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_fs_base__err_txn_not_mutable(i32*, i8*) #1

declare dso_local i64 @apr_hash_make(i32*) #1

declare dso_local i64 @svn_hash_gets(i64, i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_hash_sets(i64, i8*, i32*) #1

declare dso_local i32* @svn_string_create(i8*, i32*) #1

declare dso_local i32* @put_txn(i32*, %struct.TYPE_4__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
