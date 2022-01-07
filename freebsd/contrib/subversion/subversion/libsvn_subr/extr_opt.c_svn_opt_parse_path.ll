; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_svn_opt_parse_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_svn_opt_parse_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"svn+ssh://\00", align 1
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Syntax error parsing peg revision '%s'; did you mean '%s@'?\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Syntax error parsing peg revision '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_opt_parse_path(%struct.TYPE_7__* %0, i8** %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @svn_opt__split_arg_at_peg_revision(i8** %17, i8** %10, i8* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %160

25:                                               ; preds = %4
  %26 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  %34 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %114

38:                                               ; preds = %25
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @svn_path_is_url(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %110

44:                                               ; preds = %38
  %45 = load i8*, i8** %14, align 8
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %15, align 8
  %48 = icmp ugt i64 %47, 6
  br i1 %48, label %49, label %109

49:                                               ; preds = %44
  %50 = load i8*, i8** %14, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %109

55:                                               ; preds = %49
  %56 = load i8*, i8** %14, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 55
  br i1 %60, label %61, label %109

61:                                               ; preds = %55
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 66
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 98
  br i1 %72, label %73, label %109

73:                                               ; preds = %67, %61
  %74 = load i8*, i8** %14, align 8
  %75 = load i64, i64* %15, align 8
  %76 = sub i64 %75, 3
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 37
  br i1 %80, label %81, label %109

81:                                               ; preds = %73
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* %15, align 8
  %84 = sub i64 %83, 2
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 55
  br i1 %88, label %89, label %109

89:                                               ; preds = %81
  %90 = load i8*, i8** %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = sub i64 %91, 1
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 68
  br i1 %96, label %105, label %97

97:                                               ; preds = %89
  %98 = load i8*, i8** %14, align 8
  %99 = load i64, i64* %15, align 8
  %100 = sub i64 %99, 1
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 100
  br i1 %104, label %105, label %109

105:                                              ; preds = %97, %89
  %106 = load i8*, i8** %14, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = call i8* @svn_path_uri_decode(i8* %106, i32* %107)
  store i8* %108, i8** %14, align 8
  br label %109

109:                                              ; preds = %105, %97, %81, %73, %67, %55, %49, %44
  br label %110

110:                                              ; preds = %109, %38
  %111 = load i8*, i8** %14, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 @svn_opt_parse_revision(%struct.TYPE_7__* %12, %struct.TYPE_7__* %13, i8* %111, i32* %112)
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %33
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %150

122:                                              ; preds = %117, %114
  %123 = load i8*, i8** %8, align 8
  %124 = call i64 @strncmp(i8* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %122
  %127 = load i8*, i8** %8, align 8
  %128 = call i8* @strchr(i8* %127, i8 signext 64)
  store i8* %128, i8** %16, align 8
  %129 = load i8*, i8** %16, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load i8*, i8** %8, align 8
  %133 = call i8* @strrchr(i8* %132, i8 signext 64)
  %134 = load i8*, i8** %16, align 8
  %135 = icmp eq i8* %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %138 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8*, i8** %8, align 8
  %142 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %137, i32* null, i32 %138, i8* %140, i8* %141)
  store i32* %142, i32** %5, align 8
  br label %166

143:                                              ; preds = %131, %126
  br label %144

144:                                              ; preds = %143, %122
  %145 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %146 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %145, i32* null, i32 %146, i8* %148)
  store i32* %149, i32** %5, align 8
  br label %166

150:                                              ; preds = %117
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %158 = bitcast %struct.TYPE_6__* %156 to i8*
  %159 = bitcast %struct.TYPE_6__* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 8, i1 false)
  br label %164

160:                                              ; preds = %4
  %161 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %160, %150
  %165 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %165, i32** %5, align 8
  br label %166

166:                                              ; preds = %164, %144, %136
  %167 = load i32*, i32** %5, align 8
  ret i32* %167
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_opt__split_arg_at_peg_revision(i8**, i8**, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_path_uri_decode(i8*, i32*) #1

declare dso_local i32 @svn_opt_parse_revision(%struct.TYPE_7__*, %struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
