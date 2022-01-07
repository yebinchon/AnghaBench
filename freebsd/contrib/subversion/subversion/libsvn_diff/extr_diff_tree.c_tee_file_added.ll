; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_tee_file_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_tee_file_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.tee_baton_t* }
%struct.tee_baton_t = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_6__*, i32*)* }
%struct.TYPE_7__ = type { i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_7__*, i32*)* }
%struct.tee_node_baton_t = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*)* @tee_file_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tee_file_added(i8* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32* %5, i32* %6, i8* %7, %struct.TYPE_5__* %8, i32* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.tee_baton_t*, align 8
  %22 = alloca %struct.tee_node_baton_t*, align 8
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %19, align 8
  store i32* %9, i32** %20, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.tee_baton_t*, %struct.tee_baton_t** %24, align 8
  store %struct.tee_baton_t* %25, %struct.tee_baton_t** %21, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = bitcast i8* %26 to %struct.tee_node_baton_t*
  store %struct.tee_node_baton_t* %27, %struct.tee_node_baton_t** %22, align 8
  %28 = load %struct.tee_baton_t*, %struct.tee_baton_t** %21, align 8
  %29 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_7__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_7__*, i32*)** %31, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %22, align 8
  %41 = getelementptr inbounds %struct.tee_node_baton_t, %struct.tee_node_baton_t* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tee_baton_t*, %struct.tee_baton_t** %21, align 8
  %44 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = call i32 %32(i8* %33, i32* %34, i32* %35, i8* %36, i8* %37, i32* %38, i32* %39, i32 %42, %struct.TYPE_7__* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.tee_baton_t*, %struct.tee_baton_t** %21, align 8
  %50 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_6__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_6__*, i32*)** %52, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = load i32*, i32** %17, align 8
  %61 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %22, align 8
  %62 = getelementptr inbounds %struct.tee_node_baton_t, %struct.tee_node_baton_t* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tee_baton_t*, %struct.tee_baton_t** %21, align 8
  %65 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = call i32 %53(i8* %54, i32* %55, i32* %56, i8* %57, i8* %58, i32* %59, i32* %60, i32 %63, %struct.TYPE_6__* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
