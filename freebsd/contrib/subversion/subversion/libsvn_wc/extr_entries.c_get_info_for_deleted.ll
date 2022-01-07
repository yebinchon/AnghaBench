; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_get_info_for_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_get_info_for_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*, i8**, i32**, i32**, i32*, i8*, i32*, i8*, %struct.TYPE_4__*, i64, i64, i32*, i32*)* @get_info_for_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_info_for_deleted(%struct.TYPE_4__* %0, i32* %1, i8** %2, i32** %3, i32** %4, i32* %5, i8* %6, i32* %7, i8* %8, %struct.TYPE_4__* %9, i64 %10, i64 %11, i32* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_4__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %15, align 8
  store i32* %1, i32** %16, align 8
  store i8** %2, i8*** %17, align 8
  store i32** %3, i32*** %18, align 8
  store i32** %4, i32*** %19, align 8
  store i32* %5, i32** %20, align 8
  store i8* %6, i8** %21, align 8
  store i32* %7, i32** %22, align 8
  store i8* %8, i8** %23, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %24, align 8
  store i64 %10, i64* %25, align 8
  store i64 %11, i64* %26, align 8
  store i32* %12, i32** %27, align 8
  store i32* %13, i32** %28, align 8
  %35 = load i64, i64* %25, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %14
  %38 = load i64, i64* %26, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %16, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8**, i8*** %17, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 7
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  %53 = load i32**, i32*** %18, align 8
  %54 = load i32**, i32*** %19, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32*, i32** %22, align 8
  %58 = load i8*, i8** %23, align 8
  %59 = load i32*, i32** %27, align 8
  %60 = load i32*, i32** %28, align 8
  %61 = call i32 @svn_wc__db_base_get_info_internal(i64* null, i32* %41, i32* %43, i8** %44, i32* %29, i32* %46, i32* %48, i32* %50, i32* %52, i32** %53, i32* null, i32** %54, i32* %56, i32* null, i32* null, i32* %57, i8* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32*, i32** %22, align 8
  %68 = load i32, i32* %29, align 4
  %69 = load i32*, i32** %27, align 8
  %70 = call i32 @svn_wc__db_fetch_repos_info(i32* %64, i32* %66, i32* %67, i32 %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  br label %147

72:                                               ; preds = %37, %14
  %73 = load i32*, i32** %16, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 7
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = load i32**, i32*** %18, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32*, i32** %20, align 8
  %86 = load i8*, i8** %21, align 8
  %87 = load i32*, i32** %27, align 8
  %88 = load i32*, i32** %28, align 8
  %89 = call i32 @svn_wc__db_read_pristine_info(i32* null, i32* %73, i32* %75, i32* %77, i32* %79, i32* %81, i32** %82, i32* null, i32* %84, i32* null, i32* %85, i8* %86, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** %22, align 8
  %92 = load i8*, i8** %23, align 8
  %93 = load i32*, i32** %28, align 8
  %94 = load i32*, i32** %28, align 8
  %95 = call i32 @svn_wc__db_scan_deletion_internal(i32* null, i32* null, i8** %30, i32* null, i32* %91, i8* %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i8*, i8** %30, align 8
  %98 = icmp ne i8* %97, null
  %99 = zext i1 %98 to i32
  %100 = call i32 @SVN_ERR_ASSERT(i32 %99)
  %101 = load i8*, i8** %30, align 8
  %102 = load i32*, i32** %28, align 8
  %103 = call i8* @svn_relpath_dirname(i8* %101, i32* %102)
  store i8* %103, i8** %32, align 8
  %104 = load i32*, i32** %22, align 8
  %105 = load i8*, i8** %32, align 8
  %106 = load i32*, i32** %27, align 8
  %107 = load i32*, i32** %28, align 8
  %108 = call i32 @svn_wc__db_scan_addition_internal(i32* null, i32* null, i8** %31, i32* %33, i32* null, i32* null, i32* null, i32* %104, i8* %105, i32* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32*, i32** %22, align 8
  %115 = load i32, i32* %33, align 4
  %116 = load i32*, i32** %27, align 8
  %117 = call i32 @svn_wc__db_fetch_repos_info(i32* %111, i32* %113, i32* %114, i32 %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i8*, i8** %31, align 8
  %120 = load i8*, i8** %32, align 8
  %121 = load i8*, i8** %23, align 8
  %122 = call i32 @svn_relpath_skip_ancestor(i8* %120, i8* %121)
  %123 = load i32*, i32** %27, align 8
  %124 = call i8* @svn_relpath_join(i8* %119, i32 %122, i32* %123)
  %125 = load i8**, i8*** %17, align 8
  store i8* %124, i8** %125, align 8
  %126 = load i64, i64* %25, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %72
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32**, i32*** %19, align 8
  %132 = load i32*, i32** %22, align 8
  %133 = load i8*, i8** %23, align 8
  %134 = load i32*, i32** %27, align 8
  %135 = load i32*, i32** %28, align 8
  %136 = call i32 @svn_wc__db_base_get_info_internal(i64* %34, i32* null, i32* %130, i8** null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** null, i32* null, i32** %131, i32* null, i32* null, i32* null, i32* %132, i8* %133, i32* %134, i32* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load i64, i64* %34, align 8
  %139 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %128
  %142 = load i32, i32* @TRUE, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %141, %128
  br label %146

146:                                              ; preds = %145, %72
  br label %147

147:                                              ; preds = %146, %40
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @SVN_IS_VALID_REVNUM(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %147
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %155 = icmp ne %struct.TYPE_4__* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %156, %153, %147
  %163 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %163
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_base_get_info_internal(i64*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32**, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_fetch_repos_info(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_read_pristine_info(i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_scan_deletion_internal(i32*, i32*, i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_scan_addition_internal(i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
