; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_get.c___bt_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_get.c___bt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32, i32 }
%struct.TYPE_10__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@RET_SPECIAL = common dso_local global i32 0, align 4
@B_DB_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bt_get(%struct.TYPE_11__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %10, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @mpool_put(i32 %24, i32* %27, i32 0)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %21, %4
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* @errno, align 4
  %36 = load i32, i32* @RET_ERROR, align 4
  store i32 %36, i32* %5, align 4
  br label %83

37:                                               ; preds = %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call %struct.TYPE_10__* @__bt_search(%struct.TYPE_12__* %38, i32* %39, i32* %12)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %11, align 8
  %41 = icmp eq %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @RET_ERROR, align 4
  store i32 %43, i32* %5, align 4
  br label %83

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @mpool_put(i32 %50, i32* %53, i32 0)
  %55 = load i32, i32* @RET_SPECIAL, align 4
  store i32 %55, i32* %5, align 4
  br label %83

56:                                               ; preds = %44
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = call i32 @__bt_ret(%struct.TYPE_12__* %57, %struct.TYPE_10__* %58, i32* null, i32* null, i32* %59, i32* %61, i32 0)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = load i32, i32* @B_DB_LOCK, align 4
  %65 = call i64 @F_ISSET(%struct.TYPE_12__* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @mpool_put(i32 %70, i32* %73, i32 0)
  br label %81

75:                                               ; preds = %56
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  br label %81

81:                                               ; preds = %75, %67
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %47, %42, %34
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @mpool_put(i32, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @__bt_search(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @__bt_ret(%struct.TYPE_12__*, %struct.TYPE_10__*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
