; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_get_local_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_get_local_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.recursive_proplist_receiver_baton = type { i8*, i8*, %struct.TYPE_24__*, i8*, i32, i32 }

@svn_opt_revision_committed = common dso_local global i64 0, align 8
@svn_opt_revision_base = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_UNVERSIONED_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"'%s' is not under version control\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@recursive_proplist_receiver = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (i8*, %struct.TYPE_21__*, i32, %struct.TYPE_24__*, i32, i32, i8*, %struct.TYPE_23__*, i32*)* @get_local_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @get_local_props(i8* %0, %struct.TYPE_21__* %1, i32 %2, %struct.TYPE_24__* %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_23__* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_24__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.recursive_proplist_receiver_baton, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_22__*, align 8
  store i8* %0, i8** %11, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store %struct.TYPE_23__* %7, %struct.TYPE_23__** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* null, i32** %22, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %24, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32*, i32** %19, align 8
  %31 = call i32 @svn_dirent_get_absolute(i8** %23, i8* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @svn_opt_revision_committed, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %9
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @svn_opt_revision_base, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %38, %9
  %45 = phi i1 [ true, %9 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %20, align 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %23, align 8
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* @FALSE, align 4
  %53 = load i32*, i32** %19, align 8
  %54 = call i32 @svn_wc_read_kind2(i64* %21, i32 %49, i8* %50, i32 %51, i32 %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i64, i64* %21, align 8
  %57 = load i64, i64* @svn_node_unknown, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %44
  %60 = load i64, i64* %21, align 8
  %61 = load i64, i64* @svn_node_none, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59, %44
  %64 = load i32, i32* @SVN_ERR_UNVERSIONED_RESOURCE, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** %23, align 8
  %67 = load i32*, i32** %19, align 8
  %68 = call i32 @svn_dirent_local_style(i8* %66, i32* %67)
  %69 = call %struct.TYPE_22__* @svn_error_createf(i32 %64, i32* null, i32 %65, i32 %68)
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %10, align 8
  br label %222

70:                                               ; preds = %59
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %23, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = call i32 @svn_wc__get_iprops(%struct.TYPE_24__** %24, i32 %76, i8* %77, i32* null, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i8*, i8** %23, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = load i32*, i32** %19, align 8
  %86 = call i32 @svn_client_get_repos_root(i8** %25, i32* null, i8* %82, %struct.TYPE_23__* %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %89 = load i8*, i8** %25, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = load i32*, i32** %19, align 8
  %92 = call i32 @svn_client__iprop_relpaths_to_urls(%struct.TYPE_24__* %88, i8* %89, i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  br label %94

94:                                               ; preds = %73, %70
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %96 = icmp ne %struct.TYPE_24__* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = call i32 @svn_hash_from_cstring_keys(i32** %22, %struct.TYPE_24__* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  br label %107

107:                                              ; preds = %102, %97, %94
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* @svn_node_dir, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %164

111:                                              ; preds = %107
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %26, i32 0, i32 5
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %16, align 4
  %117 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %26, i32 0, i32 4
  store i32 %116, i32* %117, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %26, i32 0, i32 3
  store i8* %118, i8** %119, align 8
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %121 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %26, i32 0, i32 2
  store %struct.TYPE_24__* %120, %struct.TYPE_24__** %121, align 8
  %122 = load i8*, i8** %23, align 8
  %123 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %26, i32 0, i32 0
  store i8* %122, i8** %123, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = load i8*, i8** %23, align 8
  %126 = call i64 @strcmp(i8* %124, i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %111
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %26, i32 0, i32 1
  store i8* %129, i8** %130, align 8
  br label %133

131:                                              ; preds = %111
  %132 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %26, i32 0, i32 1
  store i8* null, i8** %132, align 8
  br label %133

133:                                              ; preds = %131, %128
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %23, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %20, align 4
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %141 = load i32, i32* @recursive_proplist_receiver, align 4
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %19, align 8
  %149 = call i32 @svn_wc__prop_list_recursive(i32 %136, i8* %137, i32* null, i32 %138, i32 %139, %struct.TYPE_24__* %140, i32 %141, %struct.recursive_proplist_receiver_baton* %26, i32 %144, i32 %147, i32* %148)
  %150 = call i32 @SVN_ERR(i32 %149)
  %151 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %26, i32 0, i32 2
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %151, align 8
  %153 = icmp ne %struct.TYPE_24__* %152, null
  br i1 %153, label %154, label %163

154:                                              ; preds = %133
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds %struct.recursive_proplist_receiver_baton, %struct.recursive_proplist_receiver_baton* %26, i32 0, i32 2
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = load i8*, i8** %17, align 8
  %160 = load i32*, i32** %19, align 8
  %161 = call i32 @call_receiver(i8* %155, i32* null, %struct.TYPE_24__* %157, i32 %158, i8* %159, i32* %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  br label %163

163:                                              ; preds = %154, %133
  br label %220

164:                                              ; preds = %107
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i8*, i8** %23, align 8
  %169 = load i32*, i32** %22, align 8
  %170 = load i32*, i32** %19, align 8
  %171 = call i64 @svn_wc__changelist_match(i32 %167, i8* %168, i32* %169, i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %219

173:                                              ; preds = %164
  %174 = load i32, i32* %20, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i8*, i8** %23, align 8
  %181 = load i32*, i32** %19, align 8
  %182 = load i32*, i32** %19, align 8
  %183 = call i32 @svn_wc_get_pristine_props(i32** %27, i32 %179, i8* %180, i32* %181, i32* %182)
  %184 = call i32 @SVN_ERR(i32 %183)
  br label %210

185:                                              ; preds = %173
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i8*, i8** %23, align 8
  %190 = load i32*, i32** %19, align 8
  %191 = load i32*, i32** %19, align 8
  %192 = call %struct.TYPE_22__* @svn_wc_prop_list2(i32** %27, i32 %188, i8* %189, i32* %190, i32* %191)
  store %struct.TYPE_22__* %192, %struct.TYPE_22__** %28, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %194 = icmp ne %struct.TYPE_22__* %193, null
  br i1 %194, label %195, label %209

195:                                              ; preds = %185
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %203 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %202)
  store %struct.TYPE_22__* %203, %struct.TYPE_22__** %10, align 8
  br label %222

204:                                              ; preds = %195
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %206 = call i32 @svn_error_clear(%struct.TYPE_22__* %205)
  %207 = load i32*, i32** %19, align 8
  %208 = call i32* @apr_hash_make(i32* %207)
  store i32* %208, i32** %27, align 8
  br label %209

209:                                              ; preds = %204, %185
  br label %210

210:                                              ; preds = %209, %176
  %211 = load i8*, i8** %11, align 8
  %212 = load i32*, i32** %27, align 8
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %214 = load i32, i32* %16, align 4
  %215 = load i8*, i8** %17, align 8
  %216 = load i32*, i32** %19, align 8
  %217 = call i32 @call_receiver(i8* %211, i32* %212, %struct.TYPE_24__* %213, i32 %214, i8* %215, i32* %216)
  %218 = call i32 @SVN_ERR(i32 %217)
  br label %219

219:                                              ; preds = %210, %164
  br label %220

220:                                              ; preds = %219, %163
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %221, %struct.TYPE_22__** %10, align 8
  br label %222

222:                                              ; preds = %220, %201, %63
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  ret %struct.TYPE_22__* %223
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__get_iprops(%struct.TYPE_24__**, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_client_get_repos_root(i8**, i32*, i8*, %struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @svn_client__iprop_relpaths_to_urls(%struct.TYPE_24__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_hash_from_cstring_keys(i32**, %struct.TYPE_24__*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_wc__prop_list_recursive(i32, i8*, i32*, i32, i32, %struct.TYPE_24__*, i32, %struct.recursive_proplist_receiver_baton*, i32, i32, i32*) #1

declare dso_local i32 @call_receiver(i8*, i32*, %struct.TYPE_24__*, i32, i8*, i32*) #1

declare dso_local i64 @svn_wc__changelist_match(i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc_get_pristine_props(i32**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_wc_prop_list2(i32**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_22__*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
