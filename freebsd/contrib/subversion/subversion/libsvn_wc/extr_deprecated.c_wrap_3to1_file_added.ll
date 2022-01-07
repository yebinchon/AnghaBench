; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_3to1_file_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_3to1_file_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.diff_callbacks_wrapper_baton = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, i32*, i8*, %struct.TYPE_6__*, i32*, i32)*, i32 (i32*, i32*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32)* }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i8*, i8*, %struct.TYPE_6__*, i32*, i8*)* @wrap_3to1_file_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_3to1_file_added(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4, i8* %5, i8* %6, i32 %7, i32 %8, i8* %9, i8* %10, %struct.TYPE_6__* %11, i32* %12, i8* %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_6__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.diff_callbacks_wrapper_baton*, align 8
  store i32* %0, i32** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32* %3, i32** %18, align 8
  store i8* %4, i8** %19, align 8
  store i8* %5, i8** %20, align 8
  store i8* %6, i8** %21, align 8
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i8* %9, i8** %24, align 8
  store i8* %10, i8** %25, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %26, align 8
  store i32* %12, i32** %27, align 8
  store i8* %13, i8** %28, align 8
  %30 = load i8*, i8** %28, align 8
  %31 = bitcast i8* %30 to %struct.diff_callbacks_wrapper_baton*
  store %struct.diff_callbacks_wrapper_baton* %31, %struct.diff_callbacks_wrapper_baton** %29, align 8
  %32 = load i32*, i32** %18, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %14
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32*, i32** %18, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %14
  %38 = load %struct.diff_callbacks_wrapper_baton*, %struct.diff_callbacks_wrapper_baton** %29, align 8
  %39 = getelementptr inbounds %struct.diff_callbacks_wrapper_baton, %struct.diff_callbacks_wrapper_baton* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32 (i32*, i32*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32)*, i32 (i32*, i32*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32)** %41, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = load i8*, i8** %19, align 8
  %46 = load i8*, i8** %20, align 8
  %47 = load i8*, i8** %21, align 8
  %48 = load i32, i32* %22, align 4
  %49 = load i32, i32* %23, align 4
  %50 = load i8*, i8** %24, align 8
  %51 = load i8*, i8** %25, align 8
  %52 = load %struct.diff_callbacks_wrapper_baton*, %struct.diff_callbacks_wrapper_baton** %29, align 8
  %53 = getelementptr inbounds %struct.diff_callbacks_wrapper_baton, %struct.diff_callbacks_wrapper_baton* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %42(i32* %43, i32* %44, i8* %45, i8* %46, i8* %47, i32 %48, i32 %49, i8* %50, i8* %51, i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %37
  %62 = load %struct.diff_callbacks_wrapper_baton*, %struct.diff_callbacks_wrapper_baton** %29, align 8
  %63 = getelementptr inbounds %struct.diff_callbacks_wrapper_baton, %struct.diff_callbacks_wrapper_baton* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (i32*, i32*, i8*, %struct.TYPE_6__*, i32*, i32)*, i32 (i32*, i32*, i8*, %struct.TYPE_6__*, i32*, i32)** %65, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %71 = load i32*, i32** %27, align 8
  %72 = load %struct.diff_callbacks_wrapper_baton*, %struct.diff_callbacks_wrapper_baton** %29, align 8
  %73 = getelementptr inbounds %struct.diff_callbacks_wrapper_baton, %struct.diff_callbacks_wrapper_baton* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 %66(i32* %67, i32* %68, i8* %69, %struct.TYPE_6__* %70, i32* %71, i32 %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  br label %77

77:                                               ; preds = %61, %37
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %78
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
