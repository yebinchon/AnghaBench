; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_check_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_check_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32, i32 }

@SVN_WC_CONFLICT_REASON_NONE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_wc_conflict_action_add = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_moved_here = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_added = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_replaced = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_action_edit = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_obstructed = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_conflict_action_delete = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_edited = common dso_local global i64 0, align 8
@svn_wc_conflict_action_replace = common dso_local global i32 0, align 4
@SVN_ERR_WC_FOUND_CONFLICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unexpected attempt to add a node at path '%s'\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Unexpected attempt to edit, delete, or replace a node at path '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.edit_baton*, i8*, i32, i32, i32, i32, i32*, i32*)* @check_tree_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_tree_conflict(i32** %0, %struct.edit_baton* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.edit_baton*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i32** %0, i32*** %11, align 8
  store %struct.edit_baton* %1, %struct.edit_baton** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load i64, i64* @SVN_WC_CONFLICT_REASON_NONE, align 8
  store i64 %24, i64* %20, align 8
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %21, align 4
  store i8* null, i8** %22, align 8
  %26 = load i32**, i32*** %11, align 8
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %14, align 4
  switch i32 %27, label %134 [
    i32 137, label %28
    i32 131, label %28
    i32 135, label %28
    i32 134, label %59
    i32 132, label %75
    i32 130, label %75
    i32 128, label %130
    i32 133, label %130
    i32 129, label %130
    i32 136, label %132
  ]

