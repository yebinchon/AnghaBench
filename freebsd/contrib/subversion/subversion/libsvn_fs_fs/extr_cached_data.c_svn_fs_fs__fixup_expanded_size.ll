; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__fixup_expanded_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__fixup_expanded_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_checksum_md5 = common dso_local global i8* null, align 8
@svn_checksum_sha1 = common dso_local global i8* null, align 8
@svn_fs_fs__rep_plain = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__fixup_expanded_size(i32* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %15, %3
  %26 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %26, i32** %4, align 8
  br label %121

27:                                               ; preds = %20
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 7
  %30 = call i32 @svn_fs_fs__id_txn_used(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** @svn_checksum_md5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call %struct.TYPE_14__* @svn_checksum_empty_checksum(i8* %35, i32* %36)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %9, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = load i8*, i8** @svn_checksum_md5, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = call i32 @svn_checksum_match(%struct.TYPE_14__* %44, %struct.TYPE_14__* %8)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %27
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %53, i32** %4, align 8
  br label %121

54:                                               ; preds = %27
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load i8*, i8** @svn_checksum_sha1, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call %struct.TYPE_14__* @svn_checksum_empty_checksum(i8* %60, i32* %61)
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %12, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load i8*, i8** @svn_checksum_sha1, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %70 = call i32 @svn_checksum_match(%struct.TYPE_14__* %69, %struct.TYPE_14__* %8)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %59
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %4, align 8
  br label %121

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79, %54
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 4
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %4, align 8
  br label %121

87:                                               ; preds = %80
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @open_and_seek_revision(%struct.TYPE_12__** %10, i32* %88, i32 %91, i32 %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @svn_fs_fs__read_rep_header(%struct.TYPE_13__** %11, i32 %100, i32* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = call i32 @svn_fs_fs__close_revision_file(%struct.TYPE_12__* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @svn_fs_fs__rep_plain, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %87
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %113, %87
  %120 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %120, i32** %4, align 8
  br label %121

121:                                              ; preds = %119, %85, %72, %47, %25
  %122 = load i32*, i32** %4, align 8
  ret i32* %122
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_fs_fs__id_txn_used(i32*) #1

declare dso_local %struct.TYPE_14__* @svn_checksum_empty_checksum(i8*, i32*) #1

declare dso_local i32 @svn_checksum_match(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_and_seek_revision(%struct.TYPE_12__**, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__read_rep_header(%struct.TYPE_13__**, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__close_revision_file(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
