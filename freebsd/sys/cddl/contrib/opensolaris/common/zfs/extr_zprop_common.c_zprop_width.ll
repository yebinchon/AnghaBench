; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zprop_common.c_zprop_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zprop_common.c_zprop_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32* }

@ZPROP_INVAL = common dso_local global i32 0, align 4
@ZPROP_CONT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_PROP_CREATION = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zprop_width(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ZPROP_INVAL, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ZPROP_CONT, align 4
  %18 = icmp ne i32 %16, %17
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ false, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @zprop_get_numprops(i32 %24)
  %26 = icmp slt i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.TYPE_5__* @zprop_get_proptable(i32 %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %7, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %8, align 8
  %35 = load i32, i32* @B_TRUE, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @strlen(i32* %39)
  store i64 %40, i64* %10, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %97 [
    i32 129, label %44
    i32 130, label %56
    i32 128, label %94
  ]

44:                                               ; preds = %19
  %45 = load i64, i64* %10, align 8
  %46 = icmp ult i64 %45, 5
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i64 5, i64* %10, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @ZFS_PROP_CREATION, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @B_FALSE, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %48
  br label %97

56:                                               ; preds = %19
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %90, %56
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %63
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @strlen(i32* %77)
  %79 = load i64, i64* %10, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %71
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @strlen(i32* %87)
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %81, %71
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %63

93:                                               ; preds = %63
  br label %97

94:                                               ; preds = %19
  %95 = load i32, i32* @B_FALSE, align 4
  %96 = load i32*, i32** %5, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %19, %94, %93, %55
  %98 = load i64, i64* %10, align 8
  ret i64 %98
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zprop_get_numprops(i32) #1

declare dso_local %struct.TYPE_5__* @zprop_get_proptable(i32) #1

declare dso_local i64 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
