; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_match_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_match_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_8__*, i32*, i64, i32, i32, i32*)* @match_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @match_hunk(i32* %0, %struct.TYPE_8__* %1, i32* %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %7
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %37, i32** %8, align 8
  br label %205

38:                                               ; preds = %7
  %39 = load i32*, i32** %11, align 8
  %40 = call i64 @svn_diff_hunk__get_fuzz_penalty(i32* %39)
  store i64 %40, i64* %26, align 8
  %41 = load i64, i64* %26, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %8, align 8
  br label %205

46:                                               ; preds = %38
  %47 = load i64, i64* %26, align 8
  %48 = load i64, i64* %12, align 8
  %49 = sub nsw i64 %48, %47
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %19, align 8
  store i64 0, i64* %18, align 8
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %21, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @svn_diff_hunk_get_leading_context(i32* %55)
  store i64 %56, i64* %24, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i64 @svn_diff_hunk_get_trailing_context(i32* %57)
  store i64 %58, i64* %25, align 8
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @svn_diff_hunk_reset_modified_text(i32* %62)
  %64 = load i32*, i32** %11, align 8
  %65 = call i64 @svn_diff_hunk_get_modified_length(i32* %64)
  store i64 %65, i64* %23, align 8
  br label %71

66:                                               ; preds = %50
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @svn_diff_hunk_reset_original_text(i32* %67)
  %69 = load i32*, i32** %11, align 8
  %70 = call i64 @svn_diff_hunk_get_original_length(i32* %69)
  store i64 %70, i64* %23, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32*, i32** %15, align 8
  %73 = call i32* @svn_pool_create(i32* %72)
  store i32* %73, i32** %22, align 8
  br label %74

74:                                               ; preds = %179, %71
  %75 = load i32*, i32** %22, align 8
  %76 = call i32 @svn_pool_clear(i32* %75)
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %22, align 8
  %82 = load i32*, i32** %22, align 8
  %83 = call i32 @svn_diff_hunk_readline_modified_text(i32* %80, %struct.TYPE_9__** %16, i32* null, i32* %20, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %91

85:                                               ; preds = %74
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** %22, align 8
  %88 = load i32*, i32** %22, align 8
  %89 = call i32 @svn_diff_hunk_readline_original_text(i32* %86, %struct.TYPE_9__** %16, i32* null, i32* %20, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @FALSE, align 4
  %100 = load i32*, i32** %22, align 8
  %101 = call i32 @svn_subst_translate_cstring2(i32 %94, i8** %27, i32* null, i32 %95, i32 %98, i32 %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %104 = load i32*, i32** %22, align 8
  %105 = load i32*, i32** %22, align 8
  %106 = call i32 @readline(%struct.TYPE_8__* %103, i8** %17, i32* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load i64, i64* %18, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %18, align 8
  %110 = load i32, i32* %20, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %91
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %112, %91
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i8*, i8** %17, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122, %112
  br label %182

128:                                              ; preds = %122, %117
  %129 = load i64, i64* %18, align 8
  %130 = load i64, i64* %12, align 8
  %131 = icmp sle i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i64, i64* %24, align 8
  %134 = load i64, i64* %12, align 8
  %135 = icmp sgt i64 %133, %134
  br i1 %135, label %146, label %136

136:                                              ; preds = %132, %128
  %137 = load i64, i64* %18, align 8
  %138 = load i64, i64* %23, align 8
  %139 = load i64, i64* %12, align 8
  %140 = sub nsw i64 %138, %139
  %141 = icmp sgt i64 %137, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load i64, i64* %25, align 8
  %144 = load i64, i64* %12, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142, %132
  %147 = load i32, i32* @TRUE, align 4
  store i32 %147, i32* %21, align 4
  br label %178

148:                                              ; preds = %142, %136
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %148
  %152 = load i32*, i32** %22, align 8
  %153 = load i8*, i8** %27, align 8
  %154 = call i8* @apr_pstrdup(i32* %152, i8* %153)
  store i8* %154, i8** %28, align 8
  %155 = load i32*, i32** %22, align 8
  %156 = load i8*, i8** %17, align 8
  %157 = call i8* @apr_pstrdup(i32* %155, i8* %156)
  store i8* %157, i8** %29, align 8
  %158 = load i8*, i8** %28, align 8
  %159 = load i8*, i8** %28, align 8
  %160 = call i32 @apr_collapse_spaces(i8* %158, i8* %159)
  %161 = load i8*, i8** %29, align 8
  %162 = load i8*, i8** %29, align 8
  %163 = call i32 @apr_collapse_spaces(i8* %161, i8* %162)
  %164 = load i8*, i8** %28, align 8
  %165 = load i8*, i8** %29, align 8
  %166 = call i32 @strcmp(i8* %164, i8* %165)
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %21, align 4
  br label %177

170:                                              ; preds = %148
  %171 = load i8*, i8** %27, align 8
  %172 = load i8*, i8** %17, align 8
  %173 = call i32 @strcmp(i8* %171, i8* %172)
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %21, align 4
  br label %177

177:                                              ; preds = %170, %151
  br label %178

178:                                              ; preds = %177, %146
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %21, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %74, label %182

182:                                              ; preds = %179, %127
  %183 = load i32, i32* %21, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i32, i32* %20, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %191, 0
  br label %193

193:                                              ; preds = %188, %185, %182
  %194 = phi i1 [ false, %185 ], [ false, %182 ], [ %192, %188 ]
  %195 = zext i1 %194 to i32
  %196 = load i32*, i32** %9, align 8
  store i32 %195, i32* %196, align 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %198 = load i64, i64* %19, align 8
  %199 = load i32*, i32** %22, align 8
  %200 = call i32 @seek_to_line(%struct.TYPE_8__* %197, i64 %198, i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  %202 = load i32*, i32** %22, align 8
  %203 = call i32 @svn_pool_destroy(i32* %202)
  %204 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %204, i32** %8, align 8
  br label %205

205:                                              ; preds = %193, %44, %36
  %206 = load i32*, i32** %8, align 8
  ret i32* %206
}

declare dso_local i64 @svn_diff_hunk__get_fuzz_penalty(i32*) #1

declare dso_local i64 @svn_diff_hunk_get_leading_context(i32*) #1

declare dso_local i64 @svn_diff_hunk_get_trailing_context(i32*) #1

declare dso_local i32 @svn_diff_hunk_reset_modified_text(i32*) #1

declare dso_local i64 @svn_diff_hunk_get_modified_length(i32*) #1

declare dso_local i32 @svn_diff_hunk_reset_original_text(i32*) #1

declare dso_local i64 @svn_diff_hunk_get_original_length(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_diff_hunk_readline_modified_text(i32*, %struct.TYPE_9__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_diff_hunk_readline_original_text(i32*, %struct.TYPE_9__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_subst_translate_cstring2(i32, i8**, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @readline(%struct.TYPE_8__*, i8**, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @apr_collapse_spaces(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @seek_to_line(%struct.TYPE_8__*, i64, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
