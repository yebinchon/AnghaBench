; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_block_read_changes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_block_read_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64, i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64, i64, i32, i32**, i64 }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_FS_X__CHANGES_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_26__**, %struct.TYPE_25__*, i32*, %struct.TYPE_21__*, %struct.TYPE_24__*, i64, i32*, i32*)* @block_read_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @block_read_changes(%struct.TYPE_26__** %0, %struct.TYPE_25__* %1, i32* %2, %struct.TYPE_21__* %3, %struct.TYPE_24__* %4, i64 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_26__**, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_20__, align 8
  %21 = alloca %struct.TYPE_23__, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_26__** %0, %struct.TYPE_26__*** %10, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_24__* %4, %struct.TYPE_24__** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %18, align 8
  %28 = load i64, i64* %15, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %35

34:                                               ; preds = %8
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i64 [ %33, %30 ], [ 0, %34 ]
  store i64 %36, i64* %22, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i64 [ %42, %39 ], [ 0, %43 ]
  store i64 %45, i64* %23, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = call i32 @SVN_ERR_ASSERT(i32 %50)
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @svn_fs_x__get_revnum(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  store i32 %58, i32* %59, align 8
  %60 = load i64, i64* %22, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %44
  %65 = load i64, i64* @FALSE, align 8
  store i64 %65, i64* %24, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = call i32 @svn_cache__has_key(i64* %24, i32 %68, %struct.TYPE_20__* %20, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i64, i64* %24, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %9, align 8
  br label %167

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %44
  %78 = load i64, i64* %15, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* %22, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80, %77
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @read_item(i32** %19, %struct.TYPE_25__* %84, i32* %85, %struct.TYPE_21__* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  br label %90

90:                                               ; preds = %83, %80
  %91 = load i32*, i32** %12, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %23, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @svn_fs_x__rev_file_seek(i32* %91, i32* null, i64 %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @svn_fs_x__rev_file_stream(i32** %19, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %103 = load i32*, i32** %19, align 8
  %104 = load i64, i64* @SVN_FS_X__CHANGES_BLOCK_SIZE, align 8
  %105 = load i32*, i32** %16, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = call i32 @svn_fs_x__read_changes(%struct.TYPE_26__** %102, i32* %103, i64 %104, i32* %105, i32* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @svn_fs_x__rev_file_offset(i64* %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %117, %115
  store i64 %118, i64* %116, align 8
  %119 = load i64, i64* %23, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 4
  store i64 %119, i64* %120, align 8
  %121 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  store i64 %124, i64* %125, align 8
  %126 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i32**
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 3
  store i32** %130, i32*** %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SVN_FS_X__CHANGES_BLOCK_SIZE, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %144, label %136

136:                                              ; preds = %90
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp sge i64 %139, %142
  br label %144

144:                                              ; preds = %136, %90
  %145 = phi i1 [ true, %90 ], [ %143, %136 ]
  %146 = zext i1 %145 to i32
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  store i32 %146, i32* %147, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %17, align 8
  %152 = call i32 @svn_cache__set(i32 %150, %struct.TYPE_20__* %20, %struct.TYPE_23__* %21, i32* %151)
  %153 = call i32 @SVN_ERR(i32 %152)
  %154 = load i64, i64* %15, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %144
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %156, %144
  %166 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %166, i32** %9, align 8
  br label %167

167:                                              ; preds = %165, %74
  %168 = load i32*, i32** %9, align 8
  ret i32* %168
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_fs_x__get_revnum(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__has_key(i64*, i32, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @read_item(i32**, %struct.TYPE_25__*, i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @svn_fs_x__rev_file_seek(i32*, i32*, i64) #1

declare dso_local i32 @svn_fs_x__rev_file_stream(i32**, i32*) #1

declare dso_local i32 @svn_fs_x__read_changes(%struct.TYPE_26__**, i32*, i64, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__rev_file_offset(i64*, i32*) #1

declare dso_local i32 @svn_cache__set(i32, %struct.TYPE_20__*, %struct.TYPE_23__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
