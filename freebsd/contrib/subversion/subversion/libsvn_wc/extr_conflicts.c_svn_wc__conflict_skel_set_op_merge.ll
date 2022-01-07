; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_skel_set_op_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_skel_set_op_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_WC__CONFLICT_OP_MERGE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_skel_set_op_merge(%struct.TYPE_12__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %5
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %27, %20, %15, %5
  %38 = phi i1 [ false, %20 ], [ false, %15 ], [ false, %5 ], [ %36, %27 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @SVN_ERR_ASSERT(i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = call i32 @conflict__get_operation(%struct.TYPE_12__** %11, %struct.TYPE_12__* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %45 = icmp eq %struct.TYPE_12__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @SVN_ERR_ASSERT(i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %11, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call %struct.TYPE_12__* @svn_skel__make_empty_list(i32* %51)
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %12, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @conflict__prepend_location(%struct.TYPE_12__* %53, i32* %54, i32 %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @TRUE, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @conflict__prepend_location(%struct.TYPE_12__* %60, i32* %61, i32 %62, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = call i32 @svn_skel__prepend(%struct.TYPE_12__* %67, %struct.TYPE_12__* %68)
  %70 = load i32, i32* @SVN_WC__CONFLICT_OP_MERGE, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @svn_skel__prepend_str(i32 %70, %struct.TYPE_12__* %71, i32* %72)
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %74
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @conflict__get_operation(%struct.TYPE_12__**, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @svn_skel__make_empty_list(i32*) #1

declare dso_local i32 @conflict__prepend_location(%struct.TYPE_12__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_skel__prepend(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @svn_skel__prepend_str(i32, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
