; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_svn_wc__diff_local_only_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_svn_wc__diff_local_only_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i8*, i32*, i32*, i8*, %struct.TYPE_11__*, i32*)*, i32 (i8**, i32*, i8*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, %struct.TYPE_11__*, i32*, i32*)* }
%struct.TYPE_12__ = type { i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_WC_TRANSLATE_TO_NF = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_USE_GLOBAL_TMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__diff_local_only_file(i32* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_11__* %4, i8* %5, i32 %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %23, align 8
  store i32* null, i32** %32, align 8
  store i8* null, i8** %36, align 8
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %38, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i32*, i32** %21, align 8
  %44 = load i32*, i32** %21, align 8
  %45 = call i32 @svn_wc__db_read_info(i64* %24, i64* %25, i32* %35, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %26, i32* null, i8** %27, i32* null, i32* null, i32* %28, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %29, i32* %30, i32* null, i32* null, i32* null, i32* %41, i8* %42, i32* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i64, i64* %25, align 8
  %48 = load i64, i64* @svn_node_file, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %10
  %51 = load i64, i64* %24, align 8
  %52 = load i64, i64* @svn_wc__db_status_normal, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %24, align 8
  %56 = load i64, i64* @svn_wc__db_status_added, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %24, align 8
  %60 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br label %67

67:                                               ; preds = %65, %54, %50
  %68 = phi i1 [ true, %54 ], [ true, %50 ], [ %66, %65 ]
  br label %69

69:                                               ; preds = %67, %10
  %70 = phi i1 [ false, %10 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i64, i64* %24, align 8
  %74 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @assert(i32 %77)
  %79 = load i32*, i32** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i32*, i32** %21, align 8
  %82 = load i32*, i32** %21, align 8
  %83 = call i32 @svn_wc__db_read_pristine_info(i64* %24, i64* %25, i32* null, i32* null, i32* null, i32* null, i32** %26, i32* null, i32* %29, i32** %31, i32* %79, i8* %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %30, align 4
  br label %100

86:                                               ; preds = %69
  %87 = load i32, i32* %29, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %21, align 8
  %91 = call i32* @apr_hash_make(i32* %90)
  store i32* %91, i32** %31, align 8
  br label %99

92:                                               ; preds = %86
  %93 = load i32*, i32** %12, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i32*, i32** %21, align 8
  %96 = load i32*, i32** %21, align 8
  %97 = call i32 @svn_wc__db_read_pristine_props(i32** %31, i32* %93, i8* %94, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  br label %99

99:                                               ; preds = %92, %89
  br label %100

100:                                              ; preds = %99, %76
  %101 = load i8*, i8** %27, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i32, i32* %28, align 4
  %105 = load i32*, i32** %21, align 8
  %106 = call %struct.TYPE_12__* @svn_diff__source_create(i32 %104, i32* %105)
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %23, align 8
  %107 = load i8*, i8** %27, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %103, %100
  %114 = load i32, i32* %30, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %35, align 4
  %118 = call i32 @SVN_IS_VALID_REVNUM(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %122 = load i32*, i32** %21, align 8
  %123 = call %struct.TYPE_12__* @svn_diff__source_create(i32 %121, i32* %122)
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %22, align 8
  br label %148

124:                                              ; preds = %116
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* @FALSE, align 4
  store i32 %128, i32* %38, align 4
  br label %136

129:                                              ; preds = %124
  %130 = load i32*, i32** %12, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = load i32, i32* @FALSE, align 4
  %133 = load i32*, i32** %21, align 8
  %134 = call i32 @svn_wc__internal_file_modified_p(i32* %38, i32* %130, i8* %131, i32 %132, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  br label %136

136:                                              ; preds = %129, %127
  %137 = load i32, i32* %38, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %35, align 4
  %141 = load i32*, i32** %21, align 8
  %142 = call %struct.TYPE_12__* @svn_diff__source_create(i32 %140, i32* %141)
  store %struct.TYPE_12__* %142, %struct.TYPE_12__** %22, align 8
  br label %147

143:                                              ; preds = %136
  %144 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %145 = load i32*, i32** %21, align 8
  %146 = call %struct.TYPE_12__* @svn_diff__source_create(i32 %144, i32* %145)
  store %struct.TYPE_12__* %146, %struct.TYPE_12__** %22, align 8
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147, %120
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32 (i8**, i32*, i8*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, %struct.TYPE_11__*, i32*, i32*)*, i32 (i8**, i32*, i8*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, %struct.TYPE_11__*, i32*, i32*)** %150, align 8
  %152 = load i8*, i8** %14, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %155 = load i8*, i8** %17, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %157 = load i32*, i32** %21, align 8
  %158 = load i32*, i32** %21, align 8
  %159 = call i32 %151(i8** %36, i32* %37, i8* %152, i32* null, %struct.TYPE_12__* %153, %struct.TYPE_12__* %154, i8* %155, %struct.TYPE_11__* %156, i32* %157, i32* %158)
  %160 = call i32 @SVN_ERR(i32 %159)
  %161 = load i32, i32* %37, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %148
  %164 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %164, i32** %11, align 8
  br label %241

165:                                              ; preds = %148
  %166 = load i32, i32* %30, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load i32, i32* %18, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %168
  %172 = load i32*, i32** %12, align 8
  %173 = load i8*, i8** %13, align 8
  %174 = load i32*, i32** %21, align 8
  %175 = load i32*, i32** %21, align 8
  %176 = call i32 @svn_wc__db_read_props(i32** %32, i32* %172, i8* %173, i32* %174, i32* %175)
  %177 = call i32 @SVN_ERR(i32 %176)
  br label %182

178:                                              ; preds = %168, %165
  %179 = load i32*, i32** %31, align 8
  %180 = load i32*, i32** %21, align 8
  %181 = call i32* @svn_prop_hash_dup(i32* %179, i32* %180)
  store i32* %181, i32** %32, align 8
  br label %182

182:                                              ; preds = %178, %171
  %183 = load i32*, i32** %26, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i32*, i32** %12, align 8
  %187 = load i8*, i8** %13, align 8
  %188 = load i32*, i32** %26, align 8
  %189 = load i32*, i32** %21, align 8
  %190 = load i32*, i32** %21, align 8
  %191 = call i32 @svn_wc__db_pristine_get_path(i8** %33, i32* %186, i8* %187, i32* %188, i32* %189, i32* %190)
  %192 = call i32 @SVN_ERR(i32 %191)
  br label %194

193:                                              ; preds = %182
  store i8* null, i8** %33, align 8
  br label %194

194:                                              ; preds = %193, %185
  %195 = load i32, i32* %18, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = load i8*, i8** %33, align 8
  store i8* %198, i8** %34, align 8
  br label %212

199:                                              ; preds = %194
  %200 = load i8*, i8** %13, align 8
  %201 = load i32*, i32** %12, align 8
  %202 = load i8*, i8** %13, align 8
  %203 = load i32, i32* @SVN_WC_TRANSLATE_TO_NF, align 4
  %204 = load i32, i32* @SVN_WC_TRANSLATE_USE_GLOBAL_TMP, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* %19, align 4
  %207 = load i8*, i8** %20, align 8
  %208 = load i32*, i32** %21, align 8
  %209 = load i32*, i32** %21, align 8
  %210 = call i32 @svn_wc__internal_translated_file(i8** %34, i8* %200, i32* %201, i8* %202, i32 %205, i32 %206, i8* %207, i32* %208, i32* %209)
  %211 = call i32 @SVN_ERR(i32 %210)
  br label %212

212:                                              ; preds = %199, %197
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load i32 (i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i8*, i32*, i32*, i8*, %struct.TYPE_11__*, i32*)*, i32 (i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i8*, i32*, i32*, i8*, %struct.TYPE_11__*, i32*)** %214, align 8
  %216 = load i8*, i8** %14, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %220 = icmp ne %struct.TYPE_12__* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %212
  %222 = load i8*, i8** %33, align 8
  br label %224

223:                                              ; preds = %212
  br label %224

224:                                              ; preds = %223, %221
  %225 = phi i8* [ %222, %221 ], [ null, %223 ]
  %226 = load i8*, i8** %34, align 8
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %228 = icmp ne %struct.TYPE_12__* %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = load i32*, i32** %31, align 8
  br label %232

231:                                              ; preds = %224
  br label %232

232:                                              ; preds = %231, %229
  %233 = phi i32* [ %230, %229 ], [ null, %231 ]
  %234 = load i32*, i32** %32, align 8
  %235 = load i8*, i8** %36, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %237 = load i32*, i32** %21, align 8
  %238 = call i32 %215(i8* %216, %struct.TYPE_12__* %217, %struct.TYPE_12__* %218, i8* %225, i8* %226, i32* %233, i32* %234, i8* %235, %struct.TYPE_11__* %236, i32* %237)
  %239 = call i32 @SVN_ERR(i32 %238)
  %240 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %240, i32** %11, align 8
  br label %241

241:                                              ; preds = %232, %163
  %242 = load i32*, i32** %11, align 8
  ret i32* %242
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_wc__db_read_pristine_info(i64*, i64*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_wc__db_read_pristine_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_diff__source_create(i32, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_wc__internal_file_modified_p(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_read_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_prop_hash_dup(i32*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_path(i8**, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__internal_translated_file(i8**, i8*, i32*, i8*, i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