28:                                               ; preds = %9, %9, %9
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* @svn_wc_conflict_action_add, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @SVN_ERR_ASSERT(i32 %35)
  %37 = load i32, i32* %14, align 4
  %38 = icmp eq i32 %37, 137
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %41 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %13, align 8
  %44 = load i32*, i32** %19, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = call i32 @svn_wc__db_scan_addition(i32* %14, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %42, i8* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  br label %48

48:                                               ; preds = %39, %31
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, 131
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i64, i64* @svn_wc_conflict_reason_moved_here, align 8
  store i64 %52, i64* %20, align 8
  br label %55

53:                                               ; preds = %48
  %54 = load i64, i64* @svn_wc_conflict_reason_added, align 8
  store i64 %54, i64* %20, align 8
  br label %55

55:                                               ; preds = %53, %51
  br label %58

56:                                               ; preds = %28
  %57 = load i64, i64* @svn_wc_conflict_reason_replaced, align 8
  store i64 %57, i64* %20, align 8
  br label %58

58:                                               ; preds = %56, %55
  br label %134

59:                                               ; preds = %9
  %60 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %61 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = call i32 @svn_wc__db_base_moved_to(i32* null, i32* null, i32* null, i8** %22, i32 %62, i8* %63, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i8*, i8** %22, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  store i64 %71, i64* %20, align 8
  br label %74

72:                                               ; preds = %59
  %73 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  store i64 %73, i64* %20, align 8
  br label %74

74:                                               ; preds = %72, %70
  br label %134

75:                                               ; preds = %9, %9
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @svn_wc_conflict_action_edit, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load i8*, i8** %13, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = call i32 @svn_io_check_path(i8* %83, i32* %23, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* @svn_node_none, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* @svn_wc_conflict_reason_obstructed, align 8
  store i64 %95, i64* %20, align 8
  br label %134

96:                                               ; preds = %90, %82
  br label %97

97:                                               ; preds = %96, %79
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %10, align 8
  br label %219

99:                                               ; preds = %75
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @svn_wc_conflict_action_delete, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @SVN_ERR_ASSERT(i32 %103)
  %105 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %106 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* @FALSE, align 4
  %110 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %111 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %114 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %19, align 8
  %117 = call i32 @svn_wc__node_has_local_mods(i32* %21, i32* null, i32 %107, i8* %108, i32 %109, i32 %112, i32 %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32, i32* %21, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %99
  %122 = load i32, i32* %14, align 4
  %123 = icmp eq i32 %122, 134
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  store i64 %125, i64* %20, align 8
  br label %128

126:                                              ; preds = %121
  %127 = load i64, i64* @svn_wc_conflict_reason_edited, align 8
  store i64 %127, i64* %20, align 8
  br label %128

128:                                              ; preds = %126, %124
  br label %129

129:                                              ; preds = %128, %99
  br label %134

130:                                              ; preds = %9, %9, %9
  %131 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %131, i32** %10, align 8
  br label %219

132:                                              ; preds = %9
  %133 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %134

134:                                              ; preds = %9, %132, %129, %94, %74, %58
  %135 = load i64, i64* %20, align 8
  %136 = load i64, i64* @SVN_WC_CONFLICT_REASON_NONE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %139, i32** %10, align 8
  br label %219

140:                                              ; preds = %134
  %141 = load i64, i64* %20, align 8
  %142 = load i64, i64* @svn_wc_conflict_reason_edited, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %160, label %144

144:                                              ; preds = %140
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* @svn_wc_conflict_reason_obstructed, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %160, label %148

148:                                              ; preds = %144
  %149 = load i64, i64* %20, align 8
  %150 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = load i64, i64* %20, align 8
  %154 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load i64, i64* %20, align 8
  %158 = load i64, i64* @svn_wc_conflict_reason_replaced, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %180

160:                                              ; preds = %156, %152, %148, %144, %140
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* @svn_wc_conflict_action_edit, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %160
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* @svn_wc_conflict_action_delete, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* @svn_wc_conflict_action_replace, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load i32, i32* @SVN_ERR_WC_FOUND_CONFLICT, align 4
  %174 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %175 = load i8*, i8** %13, align 8
  %176 = load i32*, i32** %19, align 8
  %177 = call i32 @svn_dirent_local_style(i8* %175, i32* %176)
  %178 = call i32* @svn_error_createf(i32 %173, i32* null, i32 %174, i32 %177)
  store i32* %178, i32** %10, align 8
  br label %219

179:                                              ; preds = %168, %164, %160
  br label %201

180:                                              ; preds = %156
  %181 = load i64, i64* %20, align 8
  %182 = load i64, i64* @svn_wc_conflict_reason_added, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i64, i64* %20, align 8
  %186 = load i64, i64* @svn_wc_conflict_reason_moved_here, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %184, %180
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* @svn_wc_conflict_action_add, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load i32, i32* @SVN_ERR_WC_FOUND_CONFLICT, align 4
  %194 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %195 = load i8*, i8** %13, align 8
  %196 = load i32*, i32** %19, align 8
  %197 = call i32 @svn_dirent_local_style(i8* %195, i32* %196)
  %198 = call i32* @svn_error_createf(i32 %193, i32* null, i32 %194, i32 %197)
  store i32* %198, i32** %10, align 8
  br label %219

199:                                              ; preds = %188
  br label %200

200:                                              ; preds = %199, %184
  br label %201

201:                                              ; preds = %200, %179
  %202 = load i32*, i32** %18, align 8
  %203 = call i32* @svn_wc__conflict_skel_create(i32* %202)
  %204 = load i32**, i32*** %11, align 8
  store i32* %203, i32** %204, align 8
  %205 = load i32**, i32*** %11, align 8
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %208 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %13, align 8
  %211 = load i64, i64* %20, align 8
  %212 = load i32, i32* %17, align 4
  %213 = load i8*, i8** %22, align 8
  %214 = load i32*, i32** %18, align 8
  %215 = load i32*, i32** %19, align 8
  %216 = call i32 @svn_wc__conflict_skel_add_tree_conflict(i32* %206, i32 %209, i8* %210, i64 %211, i32 %212, i8* %213, i32* %214, i32* %215)
  %217 = call i32 @SVN_ERR(i32 %216)
  %218 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %218, i32** %10, align 8
  br label %219

219:                                              ; preds = %201, %192, %172, %138, %130, %97
  %220 = load i32*, i32** %10, align 8
  ret i32* %220
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_scan_addition(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_base_moved_to(i32*, i32*, i32*, i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__node_has_local_mods(i32*, i32*, i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_wc__conflict_skel_create(i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_add_tree_conflict(i32*, i32, i8*, i64, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
