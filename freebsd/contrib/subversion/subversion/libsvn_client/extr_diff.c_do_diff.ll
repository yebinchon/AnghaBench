; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_do_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_do_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_opt_revision_working = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i64*, i32*, i8*, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i64, i32, i64, i32*, i64, i32*, i32*, i32*, i32*)* @do_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_diff(i8** %0, i64* %1, i32* %2, i8* %3, i8* %4, %struct.TYPE_15__* %5, %struct.TYPE_15__* %6, %struct.TYPE_15__* %7, i64 %8, i32 %9, i64 %10, i32* %11, i64 %12, i32* %13, i32* %14, i32* %15, i32* %16) #0 {
  %18 = alloca i8**, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca %struct.TYPE_15__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  store i8** %0, i8*** %18, align 8
  store i64* %1, i64** %19, align 8
  store i32* %2, i32** %20, align 8
  store i8* %3, i8** %21, align 8
  store i8* %4, i8** %22, align 8
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %25, align 8
  store i64 %8, i64* %26, align 8
  store i32 %9, i32* %27, align 4
  store i64 %10, i64* %28, align 8
  store i32* %11, i32** %29, align 8
  store i64 %12, i64* %30, align 8
  store i32* %13, i32** %31, align 8
  store i32* %14, i32** %32, align 8
  store i32* %15, i32** %33, align 8
  store i32* %16, i32** %34, align 8
  %39 = load i8*, i8** %21, align 8
  %40 = load i8*, i8** %22, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %44 = call i32 @check_paths(i64* %35, i64* %36, i8* %39, i8* %40, %struct.TYPE_15__* %41, %struct.TYPE_15__* %42, %struct.TYPE_15__* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i64, i64* %35, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %98

48:                                               ; preds = %17
  %49 = load i64, i64* %36, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load i8**, i8*** %18, align 8
  %53 = load i64*, i64** %19, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = load i8*, i8** %21, align 8
  %56 = load i8*, i8** %22, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %60 = load i32, i32* %27, align 4
  %61 = load i64, i64* %28, align 8
  %62 = load i64, i64* %30, align 8
  %63 = load i32*, i32** %31, align 8
  %64 = load i32*, i32** %32, align 8
  %65 = load i32*, i32** %33, align 8
  %66 = load i32*, i32** %34, align 8
  %67 = call i32 @diff_repos_repos(i8** %52, i64* %53, i32* %54, i8* %55, i8* %56, %struct.TYPE_15__* %57, %struct.TYPE_15__* %58, %struct.TYPE_15__* %59, i32 %60, i64 %61, i64 %62, i32* %63, i32* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %97

69:                                               ; preds = %48
  %70 = load i8**, i8*** %18, align 8
  %71 = load i64*, i64** %19, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = load i8*, i8** %21, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %75 = load i64, i64* %26, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  br label %81

79:                                               ; preds = %69
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi %struct.TYPE_15__* [ %78, %77 ], [ %80, %79 ]
  %83 = load i8*, i8** %22, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @FALSE, align 4
  %88 = load i32, i32* %27, align 4
  %89 = load i64, i64* %28, align 8
  %90 = load i32*, i32** %29, align 8
  %91 = load i32*, i32** %31, align 8
  %92 = load i32*, i32** %32, align 8
  %93 = load i32*, i32** %33, align 8
  %94 = load i32*, i32** %34, align 8
  %95 = call i32 @diff_repos_wc(i8** %70, i64* %71, i32* %72, i8* %73, %struct.TYPE_15__* %74, %struct.TYPE_15__* %82, i8* %83, i64 %86, i32 %87, i32 %88, i64 %89, i32* %90, i32* %91, i32* %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  br label %97

97:                                               ; preds = %81, %51
  br label %180

98:                                               ; preds = %17
  %99 = load i64, i64* %36, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %98
  %102 = load i8**, i8*** %18, align 8
  %103 = load i64*, i64** %19, align 8
  %104 = load i32*, i32** %20, align 8
  %105 = load i8*, i8** %22, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %107 = load i64, i64* %26, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  br label %113

111:                                              ; preds = %101
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi %struct.TYPE_15__* [ %110, %109 ], [ %112, %111 ]
  %115 = load i8*, i8** %21, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @TRUE, align 4
  %120 = load i32, i32* %27, align 4
  %121 = load i64, i64* %28, align 8
  %122 = load i32*, i32** %29, align 8
  %123 = load i32*, i32** %31, align 8
  %124 = load i32*, i32** %32, align 8
  %125 = load i32*, i32** %33, align 8
  %126 = load i32*, i32** %34, align 8
  %127 = call i32 @diff_repos_wc(i8** %102, i64* %103, i32* %104, i8* %105, %struct.TYPE_15__* %106, %struct.TYPE_15__* %114, i8* %115, i64 %118, i32 %119, i32 %120, i64 %121, i32* %122, i32* %123, i32* %124, i32* %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  br label %179

129:                                              ; preds = %98
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @svn_opt_revision_working, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %161

135:                                              ; preds = %129
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @svn_opt_revision_working, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %135
  %142 = load i8*, i8** %21, align 8
  %143 = load i32*, i32** %34, align 8
  %144 = call i32 @svn_dirent_get_absolute(i8** %37, i8* %142, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  %146 = load i8*, i8** %22, align 8
  %147 = load i32*, i32** %34, align 8
  %148 = call i32 @svn_dirent_get_absolute(i8** %38, i8* %146, i32* %147)
  %149 = call i32 @SVN_ERR(i32 %148)
  %150 = load i8**, i8*** %18, align 8
  %151 = load i64*, i64** %19, align 8
  %152 = load i8*, i8** %37, align 8
  %153 = load i8*, i8** %38, align 8
  %154 = load i32, i32* %27, align 4
  %155 = load i32*, i32** %31, align 8
  %156 = load i32*, i32** %32, align 8
  %157 = load i32*, i32** %33, align 8
  %158 = load i32*, i32** %34, align 8
  %159 = call i32 @svn_client__arbitrary_nodes_diff(i8** %150, i64* %151, i8* %152, i8* %153, i32 %154, i32* %155, i32* %156, i32* %157, i32* %158)
  %160 = call i32 @SVN_ERR(i32 %159)
  br label %178

161:                                              ; preds = %135, %129
  %162 = load i8**, i8*** %18, align 8
  %163 = load i64*, i64** %19, align 8
  %164 = load i32*, i32** %20, align 8
  %165 = load i8*, i8** %21, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %167 = load i8*, i8** %22, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %169 = load i32, i32* %27, align 4
  %170 = load i64, i64* %28, align 8
  %171 = load i32*, i32** %29, align 8
  %172 = load i32*, i32** %31, align 8
  %173 = load i32*, i32** %32, align 8
  %174 = load i32*, i32** %33, align 8
  %175 = load i32*, i32** %34, align 8
  %176 = call i32 @diff_wc_wc(i8** %162, i64* %163, i32* %164, i8* %165, %struct.TYPE_15__* %166, i8* %167, %struct.TYPE_15__* %168, i32 %169, i64 %170, i32* %171, i32* %172, i32* %173, i32* %174, i32* %175)
  %177 = call i32 @SVN_ERR(i32 %176)
  br label %178

178:                                              ; preds = %161, %141
  br label %179

179:                                              ; preds = %178, %113
  br label %180

180:                                              ; preds = %179, %97
  %181 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %181
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_paths(i64*, i64*, i8*, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @diff_repos_repos(i8**, i64*, i32*, i8*, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @diff_repos_wc(i8**, i64*, i32*, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, i8*, i64, i32, i32, i64, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_client__arbitrary_nodes_diff(i8**, i64*, i8*, i8*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @diff_wc_wc(i8**, i64*, i32*, i8*, %struct.TYPE_15__*, i8*, %struct.TYPE_15__*, i32, i64, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
