; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_do_propset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_do_propset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i64 }
%struct.getter_baton = type { i8*, %struct.TYPE_15__* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to load current properties\00", align 1
@SVN_PROP_MIME_TYPE = common dso_local global i8* null, align 8
@get_file_for_validation = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_PROP_EXECUTABLE = common dso_local global i8* null, align 8
@SVN_PROP_NEEDS_LOCK = common dso_local global i8* null, align 8
@SVN_PROP_KEYWORDS = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_PROP_EOL_STYLE = common dso_local global i8* null, align 8
@svn_wc_notify_property_deleted_nonexistent = common dso_local global i32 0, align 4
@svn_wc_notify_property_added = common dso_local global i32 0, align 4
@svn_wc_notify_property_deleted = common dso_local global i32 0, align 4
@svn_wc_notify_property_modified = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64, i8*, %struct.TYPE_15__*, i32, i32 (i8*, %struct.TYPE_14__*, i32*)*, i8*, i32*)* @do_propset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_propset(i32* %0, i8* %1, i64 %2, i8* %3, %struct.TYPE_15__* %4, i32 %5, i32 (i8*, %struct.TYPE_14__*, i32*)* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32 (i8*, %struct.TYPE_14__*, i32*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca %struct.getter_baton, align 8
  %25 = alloca %struct.TYPE_15__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_15__*, align 8
  %29 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 (i8*, %struct.TYPE_14__*, i32*)* %6, i32 (i8*, %struct.TYPE_14__*, i32*)** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32* null, i32** %21, align 8
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %22, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @svn_dirent_is_absolute(i8* %31)
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = load i32*, i32** %18, align 8
  %38 = call i32 @svn_wc__db_read_props(i32** %19, i32* %34, i8* %35, i32* %36, i32* %37)
  %39 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @SVN_ERR_W(i32 %38, i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %42 = icmp ne %struct.TYPE_15__* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %9
  %44 = load i8*, i8** %13, align 8
  %45 = call i64 @svn_prop_is_svn_prop(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i32*, i32** %19, align 8
  %49 = load i8*, i8** @SVN_PROP_MIME_TYPE, align 8
  %50 = call %struct.TYPE_15__* @svn_hash_gets(i32* %48, i8* %49)
  %51 = getelementptr inbounds %struct.getter_baton, %struct.getter_baton* %24, i32 0, i32 1
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds %struct.getter_baton, %struct.getter_baton* %24, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @get_file_for_validation, align 4
  %60 = load i32*, i32** %18, align 8
  %61 = call i32 @svn_wc_canonicalize_svn_prop(%struct.TYPE_15__** %23, i8* %54, %struct.TYPE_15__* %55, i8* %56, i64 %57, i32 %58, i32 %59, %struct.getter_baton* %24, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %14, align 8
  br label %64

64:                                               ; preds = %47, %43, %9
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @svn_node_file, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** @SVN_PROP_EXECUTABLE, align 8
  %71 = call i64 @strcmp(i8* %69, i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** @SVN_PROP_NEEDS_LOCK, align 8
  %76 = call i64 @strcmp(i8* %74, i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73, %68
  %79 = load i32*, i32** %10, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i32*, i32** %18, align 8
  %82 = load i32*, i32** %18, align 8
  %83 = call i32 @svn_wc__wq_build_sync_file_flags(i32** %21, i32* %79, i8* %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %85

85:                                               ; preds = %78, %73, %64
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @svn_node_file, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %141

89:                                               ; preds = %85
  %90 = load i8*, i8** %13, align 8
  %91 = load i8*, i8** @SVN_PROP_KEYWORDS, align 8
  %92 = call i64 @strcmp(i8* %90, i8* %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %141

94:                                               ; preds = %89
  %95 = load i32*, i32** %19, align 8
  %96 = load i8*, i8** @SVN_PROP_KEYWORDS, align 8
  %97 = call %struct.TYPE_15__* @svn_hash_gets(i32* %95, i8* %96)
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %25, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %99 = icmp ne %struct.TYPE_15__* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load i32*, i32** %10, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = load i32*, i32** %18, align 8
  %108 = load i32*, i32** %18, align 8
  %109 = call i32 @svn_wc__expand_keywords(i32** %26, i32* %101, i8* %102, i32* null, i32 %105, i32 %106, i32* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  br label %114

111:                                              ; preds = %94
  %112 = load i32*, i32** %18, align 8
  %113 = call i32* @apr_hash_make(i32* %112)
  store i32* %113, i32** %26, align 8
  br label %114

114:                                              ; preds = %111, %100
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %116 = icmp ne %struct.TYPE_15__* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load i32*, i32** %10, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TRUE, align 4
  %124 = load i32*, i32** %18, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = call i32 @svn_wc__expand_keywords(i32** %27, i32* %118, i8* %119, i32* null, i32 %122, i32 %123, i32* %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  br label %131

128:                                              ; preds = %114
  %129 = load i32*, i32** %18, align 8
  %130 = call i32* @apr_hash_make(i32* %129)
  store i32* %130, i32** %27, align 8
  br label %131

131:                                              ; preds = %128, %117
  %132 = load i32*, i32** %26, align 8
  %133 = load i32*, i32** %27, align 8
  %134 = load i32, i32* @FALSE, align 4
  %135 = load i32*, i32** %18, align 8
  %136 = call i64 @svn_subst_keywords_differ2(i32* %132, i32* %133, i32 %134, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* @TRUE, align 4
  store i32 %139, i32* %22, align 4
  br label %140

140:                                              ; preds = %138, %131
  br label %173

141:                                              ; preds = %89, %85
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* @svn_node_file, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %172

145:                                              ; preds = %141
  %146 = load i8*, i8** %13, align 8
  %147 = load i8*, i8** @SVN_PROP_EOL_STYLE, align 8
  %148 = call i64 @strcmp(i8* %146, i8* %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %172

150:                                              ; preds = %145
  %151 = load i32*, i32** %19, align 8
  %152 = load i8*, i8** @SVN_PROP_EOL_STYLE, align 8
  %153 = call %struct.TYPE_15__* @svn_hash_gets(i32* %151, i8* %152)
  store %struct.TYPE_15__* %153, %struct.TYPE_15__** %28, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %155 = icmp eq %struct.TYPE_15__* %154, null
  %156 = zext i1 %155 to i32
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %158 = icmp eq %struct.TYPE_15__* %157, null
  %159 = zext i1 %158 to i32
  %160 = icmp ne i32 %156, %159
  br i1 %160, label %169, label %161

161:                                              ; preds = %150
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %163 = icmp ne %struct.TYPE_15__* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %167 = call i32 @svn_string_compare(%struct.TYPE_15__* %165, %struct.TYPE_15__* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164, %150
  %170 = load i32, i32* @TRUE, align 4
  store i32 %170, i32* %22, align 4
  br label %171

171:                                              ; preds = %169, %164, %161
  br label %172

172:                                              ; preds = %171, %145, %141
  br label %173

173:                                              ; preds = %172, %140
  %174 = load i32*, i32** %19, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = call %struct.TYPE_15__* @svn_hash_gets(i32* %174, i8* %175)
  %177 = icmp eq %struct.TYPE_15__* %176, null
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %180 = icmp eq %struct.TYPE_15__* %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* @svn_wc_notify_property_deleted_nonexistent, align 4
  store i32 %182, i32* %20, align 4
  br label %185

183:                                              ; preds = %178
  %184 = load i32, i32* @svn_wc_notify_property_added, align 4
  store i32 %184, i32* %20, align 4
  br label %185

185:                                              ; preds = %183, %181
  br label %194

186:                                              ; preds = %173
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %188 = icmp eq %struct.TYPE_15__* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i32, i32* @svn_wc_notify_property_deleted, align 4
  store i32 %190, i32* %20, align 4
  br label %193

191:                                              ; preds = %186
  %192 = load i32, i32* @svn_wc_notify_property_modified, align 4
  store i32 %192, i32* %20, align 4
  br label %193

193:                                              ; preds = %191, %189
  br label %194

194:                                              ; preds = %193, %185
  %195 = load i32*, i32** %19, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %198 = call i32 @svn_hash_sets(i32* %195, i8* %196, %struct.TYPE_15__* %197)
  %199 = load i32*, i32** %10, align 8
  %200 = load i8*, i8** %11, align 8
  %201 = load i32*, i32** %19, align 8
  %202 = load i32, i32* %22, align 4
  %203 = load i32*, i32** %21, align 8
  %204 = load i32*, i32** %18, align 8
  %205 = call i32 @svn_wc__db_op_set_props(i32* %199, i8* %200, i32* %201, i32 %202, i32* null, i32* %203, i32* %204)
  %206 = call i32 @SVN_ERR(i32 %205)
  %207 = load i32*, i32** %21, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %215

209:                                              ; preds = %194
  %210 = load i32*, i32** %10, align 8
  %211 = load i8*, i8** %11, align 8
  %212 = load i32*, i32** %18, align 8
  %213 = call i32 @svn_wc__wq_run(i32* %210, i8* %211, i32* null, i32* null, i32* %212)
  %214 = call i32 @SVN_ERR(i32 %213)
  br label %215

215:                                              ; preds = %209, %194
  %216 = load i32 (i8*, %struct.TYPE_14__*, i32*)*, i32 (i8*, %struct.TYPE_14__*, i32*)** %16, align 8
  %217 = icmp ne i32 (i8*, %struct.TYPE_14__*, i32*)* %216, null
  br i1 %217, label %218, label %234

218:                                              ; preds = %215
  %219 = load i8*, i8** %11, align 8
  %220 = load i32, i32* %20, align 4
  %221 = load i32*, i32** %18, align 8
  %222 = call %struct.TYPE_14__* @svn_wc_create_notify(i8* %219, i32 %220, i32* %221)
  store %struct.TYPE_14__* %222, %struct.TYPE_14__** %29, align 8
  %223 = load i8*, i8** %13, align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  store i8* %223, i8** %225, align 8
  %226 = load i64, i64* %12, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 1
  store i64 %226, i64* %228, align 8
  %229 = load i32 (i8*, %struct.TYPE_14__*, i32*)*, i32 (i8*, %struct.TYPE_14__*, i32*)** %16, align 8
  %230 = load i8*, i8** %17, align 8
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %232 = load i32*, i32** %18, align 8
  %233 = call i32 %229(i8* %230, %struct.TYPE_14__* %231, i32* %232)
  br label %234

234:                                              ; preds = %218, %215
  %235 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %235
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @svn_wc__db_read_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn_prop_is_svn_prop(i8*) #1

declare dso_local %struct.TYPE_15__* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_canonicalize_svn_prop(%struct.TYPE_15__**, i8*, %struct.TYPE_15__*, i8*, i64, i32, i32, %struct.getter_baton*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_wc__wq_build_sync_file_flags(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__expand_keywords(i32**, i32*, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i64 @svn_subst_keywords_differ2(i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_string_compare(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @svn_wc__db_op_set_props(i32*, i8*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
