; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_change_file_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_change_file_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.edit_baton*, i64, i64, i32, i32, i64 }
%struct.edit_baton = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_prop_regular_kind = common dso_local global i64 0, align 8
@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@svn_tristate_true = common dso_local global i8* null, align 8
@svn_tristate_false = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@svn_wc_conflict_reason_edited = common dso_local global i32 0, align 4
@svn_wc_conflict_action_replace = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @change_file_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_file_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file_baton*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.edit_baton*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.file_baton*
  store %struct.file_baton* %18, %struct.file_baton** %10, align 8
  %19 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %20 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %19, i32 0, i32 14
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %5, align 8
  br label %222

25:                                               ; preds = %4
  %26 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %27 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_3__* @apr_array_push(i32 %28)
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %11, align 8
  %30 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %31 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @apr_pstrdup(i32 %32, i8* %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %39 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @svn_string_dup(i32* %37, i32 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %45 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %25
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @svn_property_kind2(i8* %49)
  %51 = load i64, i64* @svn_prop_regular_kind, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @mark_file_edited(%struct.file_baton* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  br label %58

58:                                               ; preds = %53, %48, %25
  %59 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %60 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %220, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %66 = call i64 @strcmp(i8* %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %220

68:                                               ; preds = %63
  %69 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %70 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %69, i32 0, i32 9
  %71 = load %struct.edit_baton*, %struct.edit_baton** %70, align 8
  store %struct.edit_baton* %71, %struct.edit_baton** %12, align 8
  %72 = load i8*, i8** @FALSE, align 8
  store i8* %72, i8** %13, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = icmp ne i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %14, align 8
  %78 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %79 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %78, i32 0, i32 11
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i8*, i8** %14, align 8
  store i8* %83, i8** %15, align 8
  br label %108

84:                                               ; preds = %68
  %85 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %86 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %89 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @svn_wc__db_base_get_props(i32** %16, i32 %87, i32 %90, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32*, i32** %16, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %84
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %100 = call i32* @svn_hash_gets(i32* %98, i32 %99)
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i8*, i8** @svn_tristate_true, align 8
  br label %106

104:                                              ; preds = %97, %84
  %105 = load i8*, i8** @svn_tristate_false, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i8* [ %103, %102 ], [ %105, %104 ]
  store i8* %107, i8** %15, align 8
  br label %108

108:                                              ; preds = %106, %82
  %109 = load i8*, i8** %15, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = icmp ne i8* %109, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %114 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %113, i32 0, i32 10
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i8*, i8** @TRUE, align 8
  store i8* %118, i8** %13, align 8
  br label %130

119:                                              ; preds = %112
  %120 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %121 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %124 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** @FALSE, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @svn_wc__internal_file_modified_p(i8** %13, i32 %122, i32 %125, i8* %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  br label %130

130:                                              ; preds = %119, %117
  br label %131

131:                                              ; preds = %130, %108
  %132 = load i8*, i8** %13, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %219

134:                                              ; preds = %131
  %135 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %136 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %134
  %140 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %141 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @svn_wc__conflict_skel_create(i32 %142)
  %144 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %145 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %139, %134
  %147 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %148 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %151 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %154 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @svn_wc_conflict_reason_edited, align 4
  %157 = load i32, i32* @svn_wc_conflict_action_replace, align 4
  %158 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %159 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @svn_wc__conflict_skel_add_tree_conflict(i32 %149, i32 %152, i32 %155, i32 %156, i32 %157, i32* null, i32 %160, i32* %161)
  %163 = call i32 @SVN_ERR(i32 %162)
  %164 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %165 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %168 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %167, i32 0, i32 9
  %169 = load %struct.edit_baton*, %struct.edit_baton** %168, align 8
  %170 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %171 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %174 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %173, i32 0, i32 8
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %177 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %180 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @svn_node_file, align 4
  %183 = load i32, i32* @svn_node_file, align 4
  %184 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %185 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 @complete_conflict(i32 %166, %struct.edit_baton* %169, i32 %172, i32 %175, i32 %178, i32 %181, i32 %182, i32 %183, i32* null, i32 %186, i32* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  %190 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %191 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %194 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %197 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %9, align 8
  %200 = call i32 @svn_wc__db_op_make_copy(i32 %192, i32 %195, i32 %198, i32* null, i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  %202 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %203 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %204 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @svn_node_file, align 4
  %207 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = call i32 @do_notification(%struct.edit_baton* %202, i32 %205, i32 %206, i32 %207, i32* %208)
  %210 = load i8*, i8** @TRUE, align 8
  %211 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %212 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %211, i32 0, i32 2
  store i8* %210, i8** %212, align 8
  %213 = load i8*, i8** @FALSE, align 8
  %214 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %215 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** @TRUE, align 8
  %217 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %218 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 8
  br label %219

219:                                              ; preds = %146, %131
  br label %220

220:                                              ; preds = %219, %63, %58
  %221 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %221, i32** %5, align 8
  br label %222

222:                                              ; preds = %220, %23
  %223 = load i32*, i32** %5, align 8
  ret i32* %223
}

declare dso_local %struct.TYPE_3__* @apr_array_push(i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @svn_string_dup(i32*, i32) #1

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_file_edited(%struct.file_baton*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_wc__db_base_get_props(i32**, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_wc__internal_file_modified_p(i8**, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_create(i32) #1

declare dso_local i32 @svn_wc__conflict_skel_add_tree_conflict(i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @complete_conflict(i32, %struct.edit_baton*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_op_make_copy(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @do_notification(%struct.edit_baton*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
