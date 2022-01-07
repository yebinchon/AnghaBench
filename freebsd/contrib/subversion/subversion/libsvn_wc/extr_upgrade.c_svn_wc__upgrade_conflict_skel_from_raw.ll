; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_svn_wc__upgrade_conflict_skel_from_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_svn_wc__upgrade_conflict_skel_from_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__upgrade_conflict_skel_from_raw(i32** %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i32 %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_3__*, align 8
  %33 = alloca i8*, align 8
  store i32** %0, i32*** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  store i32* null, i32** %25, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = load i32*, i32** %24, align 8
  %37 = load i32*, i32** %24, align 8
  %38 = call i32 @svn_wc__db_get_wcroot(i8** %26, i32* %34, i8* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i8*, i8** %17, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %12
  %43 = load i8*, i8** %19, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %18, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %85

48:                                               ; preds = %45, %42, %12
  store i8* null, i8** %27, align 8
  store i8* null, i8** %28, align 8
  store i8* null, i8** %29, align 8
  %49 = load i32*, i32** %23, align 8
  %50 = call i32* @svn_wc__conflict_skel_create(i32* %49)
  store i32* %50, i32** %25, align 8
  %51 = load i8*, i8** %17, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %26, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = load i32*, i32** %24, align 8
  %57 = call i8* @svn_dirent_join(i8* %54, i8* %55, i32* %56)
  store i8* %57, i8** %27, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i8*, i8** %19, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %26, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = load i32*, i32** %24, align 8
  %65 = call i8* @svn_dirent_join(i8* %62, i8* %63, i32* %64)
  store i8* %65, i8** %28, align 8
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i8*, i8** %18, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i8*, i8** %26, align 8
  %71 = load i8*, i8** %18, align 8
  %72 = load i32*, i32** %24, align 8
  %73 = call i8* @svn_dirent_join(i8* %70, i8* %71, i32* %72)
  store i8* %73, i8** %29, align 8
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32*, i32** %25, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = load i8*, i8** %29, align 8
  %79 = load i8*, i8** %27, align 8
  %80 = load i8*, i8** %28, align 8
  %81 = load i32*, i32** %24, align 8
  %82 = load i32*, i32** %24, align 8
  %83 = call i32 @svn_wc__conflict_skel_add_text_conflict(i32* %75, i32* %76, i8* %77, i8* %78, i8* %79, i8* %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %85

85:                                               ; preds = %74, %45
  %86 = load i8*, i8** %20, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load i32*, i32** %25, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32*, i32** %23, align 8
  %93 = call i32* @svn_wc__conflict_skel_create(i32* %92)
  store i32* %93, i32** %25, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i8*, i8** %26, align 8
  %96 = load i8*, i8** %20, align 8
  %97 = load i32*, i32** %24, align 8
  %98 = call i8* @svn_dirent_join(i8* %95, i8* %96, i32* %97)
  store i8* %98, i8** %30, align 8
  %99 = load i32*, i32** %25, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = load i8*, i8** %30, align 8
  %103 = load i32*, i32** %24, align 8
  %104 = call i32 @apr_hash_make(i32* %103)
  %105 = load i32*, i32** %24, align 8
  %106 = load i32*, i32** %24, align 8
  %107 = call i32 @svn_wc__conflict_skel_add_prop_conflict(i32* %99, i32* %100, i8* %101, i8* %102, i32* null, i32* null, i32* null, i32 %104, i32* %105, i32* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  br label %109

109:                                              ; preds = %94, %85
  %110 = load i8*, i8** %21, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %189

112:                                              ; preds = %109
  %113 = load i32*, i32** %25, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32*, i32** %24, align 8
  %117 = call i32* @svn_wc__conflict_skel_create(i32* %116)
  store i32* %117, i32** %25, align 8
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i8*, i8** %21, align 8
  %120 = load i32, i32* %22, align 4
  %121 = load i32*, i32** %24, align 8
  %122 = call i32* @svn_skel__parse(i8* %119, i32 %120, i32* %121)
  store i32* %122, i32** %31, align 8
  %123 = load i8*, i8** %26, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = load i32*, i32** %24, align 8
  %126 = call i8* @svn_dirent_join(i8* %123, i8* %124, i32* %125)
  store i8* %126, i8** %33, align 8
  %127 = load i32*, i32** %31, align 8
  %128 = load i8*, i8** %33, align 8
  %129 = load i32*, i32** %24, align 8
  %130 = call i32 @svn_dirent_dirname(i8* %128, i32* %129)
  %131 = load i32*, i32** %24, align 8
  %132 = load i32*, i32** %24, align 8
  %133 = call i32 @svn_wc__deserialize_conflict(%struct.TYPE_3__** %32, i32* %127, i32 %130, i32* %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load i32*, i32** %25, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** %24, align 8
  %145 = load i32*, i32** %24, align 8
  %146 = call i32 @svn_wc__conflict_skel_add_tree_conflict(i32* %135, i32* %136, i8* %137, i32 %140, i32 %143, i32* null, i32* %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  switch i32 %150, label %152 [
    i32 128, label %151
    i32 129, label %164
    i32 130, label %176
  ]

151:                                              ; preds = %118
  br label %152

152:                                              ; preds = %118, %151
  %153 = load i32*, i32** %25, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** %24, align 8
  %161 = load i32*, i32** %24, align 8
  %162 = call i32 @svn_wc__conflict_skel_set_op_update(i32* %153, i32* %156, i32* %159, i32* %160, i32* %161)
  %163 = call i32 @SVN_ERR(i32 %162)
  br label %188

164:                                              ; preds = %118
  %165 = load i32*, i32** %25, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32*, i32** %24, align 8
  %173 = load i32*, i32** %24, align 8
  %174 = call i32 @svn_wc__conflict_skel_set_op_switch(i32* %165, i32* %168, i32* %171, i32* %172, i32* %173)
  %175 = call i32 @SVN_ERR(i32 %174)
  br label %188

176:                                              ; preds = %118
  %177 = load i32*, i32** %25, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32*, i32** %24, align 8
  %185 = load i32*, i32** %24, align 8
  %186 = call i32 @svn_wc__conflict_skel_set_op_merge(i32* %177, i32* %180, i32* %183, i32* %184, i32* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  br label %188

188:                                              ; preds = %176, %164, %152
  br label %199

189:                                              ; preds = %109
  %190 = load i32*, i32** %25, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i32*, i32** %25, align 8
  %194 = load i32*, i32** %24, align 8
  %195 = load i32*, i32** %24, align 8
  %196 = call i32 @svn_wc__conflict_skel_set_op_update(i32* %193, i32* null, i32* null, i32* %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  br label %198

198:                                              ; preds = %192, %189
  br label %199

199:                                              ; preds = %198, %188
  %200 = load i32*, i32** %25, align 8
  %201 = load i32**, i32*** %13, align 8
  store i32* %200, i32** %201, align 8
  %202 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %202
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_get_wcroot(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__conflict_skel_create(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_add_text_conflict(i32*, i32*, i8*, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_add_prop_conflict(i32*, i32*, i8*, i8*, i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32* @svn_skel__parse(i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__deserialize_conflict(%struct.TYPE_3__**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_add_tree_conflict(i32*, i32*, i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_update(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_switch(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_merge(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
