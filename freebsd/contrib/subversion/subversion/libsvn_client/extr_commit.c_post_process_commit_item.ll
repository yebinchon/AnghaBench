; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit.c_post_process_commit_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit.c_post_process_commit_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@SVN_CLIENT_COMMIT_ITEM_ADD = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_CLIENT_COMMIT_ITEM_LOCK_TOKEN = common dso_local global i32 0, align 4
@SVN_CLIENT_COMMIT_ITEM_DELETE = common dso_local global i32 0, align 4
@SVN_CLIENT_COMMIT_ITEM_TEXT_MODS = common dso_local global i32 0, align 4
@SVN_CLIENT_COMMIT_ITEM_PROP_MODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*, i32*, i32, i32, i32, i32*, i32*)* @post_process_commit_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @post_process_commit_item(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_ADD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @svn_node_dir, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %40, %35, %29, %22, %8
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_LOCK_TOKEN, align 4
  %50 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_ADD, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_DELETE, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %48, %53
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %45, %42
  %57 = phi i1 [ false, %42 ], [ %55, %45 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %18, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_DELETE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %18, align 4
  br label %67

67:                                               ; preds = %65, %56
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_ADD, align 4
  %78 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_DELETE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_TEXT_MODS, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SVN_CLIENT_COMMIT_ITEM_PROP_MODS, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %76, %83
  %85 = icmp ne i32 0, %84
  %86 = zext i1 %85 to i32
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load i32*, i32** %15, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = call i32 @svn_wc_queue_committed4(i32* %68, i32* %69, i32 %72, i32 %73, i32 %86, i32 %89, i32 %90, i32 %94, i32* %95, i32* %96)
  %98 = call i32* @svn_error_trace(i32 %97)
  ret i32* %98
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_queue_committed4(i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
