; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_process_actions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_process_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev2_edit_baton = type { i32, i32, i32 (i32, i8*, i32*)* }
%struct.change_node = type { i64, i64, i32, i32*, i32, i32*, i32, i32*, i64, i64 }

@svn_node_unknown = common dso_local global i64 0, align 8
@RESTRUCTURE_DELETE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@RESTRUCTURE_ADD_ABSENT = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@RESTRUCTURE_ADD = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ev2_edit_baton*, i8*, %struct.change_node*, i32*)* @process_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @process_actions(%struct.ev2_edit_baton* %0, i8* %1, %struct.change_node* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ev2_edit_baton*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.change_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.ev2_edit_baton* %0, %struct.ev2_edit_baton** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.change_node* %2, %struct.change_node** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %16 = load i64, i64* @svn_node_unknown, align 8
  store i64 %16, i64* %13, align 8
  %17 = load %struct.change_node*, %struct.change_node** %8, align 8
  %18 = icmp ne %struct.change_node* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load %struct.change_node*, %struct.change_node** %8, align 8
  %22 = getelementptr inbounds %struct.change_node, %struct.change_node* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %4
  %26 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %27 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %26, i32 0, i32 2
  %28 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %27, align 8
  %29 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %30 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 %28(i32 %31, i8* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  br label %36

36:                                               ; preds = %25, %4
  %37 = load %struct.change_node*, %struct.change_node** %8, align 8
  %38 = getelementptr inbounds %struct.change_node, %struct.change_node* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %44 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.change_node*, %struct.change_node** %8, align 8
  %48 = getelementptr inbounds %struct.change_node, %struct.change_node* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @svn_editor_delete(i32 %45, i8* %46, i32 %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %5, align 8
  br label %235

53:                                               ; preds = %36
  %54 = load %struct.change_node*, %struct.change_node** %8, align 8
  %55 = getelementptr inbounds %struct.change_node, %struct.change_node* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RESTRUCTURE_ADD_ABSENT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %61 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.change_node*, %struct.change_node** %8, align 8
  %65 = getelementptr inbounds %struct.change_node, %struct.change_node* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.change_node*, %struct.change_node** %8, align 8
  %68 = getelementptr inbounds %struct.change_node, %struct.change_node* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @svn_editor_add_absent(i32 %62, i8* %63, i64 %66, i32 %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %5, align 8
  br label %235

73:                                               ; preds = %53
  %74 = load %struct.change_node*, %struct.change_node** %8, align 8
  %75 = getelementptr inbounds %struct.change_node, %struct.change_node* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %73
  %79 = load i64, i64* @svn_node_file, align 8
  store i64 %79, i64* %13, align 8
  %80 = load %struct.change_node*, %struct.change_node** %8, align 8
  %81 = getelementptr inbounds %struct.change_node, %struct.change_node* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load %struct.change_node*, %struct.change_node** %8, align 8
  %86 = getelementptr inbounds %struct.change_node, %struct.change_node* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @svn_checksum_sha1, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @svn_io_file_checksum2(i32** %12, i32* %87, i32 %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load %struct.change_node*, %struct.change_node** %8, align 8
  %93 = getelementptr inbounds %struct.change_node, %struct.change_node* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @svn_stream_open_readonly(i32** %11, i32* %94, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  br label %105

99:                                               ; preds = %78
  %100 = load i32*, i32** %9, align 8
  %101 = call i32* @svn_stream_empty(i32* %100)
  store i32* %101, i32** %11, align 8
  %102 = load i32, i32* @svn_checksum_sha1, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = call i32* @svn_checksum_empty_checksum(i32 %102, i32* %103)
  store i32* %104, i32** %12, align 8
  br label %105

105:                                              ; preds = %99, %84
  br label %106

106:                                              ; preds = %105, %73
  %107 = load %struct.change_node*, %struct.change_node** %8, align 8
  %108 = getelementptr inbounds %struct.change_node, %struct.change_node* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.change_node*, %struct.change_node** %8, align 8
  %113 = getelementptr inbounds %struct.change_node, %struct.change_node* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %13, align 8
  %115 = load %struct.change_node*, %struct.change_node** %8, align 8
  %116 = getelementptr inbounds %struct.change_node, %struct.change_node* %115, i32 0, i32 7
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %10, align 8
  br label %118

118:                                              ; preds = %111, %106
  %119 = load %struct.change_node*, %struct.change_node** %8, align 8
  %120 = getelementptr inbounds %struct.change_node, %struct.change_node* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @RESTRUCTURE_ADD, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %198

124:                                              ; preds = %118
  %125 = load %struct.change_node*, %struct.change_node** %8, align 8
  %126 = getelementptr inbounds %struct.change_node, %struct.change_node* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %14, align 4
  %128 = load %struct.change_node*, %struct.change_node** %8, align 8
  %129 = getelementptr inbounds %struct.change_node, %struct.change_node* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %13, align 8
  %131 = load %struct.change_node*, %struct.change_node** %8, align 8
  %132 = getelementptr inbounds %struct.change_node, %struct.change_node* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %149

135:                                              ; preds = %124
  %136 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %137 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.change_node*, %struct.change_node** %8, align 8
  %140 = getelementptr inbounds %struct.change_node, %struct.change_node* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.change_node*, %struct.change_node** %8, align 8
  %143 = getelementptr inbounds %struct.change_node, %struct.change_node* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @svn_editor_copy(i32 %138, i32* %141, i32 %144, i8* %145, i32 %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  br label %197

149:                                              ; preds = %124
  %150 = load i32*, i32** %10, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32*, i32** %9, align 8
  %154 = call i32* @apr_hash_make(i32* %153)
  store i32* %154, i32** %10, align 8
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* @svn_node_dir, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %155
  %160 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = call i32* @get_children(%struct.ev2_edit_baton* %160, i8* %161, i32* %162)
  store i32* %163, i32** %15, align 8
  %164 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %165 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = load i32*, i32** %15, align 8
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @svn_editor_add_directory(i32 %166, i8* %167, i32* %168, i32* %169, i32 %170)
  %172 = call i32 @SVN_ERR(i32 %171)
  br label %195

173:                                              ; preds = %155
  %174 = load %struct.change_node*, %struct.change_node** %8, align 8
  %175 = getelementptr inbounds %struct.change_node, %struct.change_node* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load i32*, i32** %9, align 8
  %180 = call i32* @svn_stream_empty(i32* %179)
  store i32* %180, i32** %11, align 8
  %181 = load i32, i32* @svn_checksum_sha1, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = call i32* @svn_checksum_empty_checksum(i32 %181, i32* %182)
  store i32* %183, i32** %12, align 8
  br label %184

184:                                              ; preds = %178, %173
  %185 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %186 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = load i32*, i32** %12, align 8
  %190 = load i32*, i32** %11, align 8
  %191 = load i32*, i32** %10, align 8
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @svn_editor_add_file(i32 %187, i8* %188, i32* %189, i32* %190, i32* %191, i32 %192)
  %194 = call i32 @SVN_ERR(i32 %193)
  br label %195

195:                                              ; preds = %184, %159
  %196 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %196, i32** %5, align 8
  br label %235

197:                                              ; preds = %135
  br label %198

198:                                              ; preds = %197, %118
  %199 = load i32*, i32** %10, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i32*, i32** %11, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %233

204:                                              ; preds = %201, %198
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* @svn_node_dir, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %219

208:                                              ; preds = %204
  %209 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %210 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i8*, i8** %7, align 8
  %213 = load %struct.change_node*, %struct.change_node** %8, align 8
  %214 = getelementptr inbounds %struct.change_node, %struct.change_node* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = call i32 @svn_editor_alter_directory(i32 %211, i8* %212, i32 %215, i32* null, i32* %216)
  %218 = call i32 @SVN_ERR(i32 %217)
  br label %232

219:                                              ; preds = %204
  %220 = load %struct.ev2_edit_baton*, %struct.ev2_edit_baton** %6, align 8
  %221 = getelementptr inbounds %struct.ev2_edit_baton, %struct.ev2_edit_baton* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i8*, i8** %7, align 8
  %224 = load %struct.change_node*, %struct.change_node** %8, align 8
  %225 = getelementptr inbounds %struct.change_node, %struct.change_node* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i32*, i32** %12, align 8
  %228 = load i32*, i32** %11, align 8
  %229 = load i32*, i32** %10, align 8
  %230 = call i32 @svn_editor_alter_file(i32 %222, i8* %223, i32 %226, i32* %227, i32* %228, i32* %229)
  %231 = call i32 @SVN_ERR(i32 %230)
  br label %232

232:                                              ; preds = %219, %208
  br label %233

233:                                              ; preds = %232, %201
  %234 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %234, i32** %5, align 8
  br label %235

235:                                              ; preds = %233, %195, %59, %42
  %236 = load i32*, i32** %5, align 8
  ret i32* %236
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_editor_delete(i32, i8*, i32) #1

declare dso_local i32 @svn_editor_add_absent(i32, i8*, i64, i32) #1

declare dso_local i32 @svn_io_file_checksum2(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i32*, i32*, i32*) #1

declare dso_local i32* @svn_stream_empty(i32*) #1

declare dso_local i32* @svn_checksum_empty_checksum(i32, i32*) #1

declare dso_local i32 @svn_editor_copy(i32, i32*, i32, i8*, i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @get_children(%struct.ev2_edit_baton*, i8*, i32*) #1

declare dso_local i32 @svn_editor_add_directory(i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @svn_editor_add_file(i32, i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @svn_editor_alter_directory(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_editor_alter_file(i32, i8*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
