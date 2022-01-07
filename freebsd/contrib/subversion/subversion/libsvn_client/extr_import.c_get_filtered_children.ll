; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_import.c_get_filtered_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_import.c_get_filtered_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (i32, %struct.TYPE_6__*, i32*)* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_skip = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@svn_wc_notify_lock_state_inapplicable = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*, i32*, i32*, i32 (i8*, i64*, i8*, i32*, i32*)*, i8*, %struct.TYPE_7__*, i32*, i32*)* @get_filtered_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_filtered_children(i32** %0, i8* %1, i32* %2, i32* %3, i32* %4, i32 (i8*, i64*, i8*, i32*, i32*)* %5, i8* %6, %struct.TYPE_7__* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32 (i8*, i64*, i8*, i32*, i32*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_6__*, align 8
  %28 = alloca i64, align 8
  store i32** %0, i32*** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 (i8*, i64*, i8*, i32*, i32*)* %5, i32 (i8*, i64*, i8*, i32*, i32*)** %16, align 8
  store i8* %6, i8** %17, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %29 = load i32*, i32** %20, align 8
  %30 = call i32* @svn_pool_create(i32* %29)
  store i32* %30, i32** %23, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* @TRUE, align 4
  %33 = load i32*, i32** %19, align 8
  %34 = load i32*, i32** %20, align 8
  %35 = call i32 @svn_io_get_dirents3(i32** %21, i8* %31, i32 %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %20, align 8
  %38 = load i32*, i32** %21, align 8
  %39 = call i32* @apr_hash_first(i32* %37, i32* %38)
  store i32* %39, i32** %22, align 8
  br label %40

40:                                               ; preds = %150, %10
  %41 = load i32*, i32** %22, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %153

43:                                               ; preds = %40
  %44 = load i32*, i32** %22, align 8
  %45 = call i8* @apr_hash_this_key(i32* %44)
  store i8* %45, i8** %24, align 8
  %46 = load i32*, i32** %22, align 8
  %47 = call i32* @apr_hash_this_val(i32* %46)
  store i32* %47, i32** %25, align 8
  %48 = load i32*, i32** %23, align 8
  %49 = call i32 @svn_pool_clear(i32* %48)
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %24, align 8
  %52 = load i32*, i32** %23, align 8
  %53 = call i8* @svn_dirent_join(i8* %50, i8* %51, i32* %52)
  store i8* %53, i8** %26, align 8
  %54 = load i8*, i8** %24, align 8
  %55 = load i32*, i32** %23, align 8
  %56 = call i64 @svn_wc_is_adm_dir(i8* %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %43
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %60, align 8
  %62 = icmp ne i32 (i32, %struct.TYPE_6__*, i32*)* %61, null
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = load i8*, i8** %26, align 8
  %65 = load i8*, i8** %24, align 8
  %66 = load i32*, i32** %23, align 8
  %67 = call i8* @svn_dirent_join(i8* %64, i8* %65, i32* %66)
  %68 = load i32, i32* @svn_wc_notify_skip, align 4
  %69 = load i32*, i32** %23, align 8
  %70 = call %struct.TYPE_6__* @svn_wc_create_notify(i8* %67, i32 %68, i32* %69)
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %27, align 8
  %71 = load i32, i32* @svn_node_dir, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* @svn_wc_notify_lock_state_inapplicable, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %89 = load i32*, i32** %23, align 8
  %90 = call i32 %84(i32 %87, %struct.TYPE_6__* %88, i32* %89)
  br label %91

91:                                               ; preds = %63, %58
  %92 = load i32*, i32** %21, align 8
  %93 = load i8*, i8** %24, align 8
  %94 = call i32 @svn_hash_sets(i32* %92, i8* %93, i32* null)
  br label %150

95:                                               ; preds = %43
  %96 = load i32*, i32** %13, align 8
  %97 = load i8*, i8** %26, align 8
  %98 = call i64 @svn_hash_gets(i32* %96, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32*, i32** %21, align 8
  %102 = load i8*, i8** %24, align 8
  %103 = call i32 @svn_hash_sets(i32* %101, i8* %102, i32* null)
  br label %150

104:                                              ; preds = %95
  %105 = load i32*, i32** %14, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i8*, i8** %24, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load i32*, i32** %23, align 8
  %111 = call i64 @svn_wc_match_ignore_list(i8* %108, i32* %109, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32*, i32** %21, align 8
  %115 = load i8*, i8** %24, align 8
  %116 = call i32 @svn_hash_sets(i32* %114, i8* %115, i32* null)
  br label %150

117:                                              ; preds = %107, %104
  %118 = load i32*, i32** %15, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i8*, i8** %24, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = load i32*, i32** %23, align 8
  %124 = call i64 @svn_wc_match_ignore_list(i8* %121, i32* %122, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32*, i32** %21, align 8
  %128 = load i8*, i8** %24, align 8
  %129 = call i32 @svn_hash_sets(i32* %127, i8* %128, i32* null)
  br label %150

130:                                              ; preds = %120, %117
  %131 = load i32 (i8*, i64*, i8*, i32*, i32*)*, i32 (i8*, i64*, i8*, i32*, i32*)** %16, align 8
  %132 = icmp ne i32 (i8*, i64*, i8*, i32*, i32*)* %131, null
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  %134 = load i64, i64* @FALSE, align 8
  store i64 %134, i64* %28, align 8
  %135 = load i32 (i8*, i64*, i8*, i32*, i32*)*, i32 (i8*, i64*, i8*, i32*, i32*)** %16, align 8
  %136 = load i8*, i8** %17, align 8
  %137 = load i8*, i8** %26, align 8
  %138 = load i32*, i32** %25, align 8
  %139 = load i32*, i32** %23, align 8
  %140 = call i32 %135(i8* %136, i64* %28, i8* %137, i32* %138, i32* %139)
  %141 = call i32 @SVN_ERR(i32 %140)
  %142 = load i64, i64* %28, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %133
  %145 = load i32*, i32** %21, align 8
  %146 = load i8*, i8** %24, align 8
  %147 = call i32 @svn_hash_sets(i32* %145, i8* %146, i32* null)
  br label %150

148:                                              ; preds = %133
  br label %149

149:                                              ; preds = %148, %130
  br label %150

150:                                              ; preds = %149, %144, %126, %113, %100, %91
  %151 = load i32*, i32** %22, align 8
  %152 = call i32* @apr_hash_next(i32* %151)
  store i32* %152, i32** %22, align 8
  br label %40

153:                                              ; preds = %40
  %154 = load i32*, i32** %23, align 8
  %155 = call i32 @svn_pool_destroy(i32* %154)
  %156 = load i32*, i32** %21, align 8
  %157 = load i32**, i32*** %11, align 8
  store i32* %156, i32** %157, align 8
  %158 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %158
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_get_dirents3(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i64 @svn_wc_is_adm_dir(i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i64 @svn_hash_gets(i32*, i8*) #1

declare dso_local i64 @svn_wc_match_ignore_list(i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
