; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_file_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_file_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32*, i32*, i64*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, i32, i32*)* }

@FALSE = common dso_local global i64 0, align 8
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i8*, i32*, i32*, i64, i32*, i8*, %struct.TYPE_11__*, i32*)* @wrap_file_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_file_changed(i8* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i8* %3, i8* %4, i32* %5, i32* %6, i64 %7, i32* %8, i8* %9, %struct.TYPE_11__* %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_11__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_10__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i64 %7, i64* %20, align 8
  store i32* %8, i32** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %23, align 8
  store i32* %11, i32** %24, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %25, align 8
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %26, align 8
  %33 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  store i32 %33, i32* %27, align 4
  %34 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  store i32 %34, i32* %28, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %36 = load i32*, i32** %24, align 8
  %37 = call i32 @wrap_ensure_empty_file(%struct.TYPE_10__* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %12
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %43 = icmp ne %struct.TYPE_12__* %42, null
  br label %44

44:                                               ; preds = %41, %12
  %45 = phi i1 [ false, %12 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32 (i32*, i32*, i64*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i64*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, i32, i32*)** %51, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i64, i64* %20, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i8*, i8** %16, align 8
  br label %59

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ null, %58 ]
  %61 = load i64, i64* %20, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i8*, i8** %17, align 8
  br label %66

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i8* [ %64, %63 ], [ null, %65 ]
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %18, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i32*, i32** %18, align 8
  %78 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %79 = call i32* @svn_prop_get_value(i32* %77, i32 %78)
  br label %81

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi i32* [ %79, %76 ], [ null, %80 ]
  %83 = load i32*, i32** %19, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32*, i32** %19, align 8
  %87 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %88 = call i32* @svn_prop_get_value(i32* %86, i32 %87)
  br label %90

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %85
  %91 = phi i32* [ %88, %85 ], [ null, %89 ]
  %92 = load i32*, i32** %21, align 8
  %93 = load i32*, i32** %18, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %24, align 8
  %98 = call i32 %52(i32* %27, i32* %28, i64* %26, i8* %53, i8* %60, i8* %67, i32 %70, i32 %73, i32* %82, i32* %91, i32* %92, i32* %93, i32 %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %100
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @wrap_ensure_empty_file(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @svn_prop_get_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
