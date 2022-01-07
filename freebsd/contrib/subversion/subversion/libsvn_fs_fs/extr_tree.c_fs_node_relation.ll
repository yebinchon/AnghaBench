; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_node_relation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_node_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i64 }

@svn_fs_node_unrelated = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_node_unchanged = common dso_local global i32 0, align 4
@svn_fs_node_common_ancestor = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_9__*, i8*, %struct.TYPE_9__*, i8*, i32*)* @fs_node_relation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_node_relation(i32* %0, %struct.TYPE_9__* %1, i8* %2, %struct.TYPE_9__* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca %struct.TYPE_10__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %6
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i1 [ false, %27 ], [ %38, %33 ]
  br label %41

41:                                               ; preds = %39, %6
  %42 = phi i1 [ true, %6 ], [ %40, %39 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %19, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %41
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %55, %49
  %62 = phi i1 [ false, %49 ], [ %60, %55 ]
  br label %63

63:                                               ; preds = %61, %41
  %64 = phi i1 [ true, %41 ], [ %62, %61 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %20, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @strcmp(i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %75, %70, %63
  %85 = phi i1 [ false, %70 ], [ false, %63 ], [ %83, %75 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %21, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %84
  %95 = load i32, i32* @svn_fs_node_unrelated, align 4
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %97, i32** %7, align 8
  br label %185

98:                                               ; preds = %84
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %98
  %102 = load i32, i32* %20, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %101
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load i32, i32* %21, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* @svn_fs_node_unchanged, align 4
  br label %127

125:                                              ; preds = %120, %112, %104
  %126 = load i32, i32* @svn_fs_node_common_ancestor, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = load i32*, i32** %8, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %130, i32** %7, align 8
  br label %185

131:                                              ; preds = %101, %98
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @get_dag(i32** %14, %struct.TYPE_9__* %132, i8* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  %137 = load i32*, i32** %14, align 8
  %138 = call i32* @svn_fs_fs__dag_get_id(i32* %137)
  store i32* %138, i32** %15, align 8
  %139 = load i32*, i32** %15, align 8
  %140 = call %struct.TYPE_10__* @svn_fs_fs__id_node_id(i32* %139)
  %141 = bitcast %struct.TYPE_10__* %17 to i8*
  %142 = bitcast %struct.TYPE_10__* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 %142, i64 8, i1 false)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @get_dag(i32** %14, %struct.TYPE_9__* %143, i8* %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load i32*, i32** %14, align 8
  %149 = call i32* @svn_fs_fs__dag_get_id(i32* %148)
  store i32* %149, i32** %16, align 8
  %150 = load i32*, i32** %16, align 8
  %151 = call %struct.TYPE_10__* @svn_fs_fs__id_node_id(i32* %150)
  %152 = bitcast %struct.TYPE_10__* %18 to i8*
  %153 = bitcast %struct.TYPE_10__* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 8, i1 false)
  %154 = call i32 @svn_fs_fs__id_part_eq(%struct.TYPE_10__* %17, %struct.TYPE_10__* %18)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %131
  %157 = load i32, i32* @svn_fs_node_unrelated, align 4
  %158 = load i32*, i32** %8, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %159, i32** %7, align 8
  br label %185

160:                                              ; preds = %131
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @svn_fs_node_unrelated, align 4
  %170 = load i32*, i32** %8, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %171, i32** %7, align 8
  br label %185

172:                                              ; preds = %163, %160
  %173 = load i32*, i32** %15, align 8
  %174 = load i32*, i32** %16, align 8
  %175 = call i64 @svn_fs_fs__id_eq(i32* %173, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* @svn_fs_node_unchanged, align 4
  %179 = load i32*, i32** %8, align 8
  store i32 %178, i32* %179, align 4
  br label %183

180:                                              ; preds = %172
  %181 = load i32, i32* @svn_fs_node_common_ancestor, align 4
  %182 = load i32*, i32** %8, align 8
  store i32 %181, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %184, i32** %7, align 8
  br label %185

185:                                              ; preds = %183, %168, %156, %127, %94
  %186 = load i32*, i32** %7, align 8
  ret i32* %186
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_dag(i32**, %struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i32* @svn_fs_fs__dag_get_id(i32*) #1

declare dso_local %struct.TYPE_10__* @svn_fs_fs__id_node_id(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @svn_fs_fs__id_part_eq(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i64 @svn_fs_fs__id_eq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
