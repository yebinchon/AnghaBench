; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_process_committed4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_process_committed4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }

@SVN_ERR_WC_DB_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @svn_wc_process_committed4(i8* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5, i32* %6, i32 %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32* @svn_wc__adm_get_db(i32* %30)
  store i32* %31, i32** %23, align 8
  store i32* null, i32** %26, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i32*, i32** %22, align 8
  %34 = call %struct.TYPE_11__* @svn_dirent_get_absolute(i8** %24, i8* %32, i32* %33)
  %35 = call i32 @SVN_ERR(%struct.TYPE_11__* %34)
  %36 = load i32*, i32** %23, align 8
  %37 = load i32*, i32** %22, align 8
  %38 = call %struct.TYPE_11__* @svn_wc__context_create_with_db(i32** %27, i32* null, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(%struct.TYPE_11__* %38)
  %40 = load i8*, i8** %21, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %11
  %43 = load i8*, i8** %21, align 8
  %44 = load i32*, i32** %22, align 8
  %45 = call i32* @svn_checksum__from_digest_md5(i8* %43, i32* %44)
  store i32* %45, i32** %25, align 8
  br label %47

46:                                               ; preds = %11
  store i32* null, i32** %25, align 8
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32*, i32** %25, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load i32*, i32** %23, align 8
  %52 = load i8*, i8** %24, align 8
  %53 = load i32*, i32** %25, align 8
  %54 = load i32*, i32** %22, align 8
  %55 = load i32*, i32** %22, align 8
  %56 = call %struct.TYPE_11__* @svn_wc__db_pristine_get_sha1(i32** %26, i32* %51, i8* %52, i32* %53, i32* %54, i32* %55)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %29, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SVN_ERR_WC_DB_ERROR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %67 = call i32 @svn_error_clear(%struct.TYPE_11__* %66)
  store i32* null, i32** %26, align 8
  br label %71

68:                                               ; preds = %59, %50
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %70 = call i32 @SVN_ERR(%struct.TYPE_11__* %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i32*, i32** %22, align 8
  %74 = call i32* @svn_wc_committed_queue_create(i32* %73)
  store i32* %74, i32** %28, align 8
  %75 = load i32*, i32** %28, align 8
  %76 = load i32*, i32** %27, align 8
  %77 = load i8*, i8** %24, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32*, i32** %18, align 8
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32*, i32** %26, align 8
  %83 = load i32*, i32** %22, align 8
  %84 = call %struct.TYPE_11__* @svn_wc_queue_committed3(i32* %75, i32* %76, i8* %77, i32 %78, i32* %79, i32 %80, i32 %81, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(%struct.TYPE_11__* %84)
  %86 = load i32*, i32** %28, align 8
  %87 = load i32*, i32** %27, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i8*, i8** %16, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = load i32*, i32** %22, align 8
  %92 = call %struct.TYPE_11__* @svn_wc_process_committed_queue2(i32* %86, i32* %87, i32 %88, i8* %89, i8* %90, i32* null, i32* null, i32* %91)
  %93 = call i32 @SVN_ERR(%struct.TYPE_11__* %92)
  %94 = load i32*, i32** %27, align 8
  %95 = call i32 @svn_wc_context_destroy(i32* %94)
  %96 = call %struct.TYPE_11__* @svn_error_trace(i32 %95)
  ret %struct.TYPE_11__* %96
}

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_wc__context_create_with_db(i32**, i32*, i32*, i32*) #1

declare dso_local i32* @svn_checksum__from_digest_md5(i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_wc__db_pristine_get_sha1(i32**, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #1

declare dso_local i32* @svn_wc_committed_queue_create(i32*) #1

declare dso_local %struct.TYPE_11__* @svn_wc_queue_committed3(i32*, i32*, i8*, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_wc_process_committed_queue2(i32*, i32*, i32, i8*, i8*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
