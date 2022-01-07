; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_remove_node_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_remove_node_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i8*, i64, i8*, i64, %struct.revision_baton*, i32, i32 }
%struct.revision_baton = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_node_action_add = common dso_local global i64 0, align 8
@svn_node_action_replace = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_prop_regular_kind = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @remove_node_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @remove_node_props(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.node_baton*, align 8
  %5 = alloca %struct.revision_baton*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.node_baton*
  store %struct.node_baton* %14, %struct.node_baton** %4, align 8
  %15 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %16 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %15, i32 0, i32 4
  %17 = load %struct.revision_baton*, %struct.revision_baton** %16, align 8
  store %struct.revision_baton* %17, %struct.revision_baton** %5, align 8
  %18 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %19 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %18, i32 0, i32 4
  %20 = load %struct.revision_baton*, %struct.revision_baton** %19, align 8
  %21 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %24 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %27 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ARE_VALID_COPY_ARGS(i8* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %33 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %9, align 8
  %35 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %36 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  br label %95

38:                                               ; preds = %1
  %39 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %40 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %89, label %43

43:                                               ; preds = %38
  %44 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %45 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %50 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ARE_VALID_COPY_ARGS(i8* %48, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %43
  %57 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %58 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @svn_node_dir, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %64 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  br label %82

68:                                               ; preds = %56
  %69 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %70 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %75 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @svn_relpath_basename(i8* %76, i32* null)
  %78 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %79 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i8* @svn_relpath_join(i8* %73, i32 %77, i32* %80)
  br label %82

82:                                               ; preds = %68, %62
  %83 = phi i8* [ %67, %62 ], [ %81, %68 ]
  store i8* %83, i8** %9, align 8
  %84 = load %struct.revision_baton*, %struct.revision_baton** %5, align 8
  %85 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %10, align 4
  br label %94

89:                                               ; preds = %43, %38
  %90 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %91 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %9, align 8
  %93 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %89, %82
  br label %95

95:                                               ; preds = %94, %31
  %96 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %97 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @svn_node_action_add, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %103 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @svn_node_action_replace, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %101, %95
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i64 @ARE_VALID_COPY_ARGS(i8* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %113, i32** %2, align 8
  br label %172

114:                                              ; preds = %107, %101
  %115 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %116 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @svn_node_file, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %114
  %121 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %122 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %121, i32 0, i32 4
  %123 = load %struct.revision_baton*, %struct.revision_baton** %122, align 8
  %124 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @svn_ra_get_file(i32 %127, i8* %128, i32 %129, i32* null, i32* null, i32** %8, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  br label %146

133:                                              ; preds = %114
  %134 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %135 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %134, i32 0, i32 4
  %136 = load %struct.revision_baton*, %struct.revision_baton** %135, align 8
  %137 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @svn_ra_get_dir2(i32 %140, i32* null, i32* null, i32** %8, i8* %141, i32 %142, i32 0, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  br label %146

146:                                              ; preds = %133, %120
  %147 = load i32*, i32** %6, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = call i32* @apr_hash_first(i32* %147, i32* %148)
  store i32* %149, i32** %7, align 8
  br label %150

150:                                              ; preds = %167, %146
  %151 = load i32*, i32** %7, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %170

153:                                              ; preds = %150
  %154 = load i32*, i32** %7, align 8
  %155 = call i8* @apr_hash_this_key(i32* %154)
  store i8* %155, i8** %11, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = call i64 @svn_property_kind2(i8* %156)
  store i64 %157, i64* %12, align 8
  %158 = load i64, i64* %12, align 8
  %159 = load i64, i64* @svn_prop_regular_kind, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %153
  %162 = load %struct.node_baton*, %struct.node_baton** %4, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = call i32 @set_node_property(%struct.node_baton* %162, i8* %163, i32* null)
  %165 = call i32 @SVN_ERR(i32 %164)
  br label %166

166:                                              ; preds = %161, %153
  br label %167

167:                                              ; preds = %166
  %168 = load i32*, i32** %7, align 8
  %169 = call i32* @apr_hash_next(i32* %168)
  store i32* %169, i32** %7, align 8
  br label %150

170:                                              ; preds = %150
  %171 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %171, i32** %2, align 8
  br label %172

172:                                              ; preds = %170, %112
  %173 = load i32*, i32** %2, align 8
  ret i32* %173
}

declare dso_local i64 @ARE_VALID_COPY_ARGS(i8*, i32) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_relpath_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_file(i32, i8*, i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @svn_ra_get_dir2(i32, i32*, i32*, i32**, i8*, i32, i32, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i32 @set_node_property(%struct.node_baton*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
