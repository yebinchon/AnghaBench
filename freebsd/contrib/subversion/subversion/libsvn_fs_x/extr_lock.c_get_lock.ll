; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_lock.c_get_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_lock.c_get_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__**, %struct.TYPE_12__*, i8*, i64, i64, i32*)* @get_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_lock(%struct.TYPE_11__** %0, %struct.TYPE_12__* %1, i8* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %14, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call i32 @digest_path_from_path(i8** %15, i32 %19, i8* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i8*, i8** %15, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @svn_io_check_path(i8* %24, i64* %16, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %28, align 8
  %29 = load i64, i64* %16, align 8
  %30 = load i64, i64* @svn_node_none, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %6
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %15, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @read_digest_file(i32* null, %struct.TYPE_11__** %14, i32 %35, i8* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  br label %40

40:                                               ; preds = %32, %6
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %42 = icmp ne %struct.TYPE_11__* %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32* @SVN_FS__ERR_NO_SUCH_LOCK(%struct.TYPE_12__* %47, i8* %48)
  br label %52

50:                                               ; preds = %43
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32* [ %49, %46 ], [ %51, %50 ]
  store i32* %53, i32** %7, align 8
  br label %77

54:                                               ; preds = %40
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %56 = call i64 @lock_expired(%struct.TYPE_11__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @unlock_single(%struct.TYPE_12__* %62, %struct.TYPE_11__* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @SVN_FS__ERR_LOCK_EXPIRED(%struct.TYPE_12__* %68, i32 %71)
  store i32* %72, i32** %7, align 8
  br label %77

73:                                               ; preds = %54
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %75 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %75, align 8
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %7, align 8
  br label %77

77:                                               ; preds = %73, %67, %52
  %78 = load i32*, i32** %7, align 8
  ret i32* %78
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @digest_path_from_path(i8**, i32, i8*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @read_digest_file(i32*, %struct.TYPE_11__**, i32, i8*, i32*) #1

declare dso_local i32* @SVN_FS__ERR_NO_SUCH_LOCK(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @lock_expired(%struct.TYPE_11__*) #1

declare dso_local i32 @unlock_single(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32* @SVN_FS__ERR_LOCK_EXPIRED(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
