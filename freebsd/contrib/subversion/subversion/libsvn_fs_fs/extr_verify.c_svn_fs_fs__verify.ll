; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_verify.c_svn_fs_fs__verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_verify.c_svn_fs_fs__verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@SVN_FS_FS__MIN_REP_SHARING_FORMAT = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__verify(%struct.TYPE_9__* %0, i64 %1, i64 %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %17, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @SVN_IS_VALID_REVNUM(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %24, %8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @SVN_IS_VALID_REVNUM(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = call i32 @svn_fs_fs__youngest_rev(i64* %11, %struct.TYPE_9__* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i32 @svn_fs_fs__ensure_revision_exists(i64 %35, %struct.TYPE_9__* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @svn_fs_fs__ensure_revision_exists(i64 %40, %struct.TYPE_9__* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = call i64 @svn_fs_fs__use_log_addressing(%struct.TYPE_9__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %34
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i8*, i8** %15, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @verify_f7_metadata_consistency(%struct.TYPE_9__* %49, i64 %50, i64 %51, i32 %52, i8* %53, i32 %54, i8* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %48, %34
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SVN_FS_FS__MIN_REP_SHARING_FORMAT, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load i8*, i8** %15, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @verify_rep_cache(%struct.TYPE_9__* %66, i64 %67, i64 %68, i32 %69, i8* %70, i32 %71, i8* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %76

76:                                               ; preds = %65, %59
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__youngest_rev(i64*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @svn_fs_fs__ensure_revision_exists(i64, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @svn_fs_fs__use_log_addressing(%struct.TYPE_9__*) #1

declare dso_local i32 @verify_f7_metadata_consistency(%struct.TYPE_9__*, i64, i64, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @verify_rep_cache(%struct.TYPE_9__*, i64, i64, i32, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
