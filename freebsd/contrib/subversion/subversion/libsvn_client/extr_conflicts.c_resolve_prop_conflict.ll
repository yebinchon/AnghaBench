; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_prop_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_prop_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i32* }
%struct.TYPE_15__ = type { i32*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@svn_client_conflict_option_merged_text = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32*)* @resolve_prop_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_prop_conflict(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %13, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = call i64 @svn_client_conflict_option_get_id(%struct.TYPE_16__* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @conflict_option_id_to_wc_conflict_choice(i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_15__* %27)
  store i8* %28, i8** %11, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @svn_client_conflict_option_merged_text, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %15, align 8
  br label %39

38:                                               ; preds = %4
  store i32* null, i32** %15, align 8
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32* @svn_wc__acquire_write_lock_for_resolve(i8** %12, i32 %42, i8* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32* @svn_wc__conflict_prop_mark_resolved(i32 %50, i8* %51, i8* %52, i32 %53, i32* %54, i32 %57, i32 %60, i32* %61)
  store i32* %62, i32** %14, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @svn_wc__release_write_lock(i32 %66, i8* %67, i32* %68)
  %70 = call i32* @svn_error_compose_create(i32* %63, i32 %69)
  store i32* %70, i32** %14, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @svn_io_sleep_for_timestamps(i8* %71, i32* %72)
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @SVN_ERR(i32* %74)
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %39
  %82 = load i32*, i32** %8, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32* @apr_hash_first(i32* %82, i32 %85)
  store i32* %86, i32** %16, align 8
  br label %87

87:                                               ; preds = %109, %81
  %88 = load i32*, i32** %16, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %112

90:                                               ; preds = %87
  %91 = load i32*, i32** %16, align 8
  %92 = call i8* @apr_hash_this_key(i32* %91)
  store i8* %92, i8** %17, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @apr_hash_pool_get(i32 %98)
  %100 = load i8*, i8** %17, align 8
  %101 = call i8* @apr_pstrdup(i32 %99, i8* %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = call i32 @svn_hash_sets(i32 %95, i8* %101, %struct.TYPE_16__* %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = call i32 @svn_hash_sets(i32 %106, i8* %107, %struct.TYPE_16__* null)
  br label %109

109:                                              ; preds = %90
  %110 = load i32*, i32** %16, align 8
  %111 = call i32* @apr_hash_next(i32* %110)
  store i32* %111, i32** %16, align 8
  br label %87

112:                                              ; preds = %87
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  br label %151

115:                                              ; preds = %39
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @apr_hash_pool_get(i32 %121)
  %123 = load i8*, i8** %13, align 8
  %124 = call i8* @apr_pstrdup(i32 %122, i8* %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = call i32 @svn_hash_sets(i32 %118, i8* %124, %struct.TYPE_16__* %125)
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = call i32 @svn_hash_sets(i32 %129, i8* %130, %struct.TYPE_16__* null)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @apr_hash_count(i32 %134)
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %115
  %138 = load i32*, i32** %8, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32* @apr_hash_first(i32* %138, i32 %141)
  %143 = call i8* @apr_hash_this_key(i32* %142)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  store i32* %144, i32** %146, align 8
  br label %150

147:                                              ; preds = %115
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %147, %137
  br label %151

151:                                              ; preds = %150, %112
  %152 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %152
}

declare dso_local i64 @svn_client_conflict_option_get_id(%struct.TYPE_16__*) #1

declare dso_local i32 @conflict_option_id_to_wc_conflict_choice(i64) #1

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_15__*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__conflict_prop_mark_resolved(i32, i8*, i8*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i8*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, %struct.TYPE_16__*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @apr_hash_pool_get(i32) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i64 @apr_hash_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
