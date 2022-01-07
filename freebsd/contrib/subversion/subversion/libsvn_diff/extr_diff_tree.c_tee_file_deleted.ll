; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_tee_file_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_tee_file_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.tee_baton_t* }
%struct.tee_baton_t = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 (i8*, i32*, i8*, i32*, i32, %struct.TYPE_6__*, i32*)* }
%struct.TYPE_7__ = type { i32 (i8*, i32*, i8*, i32*, i32, %struct.TYPE_7__*, i32*)* }
%struct.tee_node_baton_t = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_5__*, i32*)* @tee_file_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tee_file_deleted(i8* %0, i32* %1, i8* %2, i32* %3, i8* %4, %struct.TYPE_5__* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.tee_baton_t*, align 8
  %16 = alloca %struct.tee_node_baton_t*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.tee_baton_t*, %struct.tee_baton_t** %18, align 8
  store %struct.tee_baton_t* %19, %struct.tee_baton_t** %15, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = bitcast i8* %20 to %struct.tee_node_baton_t*
  store %struct.tee_node_baton_t* %21, %struct.tee_node_baton_t** %16, align 8
  %22 = load %struct.tee_baton_t*, %struct.tee_baton_t** %15, align 8
  %23 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32 (i8*, i32*, i8*, i32*, i32, %struct.TYPE_7__*, i32*)*, i32 (i8*, i32*, i8*, i32*, i32, %struct.TYPE_7__*, i32*)** %25, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %16, align 8
  %32 = getelementptr inbounds %struct.tee_node_baton_t, %struct.tee_node_baton_t* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tee_baton_t*, %struct.tee_baton_t** %15, align 8
  %35 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 %26(i8* %27, i32* %28, i8* %29, i32* %30, i32 %33, %struct.TYPE_7__* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.tee_baton_t*, %struct.tee_baton_t** %15, align 8
  %41 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (i8*, i32*, i8*, i32*, i32, %struct.TYPE_6__*, i32*)*, i32 (i8*, i32*, i8*, i32*, i32, %struct.TYPE_6__*, i32*)** %43, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %16, align 8
  %50 = getelementptr inbounds %struct.tee_node_baton_t, %struct.tee_node_baton_t* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tee_baton_t*, %struct.tee_baton_t** %15, align 8
  %53 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 %44(i8* %45, i32* %46, i8* %47, i32* %48, i32 %51, %struct.TYPE_6__* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %58
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
