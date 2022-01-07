; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_send_path_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_send_path_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_revision = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.send_baton = type { i32*, i32*, i32*, i32, i32*, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@svn_delta_noop_window_handler = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.path_revision*, %struct.TYPE_3__*, %struct.send_baton*, i32 (i8*, i32, i32, i32*, i32, i64*, i8**, i32*, i32*)*, i8*)* @send_path_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @send_path_revision(%struct.path_revision* %0, %struct.TYPE_3__* %1, %struct.send_baton* %2, i32 (i8*, i32, i32, i32*, i32, i64*, i8**, i32*, i32*)* %3, i8* %4) #0 {
  %6 = alloca %struct.path_revision*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.send_baton*, align 8
  %9 = alloca i32 (i8*, i32, i32, i32*, i32, i64*, i8**, i32*, i32*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.path_revision* %0, %struct.path_revision** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store %struct.send_baton* %2, %struct.send_baton** %8, align 8
  store i32 (i8*, i32, i32, i32*, i32, i64*, i8**, i32*, i32*)* %3, i32 (i8*, i32, i32, i32*, i32, i64*, i8**, i32*, i32*)** %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* %16, align 8
  store i8* null, i8** %17, align 8
  %21 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %22 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @svn_pool_clear(i32* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.path_revision*, %struct.path_revision** %6, align 8
  %29 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %33 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %36 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @svn_fs_revision_proplist2(i32** %11, i32 %27, i32 %30, i32 %31, i32* %34, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.path_revision*, %struct.path_revision** %6, align 8
  %44 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %47 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @svn_fs_revision_root(i32** %14, i32 %42, i32 %45, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %52 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %5
  %56 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %57 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %60 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load %struct.path_revision*, %struct.path_revision** %6, align 8
  %64 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %67 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @svn_fs_props_changed(i64* %20, i32* %58, i32 %61, i32* %62, i32 %65, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %73

71:                                               ; preds = %5
  %72 = load i64, i64* @TRUE, align 8
  store i64 %72, i64* %20, align 8
  br label %73

73:                                               ; preds = %71, %55
  %74 = load i64, i64* %20, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = load i32*, i32** %14, align 8
  %78 = load %struct.path_revision*, %struct.path_revision** %6, align 8
  %79 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %82 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @svn_fs_node_proplist(i32** %12, i32* %77, i32 %80, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32*, i32** %12, align 8
  %87 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %88 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %91 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @svn_prop_diffs(i32** %13, i32* %86, i32* %89, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  br label %107

95:                                               ; preds = %73
  %96 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %97 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %100 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32* @svn_prop_hash_dup(i32* %98, i32* %101)
  store i32* %102, i32** %12, align 8
  %103 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %104 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32* @apr_array_make(i32* %105, i32 0, i32 4)
  store i32* %106, i32** %13, align 8
  br label %107

107:                                              ; preds = %95, %76
  %108 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %109 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %19, align 8
  br label %147

114:                                              ; preds = %107
  %115 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %116 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %121 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.path_revision*, %struct.path_revision** %6, align 8
  %124 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @strcmp(i32 %122, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load i64, i64* @TRUE, align 8
  store i64 %129, i64* %19, align 8
  br label %146

130:                                              ; preds = %119, %114
  %131 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %132 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %135 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load %struct.path_revision*, %struct.path_revision** %6, align 8
  %139 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %142 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @svn_fs_contents_different(i64* %19, i32* %133, i32 %136, i32* %137, i32 %140, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  br label %146

146:                                              ; preds = %130, %128
  br label %147

147:                                              ; preds = %146, %112
  %148 = load i32 (i8*, i32, i32, i32*, i32, i64*, i8**, i32*, i32*)*, i32 (i8*, i32, i32, i32*, i32, i64*, i8**, i32*, i32*)** %9, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = load %struct.path_revision*, %struct.path_revision** %6, align 8
  %151 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.path_revision*, %struct.path_revision** %6, align 8
  %154 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = load %struct.path_revision*, %struct.path_revision** %6, align 8
  %158 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i64, i64* %19, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %147
  br label %164

163:                                              ; preds = %147
  br label %164

164:                                              ; preds = %163, %162
  %165 = phi i64* [ %16, %162 ], [ null, %163 ]
  %166 = load i64, i64* %19, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %170

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169, %168
  %171 = phi i8** [ %17, %168 ], [ null, %169 ]
  %172 = load i32*, i32** %13, align 8
  %173 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %174 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 %148(i8* %149, i32 %152, i32 %155, i32* %156, i32 %159, i64* %165, i8** %171, i32* %172, i32* %175)
  %177 = call i32 @SVN_ERR(i32 %176)
  %178 = load i64, i64* %16, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %208

180:                                              ; preds = %170
  %181 = load i64, i64* %16, align 8
  %182 = load i64, i64* @svn_delta_noop_window_handler, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %208

184:                                              ; preds = %180
  %185 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %186 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %189 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i32*, i32** %14, align 8
  %192 = load %struct.path_revision*, %struct.path_revision** %6, align 8
  %193 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %196 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @svn_fs_get_file_delta_stream(i32** %15, i32* %187, i32 %190, i32* %191, i32 %194, i32* %197)
  %199 = call i32 @SVN_ERR(i32 %198)
  %200 = load i32*, i32** %15, align 8
  %201 = load i64, i64* %16, align 8
  %202 = load i8*, i8** %17, align 8
  %203 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %204 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @svn_txdelta_send_txstream(i32* %200, i64 %201, i8* %202, i32* %205)
  %207 = call i32 @SVN_ERR(i32 %206)
  br label %208

208:                                              ; preds = %184, %180, %170
  %209 = load i32*, i32** %14, align 8
  %210 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %211 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %210, i32 0, i32 4
  store i32* %209, i32** %211, align 8
  %212 = load %struct.path_revision*, %struct.path_revision** %6, align 8
  %213 = getelementptr inbounds %struct.path_revision, %struct.path_revision* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %216 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 8
  %217 = load i32*, i32** %12, align 8
  %218 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %219 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %218, i32 0, i32 2
  store i32* %217, i32** %219, align 8
  %220 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %221 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  store i32* %222, i32** %18, align 8
  %223 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %224 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %227 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %226, i32 0, i32 1
  store i32* %225, i32** %227, align 8
  %228 = load i32*, i32** %18, align 8
  %229 = load %struct.send_baton*, %struct.send_baton** %8, align 8
  %230 = getelementptr inbounds %struct.send_baton, %struct.send_baton* %229, i32 0, i32 0
  store i32* %228, i32** %230, align 8
  %231 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %231
}

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_proplist2(i32**, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_props_changed(i64*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_node_proplist(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

declare dso_local i32* @svn_prop_hash_dup(i32*, i32*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @svn_fs_contents_different(i64*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_get_file_delta_stream(i32**, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_txdelta_send_txstream(i32*, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
