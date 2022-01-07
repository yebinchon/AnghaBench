; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_mergeinfo_hash_diff_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_mergeinfo_hash_diff_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mergeinfo_diff_baton = type { i32, i64, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@svn_hash_diff_key_both = common dso_local global i32 0, align 4
@svn_hash_diff_key_a = common dso_local global i32 0, align 4
@svn_hash_diff_key_b = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, i8*)* @mergeinfo_hash_diff_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mergeinfo_hash_diff_cb(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mergeinfo_diff_baton*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.mergeinfo_diff_baton*
  store %struct.mergeinfo_diff_baton* %16, %struct.mergeinfo_diff_baton** %9, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @svn_hash_diff_key_both, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %90

21:                                               ; preds = %4
  %22 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %23 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_10__* @apr_hash_get(i32 %24, i8* %25, i32 %26)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %10, align 8
  %28 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %29 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.TYPE_10__* @apr_hash_get(i32 %30, i8* %31, i32 %32)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %11, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %37 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %40 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @svn_rangelist_diff(%struct.TYPE_10__** %13, %struct.TYPE_10__** %14, %struct.TYPE_10__* %34, %struct.TYPE_10__* %35, i32 %38, i32 %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %45 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %21
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %55 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %58 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @apr_pstrmemdup(i32 %59, i8* %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %65 = call i32 @apr_hash_set(i64 %56, i32 %62, i32 %63, %struct.TYPE_10__* %64)
  br label %66

66:                                               ; preds = %53, %48, %21
  %67 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %68 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %66
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %78 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %81 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @apr_pstrmemdup(i32 %82, i8* %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %88 = call i32 @apr_hash_set(i64 %79, i32 %85, i32 %86, %struct.TYPE_10__* %87)
  br label %89

89:                                               ; preds = %76, %71, %66
  br label %156

90:                                               ; preds = %4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @svn_hash_diff_key_a, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %90
  %95 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %96 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %94
  %100 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %101 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call %struct.TYPE_10__* @apr_hash_get(i32 %102, i8* %103, i32 %104)
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %10, align 8
  %106 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %107 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %110 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @apr_pstrmemdup(i32 %111, i8* %112, i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %117 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %118 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.TYPE_10__* @svn_rangelist_dup(%struct.TYPE_10__* %116, i32 %119)
  %121 = call i32 @apr_hash_set(i64 %108, i32 %114, i32 %115, %struct.TYPE_10__* %120)
  br label %155

122:                                              ; preds = %94, %90
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @svn_hash_diff_key_b, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %154

126:                                              ; preds = %122
  %127 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %128 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %126
  %132 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %133 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call %struct.TYPE_10__* @apr_hash_get(i32 %134, i8* %135, i32 %136)
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %11, align 8
  %138 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %139 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %142 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @apr_pstrmemdup(i32 %143, i8* %144, i32 %145)
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %149 = load %struct.mergeinfo_diff_baton*, %struct.mergeinfo_diff_baton** %9, align 8
  %150 = getelementptr inbounds %struct.mergeinfo_diff_baton, %struct.mergeinfo_diff_baton* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call %struct.TYPE_10__* @svn_rangelist_dup(%struct.TYPE_10__* %148, i32 %151)
  %153 = call i32 @apr_hash_set(i64 %140, i32 %146, i32 %147, %struct.TYPE_10__* %152)
  br label %154

154:                                              ; preds = %131, %126, %122
  br label %155

155:                                              ; preds = %154, %99
  br label %156

156:                                              ; preds = %155, %89
  %157 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %157
}

declare dso_local %struct.TYPE_10__* @apr_hash_get(i32, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_rangelist_diff(%struct.TYPE_10__**, %struct.TYPE_10__**, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @apr_hash_set(i64, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @apr_pstrmemdup(i32, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @svn_rangelist_dup(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
