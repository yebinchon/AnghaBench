; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_info.c_same_resource_in_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_info.c_same_resource_in_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }

@svn_opt_revision_head = common dso_local global i32 0, align 4
@svn_opt_revision_number = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_UNRELATED_RESOURCES = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i8*, i32, i32*, i32*, i32*)* @same_resource_in_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @same_resource_in_head(i32* %0, i8* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_12__, align 4
  %16 = alloca %struct.TYPE_12__, align 4
  %17 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* @svn_opt_revision_head, align 4
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @svn_opt_revision_number, align 4
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call %struct.TYPE_13__* @svn_client__repos_locations(i8** %17, i32* null, i32* null, i32* null, i32* %25, i8* %26, %struct.TYPE_12__* %16, %struct.TYPE_12__* %15, i32* null, i32* %27, i32* %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %14, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %6
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SVN_ERR_CLIENT_UNRELATED_RESOURCES, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38, %32
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %46 = call i32 @svn_error_clear(%struct.TYPE_13__* %45)
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %7, align 8
  br label %61

50:                                               ; preds = %38, %6
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %52 = call i32 @SVN_ERR(%struct.TYPE_13__* %51)
  br label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = call i64 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %7, align 8
  br label %61

61:                                               ; preds = %53, %44
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  ret %struct.TYPE_13__* %62
}

declare dso_local %struct.TYPE_13__* @svn_client__repos_locations(i8**, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_13__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_13__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
