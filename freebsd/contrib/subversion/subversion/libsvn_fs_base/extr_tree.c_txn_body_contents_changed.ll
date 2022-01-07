; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_contents_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_contents_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.things_changed_args = type { i32*, i32, i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_7__*)* @txn_body_contents_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_contents_changed(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.things_changed_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.things_changed_args*
  store %struct.things_changed_args* %15, %struct.things_changed_args** %6, align 8
  %16 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %17 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %20 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_dag(i32** %7, i32 %18, i32 %21, %struct.TYPE_7__* %22, i32 %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %29 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %32 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @get_dag(i32** %8, i32 %30, i32 %33, %struct.TYPE_7__* %34, i32 %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %41 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @svn_fs_base__things_different(i32* null, i32* %42, i32* %43, i32* %44, %struct.TYPE_7__* %45, i32 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %52 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %2
  %56 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %57 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55, %2
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %3, align 8
  br label %149

63:                                               ; preds = %55
  %64 = load i32, i32* @svn_checksum_md5, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @svn_fs_base__dag_file_checksum(i32** %9, i32 %64, i32* %65, %struct.TYPE_7__* %66, i32 %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32, i32* @svn_checksum_md5, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @svn_fs_base__dag_file_checksum(i32** %10, i32 %72, i32* %73, %struct.TYPE_7__* %74, i32 %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @svn_checksum_match(i32* %80, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %63
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %3, align 8
  br label %149

86:                                               ; preds = %63
  %87 = load i32, i32* @svn_checksum_sha1, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @svn_fs_base__dag_file_checksum(i32** %9, i32 %87, i32* %88, %struct.TYPE_7__* %89, i32 %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32, i32* @svn_checksum_sha1, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @svn_fs_base__dag_file_checksum(i32** %10, i32 %95, i32* %96, %struct.TYPE_7__* %97, i32 %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32*, i32** %9, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %119

105:                                              ; preds = %86
  %106 = load i32*, i32** %10, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i32*, i32** %9, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @svn_checksum_match(i32* %109, i32* %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %116 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  store i32 %114, i32* %117, align 4
  %118 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %118, i32** %3, align 8
  br label %149

119:                                              ; preds = %105, %86
  %120 = load i32*, i32** %7, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @svn_fs_base__dag_get_contents(i32** %11, i32* %120, %struct.TYPE_7__* %121, i32 %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load i32*, i32** %8, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @svn_fs_base__dag_get_contents(i32** %12, i32* %127, %struct.TYPE_7__* %128, i32 %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  %134 = load i32*, i32** %11, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @svn_stream_contents_same2(i32* %13, i32* %134, i32* %135, i32 %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = load %struct.things_changed_args*, %struct.things_changed_args** %6, align 8
  %146 = getelementptr inbounds %struct.things_changed_args, %struct.things_changed_args* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  store i32 %144, i32* %147, align 4
  %148 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %148, i32** %3, align 8
  br label %149

149:                                              ; preds = %119, %108, %84, %61
  %150 = load i32*, i32** %3, align 8
  ret i32* %150
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_dag(i32**, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @svn_fs_base__things_different(i32*, i32*, i32*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_file_checksum(i32**, i32, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @svn_checksum_match(i32*, i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_contents(i32**, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @svn_stream_contents_same2(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
