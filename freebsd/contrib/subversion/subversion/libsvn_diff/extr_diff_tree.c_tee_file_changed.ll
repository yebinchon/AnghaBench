; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_tee_file_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_tee_file_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.tee_baton_t* }
%struct.tee_baton_t = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i32, %struct.TYPE_6__*, i32*)* }
%struct.TYPE_7__ = type { i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i32, %struct.TYPE_7__*, i32*)* }
%struct.tee_node_baton_t = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_5__*, i32*)* @tee_file_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tee_file_changed(i8* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32* %5, i32* %6, i32 %7, i32* %8, i8* %9, %struct.TYPE_5__* %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_5__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.tee_baton_t*, align 8
  %26 = alloca %struct.tee_node_baton_t*, align 8
  store i8* %0, i8** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %23, align 8
  store i32* %11, i32** %24, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.tee_baton_t*, %struct.tee_baton_t** %28, align 8
  store %struct.tee_baton_t* %29, %struct.tee_baton_t** %25, align 8
  %30 = load i8*, i8** %22, align 8
  %31 = bitcast i8* %30 to %struct.tee_node_baton_t*
  store %struct.tee_node_baton_t* %31, %struct.tee_node_baton_t** %26, align 8
  %32 = load %struct.tee_baton_t*, %struct.tee_baton_t** %25, align 8
  %33 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i32, %struct.TYPE_7__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i32, %struct.TYPE_7__*, i32*)** %35, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = load i32*, i32** %19, align 8
  %44 = load i32, i32* %20, align 4
  %45 = load i32*, i32** %21, align 8
  %46 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %26, align 8
  %47 = getelementptr inbounds %struct.tee_node_baton_t, %struct.tee_node_baton_t* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tee_baton_t*, %struct.tee_baton_t** %25, align 8
  %50 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32*, i32** %24, align 8
  %53 = call i32 %36(i8* %37, i32* %38, i32* %39, i8* %40, i8* %41, i32* %42, i32* %43, i32 %44, i32* %45, i32 %48, %struct.TYPE_7__* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.tee_baton_t*, %struct.tee_baton_t** %25, align 8
  %56 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i32, %struct.TYPE_6__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i32, %struct.TYPE_6__*, i32*)** %58, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = load i32*, i32** %19, align 8
  %67 = load i32, i32* %20, align 4
  %68 = load i32*, i32** %21, align 8
  %69 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %26, align 8
  %70 = getelementptr inbounds %struct.tee_node_baton_t, %struct.tee_node_baton_t* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.tee_baton_t*, %struct.tee_baton_t** %25, align 8
  %73 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32*, i32** %24, align 8
  %76 = call i32 %59(i8* %60, i32* %61, i32* %62, i8* %63, i8* %64, i32* %65, i32* %66, i32 %67, i32* %68, i32 %71, %struct.TYPE_6__* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
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
