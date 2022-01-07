; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz.c_insert_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz.c_insert_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_29__, i32, %struct.TYPE_27__*, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__*, %struct.TYPE_35__* }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_30__ }
%struct.TYPE_26__ = type { i32 }

@authz_rule_literal = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_34__*, %struct.TYPE_31__*, %struct.TYPE_30__*, i32, %struct.TYPE_35__*, i32*, i32*)* @insert_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_path(%struct.TYPE_34__* %0, %struct.TYPE_31__* %1, %struct.TYPE_30__* %2, i32 %3, %struct.TYPE_35__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_35__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_31__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_33__, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %8, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %9, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_35__* %4, %struct.TYPE_35__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 2
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %23 = bitcast %struct.TYPE_30__* %21 to i8*
  %24 = bitcast %struct.TYPE_30__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 3
  %35 = call i32 @combine_access(i32* %34, %struct.TYPE_33__* %17)
  br label %162

36:                                               ; preds = %7
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @authz_rule_literal, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call %struct.TYPE_26__* @ensure_pattern_sub_nodes(%struct.TYPE_31__* %43, i32* %44)
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %95 [
    i32 131, label %50
    i32 132, label %58
    i32 129, label %71
    i32 128, label %79
    i32 130, label %87
  ]

50:                                               ; preds = %46
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call %struct.TYPE_31__* @ensure_node(i32* %54, %struct.TYPE_35__* %55, i32* %56)
  store %struct.TYPE_31__* %57, %struct.TYPE_31__** %15, align 8
  br label %142

58:                                               ; preds = %46
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call %struct.TYPE_31__* @ensure_node(i32* %62, %struct.TYPE_35__* %63, i32* %64)
  store %struct.TYPE_31__* %65, %struct.TYPE_31__** %15, align 8
  %66 = load i32, i32* @TRUE, align 4
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call %struct.TYPE_26__* @ensure_pattern_sub_nodes(%struct.TYPE_31__* %67, i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  br label %142

71:                                               ; preds = %46
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call %struct.TYPE_31__* @ensure_node_in_array(i32* %75, %struct.TYPE_35__* %76, i32* %77)
  store %struct.TYPE_31__* %78, %struct.TYPE_31__** %15, align 8
  br label %142

79:                                               ; preds = %46
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = call %struct.TYPE_31__* @ensure_node_in_array(i32* %83, %struct.TYPE_35__* %84, i32* %85)
  store %struct.TYPE_31__* %86, %struct.TYPE_31__** %15, align 8
  br label %142

87:                                               ; preds = %46
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = call %struct.TYPE_31__* @ensure_node_in_array(i32* %91, %struct.TYPE_35__* %92, i32* %93)
  store %struct.TYPE_31__* %94, %struct.TYPE_31__** %15, align 8
  br label %142

95:                                               ; preds = %46
  %96 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @authz_rule_literal, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %101)
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %95
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @svn_hash__make(i32* %108)
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %15, align 8
  br label %121

112:                                              ; preds = %95
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.TYPE_31__* @svn_hash_gets(i32 %115, i32 %119)
  store %struct.TYPE_31__* %120, %struct.TYPE_31__** %15, align 8
  br label %121

121:                                              ; preds = %112, %107
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %123 = icmp ne %struct.TYPE_31__* %122, null
  br i1 %123, label %141, label %124

124:                                              ; preds = %121
  %125 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %126 = load i32*, i32** %13, align 8
  %127 = call %struct.TYPE_31__* @create_node(%struct.TYPE_35__* %125, i32* %126)
  store %struct.TYPE_31__* %127, %struct.TYPE_31__** %15, align 8
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %140 = call i32 @apr_hash_set(i32 %130, i32 %134, i32 %138, %struct.TYPE_31__* %139)
  br label %141

141:                                              ; preds = %124, %121
  br label %142

142:                                              ; preds = %141, %87, %79, %71, %58, %50
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call %struct.TYPE_32__* @apr_array_push(i32 %145)
  store %struct.TYPE_32__* %146, %struct.TYPE_32__** %16, align 8
  %147 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 1
  store %struct.TYPE_35__* %147, %struct.TYPE_35__** %149, align 8
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 0
  store %struct.TYPE_31__* %150, %struct.TYPE_31__** %152, align 8
  %153 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %156, 1
  %158 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %158, i64 1
  %160 = load i32*, i32** %13, align 8
  %161 = load i32*, i32** %14, align 8
  call void @insert_path(%struct.TYPE_34__* %153, %struct.TYPE_31__* %154, %struct.TYPE_30__* %155, i32 %157, %struct.TYPE_35__* %159, i32* %160, i32* %161)
  br label %162

162:                                              ; preds = %142, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @combine_access(i32*, %struct.TYPE_33__*) #2

declare dso_local %struct.TYPE_26__* @ensure_pattern_sub_nodes(%struct.TYPE_31__*, i32*) #2

declare dso_local %struct.TYPE_31__* @ensure_node(i32*, %struct.TYPE_35__*, i32*) #2

declare dso_local %struct.TYPE_31__* @ensure_node_in_array(i32*, %struct.TYPE_35__*, i32*) #2

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #2

declare dso_local i32 @svn_hash__make(i32*) #2

declare dso_local %struct.TYPE_31__* @svn_hash_gets(i32, i32) #2

declare dso_local %struct.TYPE_31__* @create_node(%struct.TYPE_35__*, i32*) #2

declare dso_local i32 @apr_hash_set(i32, i32, i32, %struct.TYPE_31__*) #2

declare dso_local %struct.TYPE_32__* @apr_array_push(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
