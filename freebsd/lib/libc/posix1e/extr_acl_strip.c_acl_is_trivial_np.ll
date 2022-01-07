; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_strip.c_acl_is_trivial_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_strip.c_acl_is_trivial_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_is_trivial_np(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = icmp eq %struct.TYPE_11__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %74

15:                                               ; preds = %10
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = call i32 @_acl_brand(%struct.TYPE_11__* %16)
  switch i32 %17, label %72 [
    i32 128, label %18
    i32 129, label %29
  ]

18:                                               ; preds = %15
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  store i32 1, i32* %25, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %24
  store i32 0, i32* %3, align 4
  br label %74

29:                                               ; preds = %15
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 6
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32*, i32** %5, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %74

37:                                               ; preds = %29
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = call %struct.TYPE_11__* @_nfs4_acl_strip_np(%struct.TYPE_11__* %38, i32 0)
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %6, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = icmp eq %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %74

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = call i32 @_acl_differs(%struct.TYPE_11__* %44, %struct.TYPE_11__* %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = call i32 @acl_free(%struct.TYPE_11__* %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32*, i32** %5, align 8
  store i32 1, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %74

53:                                               ; preds = %43
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = call %struct.TYPE_11__* @_nfs4_acl_strip_np(%struct.TYPE_11__* %54, i32 1)
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %6, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = icmp eq %struct.TYPE_11__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %74

59:                                               ; preds = %53
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = call i32 @_acl_differs(%struct.TYPE_11__* %60, %struct.TYPE_11__* %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = call i32 @acl_free(%struct.TYPE_11__* %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32*, i32** %5, align 8
  store i32 0, i32* %68, align 4
  br label %71

69:                                               ; preds = %59
  %70 = load i32*, i32** %5, align 8
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %67
  store i32 0, i32* %3, align 4
  br label %74

72:                                               ; preds = %15
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %71, %58, %51, %42, %35, %28, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @_acl_brand(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @_nfs4_acl_strip_np(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_acl_differs(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @acl_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
