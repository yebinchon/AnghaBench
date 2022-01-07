; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_set_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_set_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i8*, i32*, i8*, i32*, i32*)* @set_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_entry(%struct.TYPE_14__* %0, i8* %1, i32* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__, align 4
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %16, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = call i32* @svn_fs_base__dag_get_fs(%struct.TYPE_14__* %23)
  store i32* %24, i32** %22, align 8
  %25 = load i32*, i32** %22, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_13__** %13, i32* %25, i32 %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load i32*, i32** %22, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @svn_fs_base__get_mutable_rep(i8** %15, i8* %36, i32* %37, i8* %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i8*, i8** %14, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 @svn_fs_base__same_keys(i8* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %6
  %48 = load i8*, i8** %15, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** %22, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @svn_fs_bdb__put_node_revision(i32* %51, i32 %54, %struct.TYPE_13__* %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %47, %6
  %61 = load i8*, i8** %14, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load i32*, i32** %22, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @svn_fs_base__rep_contents(%struct.TYPE_12__* %19, i32* %64, i8* %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = call i32* @svn_skel__parse(i32 %71, i32 %73, i32* %74)
  store i32* %75, i32** %21, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %63
  %79 = load i32*, i32** %21, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @svn_fs_base__parse_entries_skel(i32** %16, i32* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  br label %83

83:                                               ; preds = %78, %63
  br label %84

84:                                               ; preds = %83, %60
  %85 = load i32*, i32** %16, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32*, i32** %12, align 8
  %89 = call i32* @apr_hash_make(i32* %88)
  store i32* %89, i32** %16, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32*, i32** %16, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @svn_hash_sets(i32* %91, i8* %92, i32* %93)
  %95 = load i32*, i32** %16, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @svn_fs_base__unparse_entries_skel(i32** %21, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32*, i32** %21, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = call %struct.TYPE_11__* @svn_skel__unparse(i32* %99, i32* %100)
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %20, align 8
  %102 = load i32*, i32** %22, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @svn_fs_base__rep_contents_write_stream(i32** %17, i32* %102, i8* %103, i8* %104, i32 %105, i32* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %18, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @svn_stream_write(i32* %113, i32 %116, i32* %18)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32*, i32** %17, align 8
  %120 = call i32* @svn_stream_close(i32* %119)
  ret i32* %120
}

declare dso_local i32* @svn_fs_base__dag_get_fs(%struct.TYPE_14__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_13__**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__get_mutable_rep(i8**, i8*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__same_keys(i8*, i8*) #1

declare dso_local i32 @svn_fs_bdb__put_node_revision(i32*, i32, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__rep_contents(%struct.TYPE_12__*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_skel__parse(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_base__parse_entries_skel(i32**, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_base__unparse_entries_skel(i32**, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_skel__unparse(i32*, i32*) #1

declare dso_local i32 @svn_fs_base__rep_contents_write_stream(i32**, i32*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_write(i32*, i32, i32*) #1

declare dso_local i32* @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
