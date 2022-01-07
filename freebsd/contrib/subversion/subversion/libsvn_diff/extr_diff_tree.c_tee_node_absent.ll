; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_tee_node_absent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_tee_node_absent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.tee_baton_t* }
%struct.tee_baton_t = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 (i8*, i32*, %struct.TYPE_6__*, i32*)* }
%struct.TYPE_7__ = type { i32 (i8*, i32*, %struct.TYPE_7__*, i32*)* }
%struct.tee_node_baton_t = type { i32*, i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_5__*, i32*)* @tee_node_absent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tee_node_absent(i8* %0, i8* %1, %struct.TYPE_5__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tee_baton_t*, align 8
  %10 = alloca %struct.tee_node_baton_t*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.tee_baton_t*, %struct.tee_baton_t** %12, align 8
  store %struct.tee_baton_t* %13, %struct.tee_baton_t** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.tee_node_baton_t*
  store %struct.tee_node_baton_t* %15, %struct.tee_node_baton_t** %10, align 8
  %16 = load %struct.tee_baton_t*, %struct.tee_baton_t** %9, align 8
  %17 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32 (i8*, i32*, %struct.TYPE_7__*, i32*)*, i32 (i8*, i32*, %struct.TYPE_7__*, i32*)** %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %10, align 8
  %23 = icmp ne %struct.tee_node_baton_t* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %10, align 8
  %26 = getelementptr inbounds %struct.tee_node_baton_t, %struct.tee_node_baton_t* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32* [ %27, %24 ], [ null, %28 ]
  %31 = load %struct.tee_baton_t*, %struct.tee_baton_t** %9, align 8
  %32 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 %20(i8* %21, i32* %30, %struct.TYPE_7__* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.tee_baton_t*, %struct.tee_baton_t** %9, align 8
  %38 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32 (i8*, i32*, %struct.TYPE_6__*, i32*)*, i32 (i8*, i32*, %struct.TYPE_6__*, i32*)** %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %10, align 8
  %44 = icmp ne %struct.tee_node_baton_t* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %10, align 8
  %47 = getelementptr inbounds %struct.tee_node_baton_t, %struct.tee_node_baton_t* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  br label %50

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32* [ %48, %45 ], [ null, %49 ]
  %52 = load %struct.tee_baton_t*, %struct.tee_baton_t** %9, align 8
  %53 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 %41(i8* %42, i32* %51, %struct.TYPE_6__* %54, i32* %55)
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
