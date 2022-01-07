; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_skel_add_text_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_skel_add_text_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@SVN_WC__CONFLICT_KIND_TEXT = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_skel_add_text_conflict(%struct.TYPE_11__* %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = load i8*, i8** @SVN_WC__CONFLICT_KIND_TEXT, align 8
  %24 = call i32 @conflict__get_conflict(%struct.TYPE_11__** %17, %struct.TYPE_11__* %22, i8* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @SVN_ERR_ASSERT(i32 %29)
  %31 = load i32*, i32** %15, align 8
  %32 = call %struct.TYPE_11__* @svn_skel__make_empty_list(i32* %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %17, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = call %struct.TYPE_11__* @svn_skel__make_empty_list(i32* %33)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %18, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %8
  %38 = load i32*, i32** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @svn_wc__db_to_relpath(i8** %19, i32* %38, i8* %39, i8* %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i8*, i8** %19, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @svn_skel__prepend_str(i8* %45, %struct.TYPE_11__* %46, i32* %47)
  br label %54

49:                                               ; preds = %8
  %50 = load i32*, i32** %15, align 8
  %51 = call %struct.TYPE_11__* @svn_skel__make_empty_list(i32* %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %53 = call i32 @svn_skel__prepend(%struct.TYPE_11__* %51, %struct.TYPE_11__* %52)
  br label %54

54:                                               ; preds = %49, %37
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i32*, i32** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @svn_wc__db_to_relpath(i8** %20, i32* %58, i8* %59, i8* %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i8*, i8** %20, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @svn_skel__prepend_str(i8* %65, %struct.TYPE_11__* %66, i32* %67)
  br label %74

69:                                               ; preds = %54
  %70 = load i32*, i32** %15, align 8
  %71 = call %struct.TYPE_11__* @svn_skel__make_empty_list(i32* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %73 = call i32 @svn_skel__prepend(%struct.TYPE_11__* %71, %struct.TYPE_11__* %72)
  br label %74

74:                                               ; preds = %69, %57
  %75 = load i8*, i8** %13, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load i32*, i32** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @svn_wc__db_to_relpath(i8** %21, i32* %78, i8* %79, i8* %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i8*, i8** %21, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @svn_skel__prepend_str(i8* %85, %struct.TYPE_11__* %86, i32* %87)
  br label %94

89:                                               ; preds = %74
  %90 = load i32*, i32** %15, align 8
  %91 = call %struct.TYPE_11__* @svn_skel__make_empty_list(i32* %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %93 = call i32 @svn_skel__prepend(%struct.TYPE_11__* %91, %struct.TYPE_11__* %92)
  br label %94

94:                                               ; preds = %89, %77
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %97 = call i32 @svn_skel__prepend(%struct.TYPE_11__* %95, %struct.TYPE_11__* %96)
  %98 = load i8*, i8** @SVN_WC__CONFLICT_KIND_TEXT, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @svn_skel__prepend_str(i8* %98, %struct.TYPE_11__* %99, i32* %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = call i32 @svn_skel__prepend(%struct.TYPE_11__* %102, %struct.TYPE_11__* %107)
  %109 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %109
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @conflict__get_conflict(%struct.TYPE_11__**, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_11__* @svn_skel__make_empty_list(i32*) #1

declare dso_local i32 @svn_wc__db_to_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_skel__prepend_str(i8*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @svn_skel__prepend(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
