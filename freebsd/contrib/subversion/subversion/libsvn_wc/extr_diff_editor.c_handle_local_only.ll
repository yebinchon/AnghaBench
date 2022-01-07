; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_handle_local_only.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_handle_local_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton_t = type { i64, i32, i32, i32, i64, i64, i64, i32, %struct.edit_baton_t* }
%struct.edit_baton_t = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.svn_wc__db_info_t = type { i32, i64, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dir_baton_t*, i8*, i32*)* @handle_local_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @handle_local_only(%struct.dir_baton_t* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dir_baton_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.edit_baton_t*, align 8
  %9 = alloca %struct.svn_wc__db_info_t*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.dir_baton_t* %0, %struct.dir_baton_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %16 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %15, i32 0, i32 8
  %17 = load %struct.edit_baton_t*, %struct.edit_baton_t** %16, align 8
  store %struct.edit_baton_t* %17, %struct.edit_baton_t** %8, align 8
  %18 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %19 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %24 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call %struct.svn_wc__db_info_t* @svn_hash_gets(i64 %25, i8* %26)
  %28 = icmp ne %struct.svn_wc__db_info_t* %27, null
  br label %29

29:                                               ; preds = %22, %3
  %30 = phi i1 [ false, %3 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strchr(i8* %32, i8 signext 47)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %39 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %44 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %42, %29
  %48 = phi i1 [ true, %29 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %52 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %56, i32** %4, align 8
  br label %229

57:                                               ; preds = %47
  %58 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @ensure_local_info(%struct.dir_baton_t* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %63 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call %struct.svn_wc__db_info_t* @svn_hash_gets(i64 %64, i8* %65)
  store %struct.svn_wc__db_info_t* %66, %struct.svn_wc__db_info_t** %9, align 8
  %67 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %9, align 8
  %68 = icmp eq %struct.svn_wc__db_info_t* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %57
  %70 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %9, align 8
  %71 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @NOT_PRESENT(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69, %57
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %4, align 8
  br label %229

77:                                               ; preds = %69
  %78 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %9, align 8
  %79 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %104 [
    i32 128, label %81
    i32 129, label %81
    i32 130, label %92
    i32 131, label %103
  ]

81:                                               ; preds = %77, %77
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %4, align 8
  br label %229

86:                                               ; preds = %81
  %87 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %88 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @svn_hash_sets(i64 %89, i8* %90, i32* null)
  br label %105

92:                                               ; preds = %77
  %93 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %94 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97, %92
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %101, i32** %4, align 8
  br label %229

102:                                              ; preds = %97
  br label %105

103:                                              ; preds = %77
  br label %104

104:                                              ; preds = %77, %103
  br label %105

105:                                              ; preds = %104, %102, %86
  %106 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %107 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = call i8* @svn_dirent_join(i32 %108, i8* %109, i32* %110)
  store i8* %111, i8** %10, align 8
  %112 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %9, align 8
  %113 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %105
  %117 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %118 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @svn_wc__db_scan_moved(i8** %13, i32* null, i32* null, i32* null, i32 %119, i8* %120, i32* %121, i32* %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  %125 = load i8*, i8** %13, align 8
  %126 = icmp ne i8* %125, null
  %127 = zext i1 %126 to i32
  %128 = call i32 @SVN_ERR_ASSERT(i32 %127)
  %129 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %130 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %13, align 8
  %133 = call i8* @svn_dirent_skip_ancestor(i32 %131, i8* %132)
  store i8* %133, i8** %11, align 8
  br label %135

134:                                              ; preds = %105
  store i8* null, i8** %11, align 8
  br label %135

135:                                              ; preds = %134, %116
  %136 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %9, align 8
  %137 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @svn_node_dir, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %197

141:                                              ; preds = %135
  %142 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %143 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @svn_depth_infinity, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %149 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @svn_depth_unknown, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147, %141
  %154 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %155 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %14, align 8
  br label %159

157:                                              ; preds = %147
  %158 = load i64, i64* @svn_depth_empty, align 8
  store i64 %158, i64* %14, align 8
  br label %159

159:                                              ; preds = %157, %153
  %160 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %161 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %165 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i8*, i8** %6, align 8
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @svn_relpath_join(i32 %166, i8* %167, i32* %168)
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %159
  %173 = load i64, i64* @svn_depth_infinity, align 8
  br label %176

174:                                              ; preds = %159
  %175 = load i64, i64* %14, align 8
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i64 [ %173, %172 ], [ %175, %174 ]
  %178 = load i8*, i8** %11, align 8
  %179 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %180 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %183 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %186 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %189 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %192 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32*, i32** %7, align 8
  %195 = call i32 @svn_wc__diff_local_only_dir(i32 %162, i8* %163, i32 %169, i64 %177, i8* %178, i32 %181, i32 %184, i32 %187, i32 %190, i32 %193, i32* %194)
  %196 = call i32 @SVN_ERR(i32 %195)
  br label %227

197:                                              ; preds = %135
  %198 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %199 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i8*, i8** %10, align 8
  %202 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %203 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i8*, i8** %6, align 8
  %206 = load i32*, i32** %7, align 8
  %207 = call i32 @svn_relpath_join(i32 %204, i8* %205, i32* %206)
  %208 = load i8*, i8** %11, align 8
  %209 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %210 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.dir_baton_t*, %struct.dir_baton_t** %5, align 8
  %213 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %216 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %219 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.edit_baton_t*, %struct.edit_baton_t** %8, align 8
  %222 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32*, i32** %7, align 8
  %225 = call i32 @svn_wc__diff_local_only_file(i32 %200, i8* %201, i32 %207, i8* %208, i32 %211, i32 %214, i32 %217, i32 %220, i32 %223, i32* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  br label %227

227:                                              ; preds = %197, %176
  %228 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %228, i32** %4, align 8
  br label %229

229:                                              ; preds = %227, %100, %84, %75, %55
  %230 = load i32*, i32** %4, align 8
  ret i32* %230
}

declare dso_local %struct.svn_wc__db_info_t* @svn_hash_gets(i64, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ensure_local_info(%struct.dir_baton_t*, i32*) #1

declare dso_local i64 @NOT_PRESENT(i32) #1

declare dso_local i32 @svn_hash_sets(i64, i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_scan_moved(i8**, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32 @svn_wc__diff_local_only_dir(i32, i8*, i32, i64, i8*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_relpath_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__diff_local_only_file(i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
