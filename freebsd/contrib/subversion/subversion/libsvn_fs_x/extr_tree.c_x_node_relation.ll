; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_node_relation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_node_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32 }

@svn_fs_node_unrelated = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_node_unchanged = common dso_local global i32 0, align 4
@svn_fs_node_common_ancestor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*, i8*, %struct.TYPE_5__*, i8*, i32*)* @x_node_relation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x_node_relation(i32* %0, %struct.TYPE_5__* %1, i8* %2, %struct.TYPE_5__* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %11, align 8
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
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load i32, i32* @svn_fs_node_unrelated, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %7, align 8
  br label %171

77:                                               ; preds = %63
  %78 = load i32, i32* %19, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %131

80:                                               ; preds = %77
  %81 = load i32, i32* %20, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %131

83:                                               ; preds = %80
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @strcmp(i32 %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %93, %88, %83
  %103 = phi i1 [ false, %88 ], [ false, %83 ], [ %101, %93 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %21, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %102
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
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

125:                                              ; preds = %120, %112, %102
  %126 = load i32, i32* @svn_fs_node_common_ancestor, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = load i32*, i32** %8, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %130, i32** %7, align 8
  br label %171

131:                                              ; preds = %80, %77
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @svn_fs_x__get_temp_dag_node(i32** %14, %struct.TYPE_5__* %132, i8* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  %137 = load i32*, i32** %14, align 8
  %138 = call i32* @svn_fs_x__dag_get_id(i32* %137)
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %15, align 4
  %140 = load i32*, i32** %14, align 8
  %141 = call i32* @svn_fs_x__dag_get_node_id(i32* %140)
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %17, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @svn_fs_x__get_temp_dag_node(i32** %14, %struct.TYPE_5__* %143, i8* %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load i32*, i32** %14, align 8
  %149 = call i32* @svn_fs_x__dag_get_id(i32* %148)
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %16, align 4
  %151 = load i32*, i32** %14, align 8
  %152 = call i32* @svn_fs_x__dag_get_node_id(i32* %151)
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %18, align 4
  %154 = call i64 @svn_fs_x__id_eq(i32* %15, i32* %16)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %131
  %157 = load i32, i32* @svn_fs_node_unchanged, align 4
  %158 = load i32*, i32** %8, align 8
  store i32 %157, i32* %158, align 4
  br label %169

159:                                              ; preds = %131
  %160 = call i64 @svn_fs_x__id_eq(i32* %17, i32* %18)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* @svn_fs_node_common_ancestor, align 4
  %164 = load i32*, i32** %8, align 8
  store i32 %163, i32* %164, align 4
  br label %168

165:                                              ; preds = %159
  %166 = load i32, i32* @svn_fs_node_unrelated, align 4
  %167 = load i32*, i32** %8, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %162
  br label %169

169:                                              ; preds = %168, %156
  %170 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %170, i32** %7, align 8
  br label %171

171:                                              ; preds = %169, %127, %73
  %172 = load i32*, i32** %7, align 8
  ret i32* %172
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_temp_dag_node(i32**, %struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i32* @svn_fs_x__dag_get_id(i32*) #1

declare dso_local i32* @svn_fs_x__dag_get_node_id(i32*) #1

declare dso_local i64 @svn_fs_x__id_eq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
