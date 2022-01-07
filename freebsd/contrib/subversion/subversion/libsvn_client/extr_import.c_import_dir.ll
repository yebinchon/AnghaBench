; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_import.c_import_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_import.c_import_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (i8*, i32*)*, i32 (i8*, i8*, i32*, i32, i32*, i8**)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 (i32, %struct.TYPE_14__*, i32*)* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_commit_added = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@svn_wc_notify_lock_state_inapplicable = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i8*, i8*, i8*, i32, i32*, i32*, i32, i32, i32, i32, i8*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32*)* @import_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @import_dir(%struct.TYPE_15__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32* %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i8* %11, %struct.TYPE_17__* %12, %struct.TYPE_16__* %13, i32* %14) #0 {
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_17__*, align 8
  %29 = alloca %struct.TYPE_16__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i8* %3, i8** %19, align 8
  store i32 %4, i32* %20, align 4
  store i32* %5, i32** %21, align 8
  store i32* %6, i32** %22, align 8
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i8* %11, i8** %27, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %29, align 8
  store i32* %14, i32** %30, align 8
  %34 = load i8*, i8** %18, align 8
  %35 = load i32*, i32** %30, align 8
  %36 = call i32 @svn_path_check_valid(i8* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i8*, i8** %18, align 8
  %39 = load i32*, i32** %21, align 8
  %40 = load i32*, i32** %22, align 8
  %41 = load i32, i32* %26, align 4
  %42 = load i8*, i8** %27, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %44 = load i32*, i32** %30, align 8
  %45 = load i32*, i32** %30, align 8
  %46 = call i32 @get_filtered_children(i32** %31, i8* %38, i32* %39, i32* null, i32* %40, i32 %41, i8* %42, %struct.TYPE_16__* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32 (i8*, i8*, i32*, i32, i32*, i8**)*, i32 (i8*, i8*, i32*, i32, i32*, i8**)** %49, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %54 = load i32*, i32** %30, align 8
  %55 = call i32 %50(i8* %51, i8* %52, i32* null, i32 %53, i32* %54, i8** %32)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32, i32* @TRUE, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32 (i32, %struct.TYPE_14__*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32*)** %61, align 8
  %63 = icmp ne i32 (i32, %struct.TYPE_14__*, i32*)* %62, null
  br i1 %63, label %64, label %89

64:                                               ; preds = %15
  %65 = load i8*, i8** %18, align 8
  %66 = load i32, i32* @svn_wc_notify_commit_added, align 4
  %67 = load i32*, i32** %30, align 8
  %68 = call %struct.TYPE_14__* @svn_wc_create_notify(i8* %65, i32 %66, i32* %67)
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %33, align 8
  %69 = load i32, i32* @svn_node_dir, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @svn_wc_notify_lock_state_inapplicable, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32 (i32, %struct.TYPE_14__*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32*)** %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %87 = load i32*, i32** %30, align 8
  %88 = call i32 %82(i32 %85, %struct.TYPE_14__* %86, i32* %87)
  br label %89

89:                                               ; preds = %64, %15
  %90 = load i8*, i8** %18, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = load i32*, i32** %31, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %94 = load i8*, i8** %32, align 8
  %95 = load i32, i32* %20, align 4
  %96 = load i32*, i32** %21, align 8
  %97 = load i32*, i32** %22, align 8
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %24, align 4
  %100 = load i32, i32* %25, align 4
  %101 = load i32, i32* %26, align 4
  %102 = load i8*, i8** %27, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %105 = load i32*, i32** %30, align 8
  %106 = call i32 @import_children(i8* %90, i8* %91, i32* %92, %struct.TYPE_15__* %93, i8* %94, i32 %95, i32* %96, i32* %97, i32 %98, i32 %99, i32 %100, i32 %101, i8* %102, %struct.TYPE_17__* %103, %struct.TYPE_16__* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %109, align 8
  %111 = load i8*, i8** %32, align 8
  %112 = load i32*, i32** %30, align 8
  %113 = call i32 %110(i8* %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %115
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_path_check_valid(i8*, i32*) #1

declare dso_local i32 @get_filtered_children(i32**, i8*, i32*, i32*, i32*, i32, i8*, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @import_children(i8*, i8*, i32*, %struct.TYPE_15__*, i8*, i32, i32*, i32*, i32, i32, i32, i32, i8*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
