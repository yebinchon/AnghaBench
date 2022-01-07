; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_find_tunnel_agent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_find_tunnel_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_TUNNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"$SVN_SSH ssh -q --\00", align 1
@SVN_ERR_BAD_URL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Undefined tunnel scheme '%s'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Tunnel scheme %s requires environment variable %s to be defined\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"Can't tokenize command '%s'\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"svnserve\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8***, i32*, i32*)* @find_tunnel_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_tunnel_agent(i8* %0, i8* %1, i8*** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8*** %2, i8**** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %26 = call i32* @svn_hash_gets(i32* %24, i32 %25)
  br label %28

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32* [ %26, %23 ], [ null, %27 ]
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* @SVN_CONFIG_SECTION_TUNNELS, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @svn_config_get(i32* %30, i8** %13, i32 %31, i8* %32, i32* null)
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %41

41:                                               ; preds = %40, %36, %28
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** %13, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* @SVN_ERR_BAD_URL, align 4
  %50 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i8*, i8** %7, align 8
  %52 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %49, i32* null, i32 %50, i8* %51)
  store i32* %52, i32** %6, align 8
  br label %174

53:                                               ; preds = %44
  %54 = load i8*, i8** %13, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 36
  br i1 %57, label %58, label %96

58:                                               ; preds = %53
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @strcspn(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %62, i32* %18, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call i8* @apr_pstrmemdup(i32* %63, i8* %64, i32 %65)
  store i8* %66, i8** %14, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i8* @getenv(i8* %67)
  store i8* %68, i8** %15, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %95, label %71

71:                                               ; preds = %58
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8* %75, i8** %15, align 8
  br label %76

76:                                               ; preds = %81, %71
  %77 = load i8*, i8** %15, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %15, align 8
  br label %76

84:                                               ; preds = %76
  %85 = load i8*, i8** %15, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @SVN_ERR_BAD_URL, align 4
  %90 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %89, i32* null, i32 %90, i8* %91, i8* %92)
  store i32* %93, i32** %6, align 8
  br label %174

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %58
  br label %98

96:                                               ; preds = %53
  %97 = load i8*, i8** %13, align 8
  store i8* %97, i8** %15, align 8
  br label %98

98:                                               ; preds = %96, %95
  %99 = load i8*, i8** %15, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i64 @apr_tokenize_to_argv(i8* %99, i8*** %16, i32* %100)
  store i64 %101, i64* %19, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* @APR_SUCCESS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load i64, i64* %19, align 8
  %107 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i8*, i8** %15, align 8
  %109 = call i32* @svn_error_wrap_apr(i64 %106, i32 %107, i8* %108)
  store i32* %109, i32** %6, align 8
  br label %174

110:                                              ; preds = %98
  store i32 0, i32* %20, align 4
  br label %111

111:                                              ; preds = %119, %110
  %112 = load i8**, i8*** %16, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %20, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %20, align 4
  br label %111

122:                                              ; preds = %111
  %123 = load i32*, i32** %11, align 8
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 8
  %128 = trunc i64 %127 to i32
  %129 = call i8** @apr_palloc(i32* %123, i32 %128)
  store i8** %129, i8*** %17, align 8
  store i32 0, i32* %20, align 4
  br label %130

130:                                              ; preds = %147, %122
  %131 = load i8**, i8*** %16, align 8
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %150

137:                                              ; preds = %130
  %138 = load i8**, i8*** %16, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = load i8**, i8*** %17, align 8
  %144 = load i32, i32* %20, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  store i8* %142, i8** %146, align 8
  br label %147

147:                                              ; preds = %137
  %148 = load i32, i32* %20, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %20, align 4
  br label %130

150:                                              ; preds = %130
  %151 = load i8*, i8** %8, align 8
  %152 = load i8**, i8*** %17, align 8
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %20, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8*, i8** %152, i64 %155
  store i8* %151, i8** %156, align 8
  %157 = load i8**, i8*** %17, align 8
  %158 = load i32, i32* %20, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %20, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8*, i8** %157, i64 %160
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %161, align 8
  %162 = load i8**, i8*** %17, align 8
  %163 = load i32, i32* %20, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %20, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8*, i8** %162, i64 %165
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %166, align 8
  %167 = load i8**, i8*** %17, align 8
  %168 = load i32, i32* %20, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  store i8* null, i8** %170, align 8
  %171 = load i8**, i8*** %17, align 8
  %172 = load i8***, i8**** %9, align 8
  store i8** %171, i8*** %172, align 8
  %173 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %173, i32** %6, align 8
  br label %174

174:                                              ; preds = %150, %105, %88, %48
  %175 = load i32*, i32** %6, align 8
  ret i32* %175
}

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_config_get(i32*, i8**, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @apr_tokenize_to_argv(i8*, i8***, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i8*) #1

declare dso_local i8** @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
