; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_skel_add_prop_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_skel_add_prop_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }

@SVN_WC__CONFLICT_KIND_PROP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_skel_add_prop_conflict(%struct.TYPE_12__* %0, i32* %1, i8* %2, i8* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca %struct.TYPE_12__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %28 = load i8*, i8** @SVN_WC__CONFLICT_KIND_PROP, align 8
  %29 = call i32 @conflict__get_conflict(%struct.TYPE_12__** %21, %struct.TYPE_12__* %27, i8* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @SVN_ERR_ASSERT(i32 %34)
  %36 = load i32*, i32** %19, align 8
  %37 = call %struct.TYPE_12__* @svn_skel__make_empty_list(i32* %36)
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %21, align 8
  %38 = load i32*, i32** %17, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %10
  %41 = load i32*, i32** %17, align 8
  %42 = load i32*, i32** %19, align 8
  %43 = call i32 @svn_skel__unparse_proplist(%struct.TYPE_12__** %22, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %47 = call i32 @svn_skel__prepend(%struct.TYPE_12__* %45, %struct.TYPE_12__* %46)
  br label %52

48:                                               ; preds = %10
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = call i32 @svn_skel__prepend_str(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %49, i32* %50)
  br label %52

52:                                               ; preds = %48, %40
  %53 = load i32*, i32** %15, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32*, i32** %15, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = call i32 @svn_skel__unparse_proplist(%struct.TYPE_12__** %22, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %62 = call i32 @svn_skel__prepend(%struct.TYPE_12__* %60, %struct.TYPE_12__* %61)
  br label %67

63:                                               ; preds = %52
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = call i32 @svn_skel__prepend_str(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %64, i32* %65)
  br label %67

67:                                               ; preds = %63, %55
  %68 = load i32*, i32** %16, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32*, i32** %16, align 8
  %72 = load i32*, i32** %19, align 8
  %73 = call i32 @svn_skel__unparse_proplist(%struct.TYPE_12__** %22, i32* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %77 = call i32 @svn_skel__prepend(%struct.TYPE_12__* %75, %struct.TYPE_12__* %76)
  br label %82

78:                                               ; preds = %67
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %80 = load i32*, i32** %19, align 8
  %81 = call i32 @svn_skel__prepend_str(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %79, i32* %80)
  br label %82

82:                                               ; preds = %78, %70
  %83 = load i32*, i32** %19, align 8
  %84 = call %struct.TYPE_12__* @svn_skel__make_empty_list(i32* %83)
  store %struct.TYPE_12__* %84, %struct.TYPE_12__** %23, align 8
  %85 = load i32*, i32** %20, align 8
  %86 = load i32*, i32** %18, align 8
  %87 = call i32* @apr_hash_first(i32* %85, i32* %86)
  store i32* %87, i32** %25, align 8
  br label %88

88:                                               ; preds = %99, %82
  %89 = load i32*, i32** %25, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i32*, i32** %19, align 8
  %93 = load i32*, i32** %25, align 8
  %94 = call i32 @apr_hash_this_key(i32* %93)
  %95 = call i8* @apr_pstrdup(i32* %92, i32 %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = call i32 @svn_skel__prepend_str(i8* %95, %struct.TYPE_12__* %96, i32* %97)
  br label %99

99:                                               ; preds = %91
  %100 = load i32*, i32** %25, align 8
  %101 = call i32* @apr_hash_next(i32* %100)
  store i32* %101, i32** %25, align 8
  br label %88

102:                                              ; preds = %88
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %105 = call i32 @svn_skel__prepend(%struct.TYPE_12__* %103, %struct.TYPE_12__* %104)
  %106 = load i32*, i32** %19, align 8
  %107 = call %struct.TYPE_12__* @svn_skel__make_empty_list(i32* %106)
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %24, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %102
  %111 = load i32*, i32** %12, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i32*, i32** %19, align 8
  %115 = load i32*, i32** %20, align 8
  %116 = call i32 @svn_wc__db_to_relpath(i8** %26, i32* %111, i8* %112, i8* %113, i32* %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i8*, i8** %26, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = call i32 @svn_skel__prepend_str(i8* %118, %struct.TYPE_12__* %119, i32* %120)
  br label %122

122:                                              ; preds = %110, %102
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %125 = call i32 @svn_skel__prepend(%struct.TYPE_12__* %123, %struct.TYPE_12__* %124)
  %126 = load i8*, i8** @SVN_WC__CONFLICT_KIND_PROP, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %128 = load i32*, i32** %19, align 8
  %129 = call i32 @svn_skel__prepend_str(i8* %126, %struct.TYPE_12__* %127, i32* %128)
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = call i32 @svn_skel__prepend(%struct.TYPE_12__* %130, %struct.TYPE_12__* %135)
  %137 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %137
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @conflict__get_conflict(%struct.TYPE_12__**, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_12__* @svn_skel__make_empty_list(i32*) #1

declare dso_local i32 @svn_skel__unparse_proplist(%struct.TYPE_12__**, i32*, i32*) #1

declare dso_local i32 @svn_skel__prepend(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @svn_skel__prepend_str(i8*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_wc__db_to_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
