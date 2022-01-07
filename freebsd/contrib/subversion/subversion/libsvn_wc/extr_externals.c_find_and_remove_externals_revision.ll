; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_find_and_remove_externals_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_find_and_remove_externals_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@svn_opt_revision_number = common dso_local global i64 0, align 8
@svn_opt_revision_date = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"-r%s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_CLIENT_INVALID_EXTERNALS_DESCRIPTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Error parsing %s property on '%s': '%s'\00", align 1
@SVN_PROP_EXTERNALS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i8**, i32, %struct.TYPE_6__*, i8*, i8*, i32*)* @find_and_remove_externals_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_and_remove_externals_revision(i32* %0, i8** %1, i8** %2, i32 %3, %struct.TYPE_6__* %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_7__, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %138, %8
  %25 = load i32, i32* %18, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %141

27:                                               ; preds = %24
  %28 = load i8**, i8*** %12, align 8
  %29 = load i32, i32* %18, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %19, align 8
  %33 = load i8*, i8** %19, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %137

38:                                               ; preds = %27
  %39 = load i8*, i8** %19, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 114
  br i1 %43, label %44, label %137

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %46 = load i64, i64* @svn_opt_revision_unspecified, align 8
  store i64 %46, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i8*, i8** %19, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 4
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %147

59:                                               ; preds = %55
  store i32 2, i32* %22, align 4
  %60 = load i8**, i8*** %12, align 8
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %21, align 8
  br label %73

66:                                               ; preds = %44
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %147

70:                                               ; preds = %66
  store i32 1, i32* %22, align 4
  %71 = load i8*, i8** %19, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  store i8* %72, i8** %21, align 8
  br label %73

73:                                               ; preds = %70, %59
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i8*, i8** %21, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = call i64 @svn_opt_parse_revision(%struct.TYPE_8__* %75, %struct.TYPE_7__* %20, i8* %76, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %147

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %147

87:                                               ; preds = %81
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @svn_opt_revision_number, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @svn_opt_revision_date, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %147

102:                                              ; preds = %94, %87
  %103 = load i32, i32* %18, align 4
  store i32 %103, i32* %23, align 4
  br label %104

104:                                              ; preds = %122, %102
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %22, align 4
  %108 = sub nsw i32 %106, %107
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load i8**, i8*** %12, align 8
  %112 = load i32, i32* %23, align 4
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %111, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load i8**, i8*** %12, align 8
  %119 = load i32, i32* %23, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  store i8* %117, i8** %121, align 8
  br label %122

122:                                              ; preds = %110
  %123 = load i32, i32* %23, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %23, align 4
  br label %104

125:                                              ; preds = %104
  %126 = load i8**, i8*** %12, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %22, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %126, i64 %130
  store i8* null, i8** %131, align 8
  %132 = load i32*, i32** %17, align 8
  %133 = load i8*, i8** %21, align 8
  %134 = call i8* @apr_psprintf(i32* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %133)
  %135 = load i8**, i8*** %11, align 8
  store i8* %134, i8** %135, align 8
  %136 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %136, i32** %9, align 8
  br label %154

137:                                              ; preds = %38, %27
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %18, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %18, align 4
  br label %24

141:                                              ; preds = %24
  %142 = load i32, i32* %13, align 4
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %145, i32** %9, align 8
  br label %154

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %101, %86, %80, %69, %58
  %148 = load i32, i32* @SVN_ERR_CLIENT_INVALID_EXTERNALS_DESCRIPTION, align 4
  %149 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %150 = load i32, i32* @SVN_PROP_EXTERNALS, align 4
  %151 = load i8*, i8** %15, align 8
  %152 = load i8*, i8** %16, align 8
  %153 = call i32* @svn_error_createf(i32 %148, i32* null, i32 %149, i32 %150, i8* %151, i8* %152)
  store i32* %153, i32** %9, align 8
  br label %154

154:                                              ; preds = %147, %144, %125
  %155 = load i32*, i32** %9, align 8
  ret i32* %155
}

declare dso_local i64 @svn_opt_parse_revision(%struct.TYPE_8__*, %struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
