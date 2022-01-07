; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_3to1_file_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_3to1_file_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.diff_callbacks_wrapper_baton = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, i32*, i8*, %struct.TYPE_6__*, i32*, i32)*, i32 (i32*, i32*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32)* }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i8*, i8*, %struct.TYPE_6__*, i32*, i8*)* @wrap_3to1_file_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_3to1_file_changed(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4, i8* %5, i8* %6, i32 %7, i32 %8, i8* %9, i8* %10, %struct.TYPE_6__* %11, i32* %12, i8* %13) #0 {
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
  %38 = load i8*, i8** %21, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load %struct.diff_callbacks_wrapper_baton*, %struct.diff_callbacks_wrapper_baton** %29, align 8
  %42 = getelementptr inbounds %struct.diff_callbacks_wrapper_baton, %struct.diff_callbacks_wrapper_baton* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32 (i32*, i32*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32)*, i32 (i32*, i32*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32)** %44, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = load i8*, i8** %19, align 8
  %49 = load i8*, i8** %20, align 8
  %50 = load i8*, i8** %21, align 8
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %23, align 4
  %53 = load i8*, i8** %24, align 8
  %54 = load i8*, i8** %25, align 8
  %55 = load %struct.diff_callbacks_wrapper_baton*, %struct.diff_callbacks_wrapper_baton** %29, align 8
  %56 = getelementptr inbounds %struct.diff_callbacks_wrapper_baton, %struct.diff_callbacks_wrapper_baton* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %45(i32* %46, i32* %47, i8* %48, i8* %49, i8* %50, i32 %51, i32 %52, i8* %53, i8* %54, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %40, %37
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load %struct.diff_callbacks_wrapper_baton*, %struct.diff_callbacks_wrapper_baton** %29, align 8
  %67 = getelementptr inbounds %struct.diff_callbacks_wrapper_baton, %struct.diff_callbacks_wrapper_baton* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32 (i32*, i32*, i8*, %struct.TYPE_6__*, i32*, i32)*, i32 (i32*, i32*, i8*, %struct.TYPE_6__*, i32*, i32)** %69, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = load i8*, i8** %19, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %75 = load i32*, i32** %27, align 8
  %76 = load %struct.diff_callbacks_wrapper_baton*, %struct.diff_callbacks_wrapper_baton** %29, align 8
  %77 = getelementptr inbounds %struct.diff_callbacks_wrapper_baton, %struct.diff_callbacks_wrapper_baton* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %70(i32* %71, i32* %72, i8* %73, %struct.TYPE_6__* %74, i32* %75, i32 %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %81

81:                                               ; preds = %65, %60
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %82
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
