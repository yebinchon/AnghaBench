; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/avl/extr_avl.c_avl_walk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/avl/extr_avl.c_avl_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_10__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @avl_walk(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call %struct.TYPE_10__* @AVL_DATA2NODE(i8* %15, i64 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 1, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %79

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %26, i64 %28
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %59

32:                                               ; preds = %23
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %35, i64 %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %9, align 8
  br label %40

40:                                               ; preds = %50, %32
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %43, i64 %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %53, i64 %55
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %9, align 8
  br label %40

58:                                               ; preds = %40
  br label %75

59:                                               ; preds = %23
  br label %60

60:                                               ; preds = %73, %59
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = call i32 @AVL_XCHILD(%struct.TYPE_10__* %61)
  store i32 %62, i32* %11, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = call %struct.TYPE_10__* @AVL_XPARENT(%struct.TYPE_10__* %63)
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %9, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = icmp eq %struct.TYPE_10__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i8* null, i8** %4, align 8
  br label %79

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %74

73:                                               ; preds = %68
  br label %60

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74, %58
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i8* @AVL_NODE2DATA(%struct.TYPE_10__* %76, i64 %77)
  store i8* %78, i8** %4, align 8
  br label %79

79:                                               ; preds = %75, %67, %22
  %80 = load i8*, i8** %4, align 8
  ret i8* %80
}

declare dso_local %struct.TYPE_10__* @AVL_DATA2NODE(i8*, i64) #1

declare dso_local i32 @AVL_XCHILD(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @AVL_XPARENT(%struct.TYPE_10__*) #1

declare dso_local i8* @AVL_NODE2DATA(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
