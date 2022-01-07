; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc__prop_list_recursive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc__prop_list_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.propname_filter_baton_t = type { i8*, i8*, i32 (i8*, i8*, i32*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__prop_list_recursive(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3, i32 %4, %struct.TYPE_8__* %5, i32 (i8*, i8*, i32*, i32*)* %6, i8* %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32 (i8*, i8*, i32*, i32*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32 (i8*, i8*, i32*, i32*)*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.propname_filter_baton_t, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %17, align 8
  store i32 (i8*, i8*, i32*, i32*)* %6, i32 (i8*, i8*, i32*, i32*)** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  %28 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %18, align 8
  store i32 (i8*, i8*, i32*, i32*)* %28, i32 (i8*, i8*, i32*, i32*)** %23, align 8
  %29 = load i8*, i8** %19, align 8
  store i8* %29, i8** %24, align 8
  %30 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %18, align 8
  %31 = getelementptr inbounds %struct.propname_filter_baton_t, %struct.propname_filter_baton_t* %25, i32 0, i32 2
  store i32 (i8*, i8*, i32*, i32*)* %30, i32 (i8*, i8*, i32*, i32*)** %31, align 8
  %32 = load i8*, i8** %19, align 8
  %33 = getelementptr inbounds %struct.propname_filter_baton_t, %struct.propname_filter_baton_t* %25, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = getelementptr inbounds %struct.propname_filter_baton_t, %struct.propname_filter_baton_t* %25, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %18, align 8
  %37 = call i32 @SVN_ERR_ASSERT(i32 (i8*, i8*, i32*, i32*)* %36)
  %38 = load i8*, i8** %14, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %11
  %41 = bitcast %struct.propname_filter_baton_t* %25 to i8*
  store i8* %41, i8** %24, align 8
  store i32 (i8*, i8*, i32*, i32*)* @propname_filter_receiver, i32 (i8*, i8*, i32*, i32*)** %23, align 8
  br label %42

42:                                               ; preds = %40, %11
  %43 = load i32, i32* %15, align 4
  switch i32 %43, label %119 [
    i32 131, label %44
    i32 130, label %104
    i32 129, label %104
    i32 128, label %104
  ]

44:                                               ; preds = %42
  store i32* null, i32** %27, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %54 = load i32*, i32** %22, align 8
  %55 = call i32 @svn_hash_from_cstring_keys(i32** %27, %struct.TYPE_8__* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  br label %57

57:                                               ; preds = %52, %47, %44
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %13, align 8
  %62 = load i32*, i32** %27, align 8
  %63 = load i32*, i32** %22, align 8
  %64 = call i32 @svn_wc__internal_changelist_match(i32 %60, i8* %61, i32* %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  br label %121

67:                                               ; preds = %57
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = load i32*, i32** %22, align 8
  %76 = load i32*, i32** %22, align 8
  %77 = call i32 @svn_wc__db_read_pristine_props(i32** %26, i32 %73, i8* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %88

79:                                               ; preds = %67
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = load i32*, i32** %22, align 8
  %85 = load i32*, i32** %22, align 8
  %86 = call i32 @svn_wc__db_read_props(i32** %26, i32 %82, i8* %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  br label %88

88:                                               ; preds = %79, %70
  %89 = load i32*, i32** %26, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i32*, i32** %26, align 8
  %93 = call i32 @apr_hash_count(i32* %92)
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %23, align 8
  %97 = load i8*, i8** %24, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i32*, i32** %26, align 8
  %100 = load i32*, i32** %22, align 8
  %101 = call i32 %96(i8* %97, i8* %98, i32* %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  br label %103

103:                                              ; preds = %95, %91, %88
  br label %121

104:                                              ; preds = %42, %42, %42
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %112 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %23, align 8
  %113 = load i8*, i8** %24, align 8
  %114 = load i32, i32* %20, align 4
  %115 = load i8*, i8** %21, align 8
  %116 = load i32*, i32** %22, align 8
  %117 = call i32 @svn_wc__db_read_props_streamily(i32 %107, i8* %108, i32 %109, i32 %110, %struct.TYPE_8__* %111, i32 (i8*, i8*, i32*, i32*)* %112, i8* %113, i32 %114, i8* %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  br label %121

119:                                              ; preds = %42
  %120 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %121

121:                                              ; preds = %119, %104, %103, %66
  %122 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %122
}

declare dso_local i32 @SVN_ERR_ASSERT(i32 (i8*, i8*, i32*, i32*)*) #1

declare dso_local i32 @propname_filter_receiver(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_hash_from_cstring_keys(i32**, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_wc__internal_changelist_match(i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_pristine_props(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_props(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @apr_hash_count(i32*) #1

declare dso_local i32 @svn_wc__db_read_props_streamily(i32, i8*, i32, i32, %struct.TYPE_8__*, i32 (i8*, i8*, i32*, i32*)*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
