; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_file_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_file_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, i32*, i8*, i8*, i32, i32*, i32*, i32*, i32, i32*)* }

@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_8__*, i32*)* @wrap_file_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_file_deleted(i8* %0, i32* %1, i8* %2, i32* %3, i8* %4, %struct.TYPE_8__* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %15, align 8
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  store i32 %22, i32* %17, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = call i32 @wrap_ensure_empty_file(%struct.TYPE_7__* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (i32*, i32*, i8*, i8*, i32, i32*, i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i8*, i8*, i32, i32*, i32*, i32*, i32, i32*)** %30, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %7
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %42 = call i32* @svn_prop_get_value(i32* %40, i32 %41)
  br label %44

43:                                               ; preds = %7
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32* [ %42, %39 ], [ null, %43 ]
  %46 = load i32*, i32** %11, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 %31(i32* %17, i32* %16, i8* %32, i8* %33, i32 %36, i32* %45, i32* null, i32* %46, i32 %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %53
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @wrap_ensure_empty_file(%struct.TYPE_7__*, i32*) #1

declare dso_local i32* @svn_prop_get_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
