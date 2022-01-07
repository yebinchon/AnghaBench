; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_adjust_paths_for_diff_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_adjust_paths_for_diff_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s\09(%s)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s\09(...%s)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s\09(.../%s)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8**, i8*, i8*, i32*, i32*)* @adjust_paths_for_diff_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @adjust_paths_for_diff_labels(i8** %0, i8** %1, i8** %2, i8* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i8** %0, i8*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %16, align 8
  %25 = load i8**, i8*** %10, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %17, align 8
  %27 = load i8**, i8*** %11, align 8
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %18, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %7
  %32 = load i8*, i8** %13, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i8* @svn_dirent_join(i8* %32, i8* %33, i32* %34)
  store i8* %35, i8** %16, align 8
  br label %36

36:                                               ; preds = %31, %7
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call i8* @svn_dirent_is_child(i8* %40, i8* %41, i32* %42)
  store i8* %43, i8** %19, align 8
  %44 = load i8*, i8** %19, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i8*, i8** %19, align 8
  store i8* %47, i8** %16, align 8
  br label %59

48:                                               ; preds = %39
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = call i32 @strcmp(i8* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %58

54:                                               ; preds = %48
  %55 = load i8*, i8** %16, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32* @MAKE_ERR_BAD_RELATIVE_PATH(i8* %55, i8* %56)
  store i32* %57, i32** %8, align 8
  br label %181

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i8*, i8** %17, align 8
  %62 = call i64 @svn_path_is_url(i8* %61)
  store i64 %62, i64* %21, align 8
  %63 = load i8*, i8** %18, align 8
  %64 = call i64 @svn_path_is_url(i8* %63)
  store i64 %64, i64* %22, align 8
  %65 = load i64, i64* %21, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load i64, i64* %22, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i8*, i8** %17, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = call i32 @svn_uri_get_longest_ancestor(i8* %71, i8* %72, i32* %73)
  %75 = call i64 @strlen(i32 %74)
  store i64 %75, i64* %20, align 8
  br label %90

76:                                               ; preds = %67, %60
  %77 = load i64, i64* %21, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %22, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %17, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @svn_dirent_get_longest_ancestor(i8* %83, i8* %84, i32* %85)
  %87 = call i64 @strlen(i32 %86)
  store i64 %87, i64* %20, align 8
  br label %89

88:                                               ; preds = %79, %76
  store i64 0, i64* %20, align 8
  br label %89

89:                                               ; preds = %88, %82
  br label %90

90:                                               ; preds = %89, %70
  %91 = load i64, i64* %20, align 8
  %92 = load i8*, i8** %17, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8* %93, i8** %17, align 8
  %94 = load i64, i64* %20, align 8
  %95 = load i8*, i8** %18, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 %94
  store i8* %96, i8** %18, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %103

103:                                              ; preds = %102, %90
  %104 = load i8*, i8** %17, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i8*, i8** %16, align 8
  store i8* %110, i8** %17, align 8
  br label %138

111:                                              ; preds = %103
  %112 = load i8*, i8** %17, align 8
  %113 = call i64 @svn_path_is_url(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i32*, i32** %14, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = call i8* @apr_psprintf(i32* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %117, i8* %118)
  store i8* %119, i8** %17, align 8
  br label %137

120:                                              ; preds = %111
  %121 = load i8*, i8** %17, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 47
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load i32*, i32** %14, align 8
  %128 = load i8*, i8** %16, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = call i8* @apr_psprintf(i32* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %128, i8* %129)
  store i8* %130, i8** %17, align 8
  br label %136

131:                                              ; preds = %120
  %132 = load i32*, i32** %14, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = load i8*, i8** %17, align 8
  %135 = call i8* @apr_psprintf(i32* %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %133, i8* %134)
  store i8* %135, i8** %17, align 8
  br label %136

136:                                              ; preds = %131, %126
  br label %137

137:                                              ; preds = %136, %115
  br label %138

138:                                              ; preds = %137, %109
  %139 = load i8*, i8** %18, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i8*, i8** %16, align 8
  store i8* %145, i8** %18, align 8
  br label %173

146:                                              ; preds = %138
  %147 = load i8*, i8** %18, align 8
  %148 = call i64 @svn_path_is_url(i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32*, i32** %14, align 8
  %152 = load i8*, i8** %16, align 8
  %153 = load i8*, i8** %18, align 8
  %154 = call i8* @apr_psprintf(i32* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %152, i8* %153)
  store i8* %154, i8** %18, align 8
  br label %172

155:                                              ; preds = %146
  %156 = load i8*, i8** %18, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 47
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load i32*, i32** %14, align 8
  %163 = load i8*, i8** %16, align 8
  %164 = load i8*, i8** %18, align 8
  %165 = call i8* @apr_psprintf(i32* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %163, i8* %164)
  store i8* %165, i8** %18, align 8
  br label %171

166:                                              ; preds = %155
  %167 = load i32*, i32** %14, align 8
  %168 = load i8*, i8** %16, align 8
  %169 = load i8*, i8** %18, align 8
  %170 = call i8* @apr_psprintf(i32* %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %168, i8* %169)
  store i8* %170, i8** %18, align 8
  br label %171

171:                                              ; preds = %166, %161
  br label %172

172:                                              ; preds = %171, %150
  br label %173

173:                                              ; preds = %172, %144
  %174 = load i8*, i8** %16, align 8
  %175 = load i8**, i8*** %9, align 8
  store i8* %174, i8** %175, align 8
  %176 = load i8*, i8** %17, align 8
  %177 = load i8**, i8*** %10, align 8
  store i8* %176, i8** %177, align 8
  %178 = load i8*, i8** %18, align 8
  %179 = load i8**, i8*** %11, align 8
  store i8* %178, i8** %179, align 8
  %180 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %180, i32** %8, align 8
  br label %181

181:                                              ; preds = %173, %54
  %182 = load i32*, i32** %8, align 8
  ret i32* %182
}

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_is_child(i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @MAKE_ERR_BAD_RELATIVE_PATH(i8*, i8*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @svn_uri_get_longest_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @svn_dirent_get_longest_ancestor(i8*, i8*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
