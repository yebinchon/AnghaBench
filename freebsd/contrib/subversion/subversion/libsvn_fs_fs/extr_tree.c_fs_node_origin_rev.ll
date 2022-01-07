; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_node_origin_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_node_origin_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_13__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, %struct.TYPE_14__*, i8*, i32*)* @fs_node_origin_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_node_origin_rev(i64* %0, %struct.TYPE_14__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i8* @svn_fs__canonicalize_abspath(i8* %26, i32* %27)
  store i8* %28, i8** %8, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @svn_fs_fs__node_id(i32** %11, %struct.TYPE_14__* %29, i8* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = call %struct.TYPE_15__* @svn_fs_fs__id_node_id(i32* %34)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %13, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40, %4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %6, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %5, align 8
  br label %162

51:                                               ; preds = %40
  %52 = load i32*, i32** %10, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @svn_fs_fs__get_node_origin(i32** %12, i32* %52, %struct.TYPE_15__* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i32*, i32** %12, align 8
  %61 = call i64 @svn_fs_fs__id_rev(i32* %60)
  %62 = load i64*, i64** %6, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %63, i32** %5, align 8
  br label %162

64:                                               ; preds = %51
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %14, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32* @svn_pool_create(i32* %66)
  store i32* %67, i32** %15, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32* @svn_pool_create(i32* %68)
  store i32* %69, i32** %16, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call %struct.TYPE_13__* @svn_stringbuf_create(i8* %70, i32* %71)
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %17, align 8
  %73 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %73, i64* %18, align 8
  br label %74

74:                                               ; preds = %64, %99
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %22, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @svn_pool_clear(i32* %78)
  %80 = load i64, i64* %18, align 8
  %81 = call i64 @SVN_IS_VALID_REVNUM(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i32*, i32** %10, align 8
  %85 = load i64, i64* %18, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @svn_fs_fs__revision_root(%struct.TYPE_14__** %14, i32* %84, i64 %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  br label %89

89:                                               ; preds = %83, %74
  %90 = load i32*, i32** %10, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %92 = load i8*, i8** %22, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = call i32 @prev_location(i8** %22, i64* %21, i32* %90, %struct.TYPE_14__* %91, i8* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i8*, i8** %22, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %89
  br label %104

99:                                               ; preds = %89
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %101 = load i8*, i8** %22, align 8
  %102 = call i32 @svn_stringbuf_set(%struct.TYPE_13__* %100, i8* %101)
  %103 = load i64, i64* %21, align 8
  store i64 %103, i64* %18, align 8
  br label %74

104:                                              ; preds = %98
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 @svn_fs_fs__node_id(i32** %20, %struct.TYPE_14__* %105, i8* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  br label %112

112:                                              ; preds = %134, %104
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @svn_pool_clear(i32* %113)
  %115 = load i32*, i32** %10, align 8
  %116 = load i32*, i32** %20, align 8
  %117 = load i32*, i32** %15, align 8
  %118 = call i32 @svn_fs_fs__dag_get_node(i32** %19, i32* %115, i32* %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i32*, i32** %16, align 8
  %121 = call i32 @svn_pool_clear(i32* %120)
  %122 = load i32*, i32** %19, align 8
  %123 = call i32 @svn_fs_fs__dag_get_predecessor_id(i32** %20, i32* %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  %125 = load i32*, i32** %20, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %112
  %128 = load i32*, i32** %20, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = call i32* @svn_fs_fs__id_copy(i32* %128, i32* %129)
  br label %132

131:                                              ; preds = %112
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i32* [ %130, %127 ], [ null, %131 ]
  store i32* %133, i32** %20, align 8
  br label %134

134:                                              ; preds = %132
  %135 = load i32*, i32** %20, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %112, label %137

137:                                              ; preds = %134
  %138 = load i64*, i64** %6, align 8
  %139 = load i32*, i32** %19, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @svn_fs_fs__dag_get_revision(i64* %138, i32* %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %137
  %149 = load i32*, i32** %10, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %151 = load i32*, i32** %19, align 8
  %152 = call i32 @svn_fs_fs__dag_get_id(i32* %151)
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @svn_fs_fs__set_node_origin(i32* %149, %struct.TYPE_15__* %150, i32 %152, i32* %153)
  %155 = call i32 @SVN_ERR(i32 %154)
  br label %156

156:                                              ; preds = %148, %137
  %157 = load i32*, i32** %15, align 8
  %158 = call i32 @svn_pool_destroy(i32* %157)
  %159 = load i32*, i32** %16, align 8
  %160 = call i32 @svn_pool_destroy(i32* %159)
  %161 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %161, i32** %5, align 8
  br label %162

162:                                              ; preds = %156, %59, %45
  %163 = load i32*, i32** %5, align 8
  ret i32* %163
}

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__node_id(i32**, %struct.TYPE_14__*, i8*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_fs_fs__id_node_id(i32*) #1

declare dso_local i32 @svn_fs_fs__get_node_origin(i32**, i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @svn_fs_fs__id_rev(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_13__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_fs_fs__revision_root(%struct.TYPE_14__**, i32*, i64, i32*) #1

declare dso_local i32 @prev_location(i8**, i64*, i32*, %struct.TYPE_14__*, i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_set(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @svn_fs_fs__dag_get_node(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_predecessor_id(i32**, i32*) #1

declare dso_local i32* @svn_fs_fs__id_copy(i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_revision(i64*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__set_node_origin(i32*, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_id(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
