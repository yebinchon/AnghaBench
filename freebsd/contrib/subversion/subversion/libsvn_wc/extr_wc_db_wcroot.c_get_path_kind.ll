; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_get_path_kind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_get_path_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_symlink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_7__*, i8*, i32*)* @get_path_kind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_path_kind(i32* %0, %struct.TYPE_7__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strcmp(i32 %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %33, i32** %5, align 8
  br label %78

34:                                               ; preds = %17, %4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_8__* @svn_stringbuf_create(i8* %41, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %48, align 8
  br label %56

49:                                               ; preds = %34
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @svn_stringbuf_set(%struct.TYPE_8__* %53, i8* %54)
  br label %56

56:                                               ; preds = %49, %40
  %57 = load i8*, i8** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @svn_io_check_special_path(i8* %57, i32* %11, i64* %10, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @svn_node_symlink, align 4
  br label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %77, i32** %5, align 8
  br label %78

78:                                               ; preds = %67, %27
  %79 = load i32*, i32** %5, align 8
  ret i32* %79
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @svn_stringbuf_create(i8*, i32) #1

declare dso_local i32 @svn_stringbuf_set(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_special_path(i8*, i32*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
