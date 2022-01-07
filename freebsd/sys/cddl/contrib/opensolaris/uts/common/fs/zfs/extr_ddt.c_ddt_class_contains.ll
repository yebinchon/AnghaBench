; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_class_contains.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_class_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32** }
%struct.TYPE_6__ = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@DDT_CLASS_UNIQUE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@DDT_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddt_class_contains(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @BP_GET_DEDUP(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @B_FALSE, align 4
  store i32 %16, i32* %4, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DDT_CLASS_UNIQUE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @B_TRUE, align 4
  store i32 %22, i32* %4, align 4
  br label %61

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @BP_GET_CHECKSUM(i32* %27)
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @ddt_key_fill(i32* %31, i32* %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %56, %23
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @DDT_TYPES, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @ddt_object_lookup(i32* %44, i32 %45, i32 %46, %struct.TYPE_6__* %9)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @B_TRUE, align 4
  store i32 %50, i32* %4, align 4
  br label %61

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %39

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %34

59:                                               ; preds = %34
  %60 = load i32, i32* @B_FALSE, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %49, %21, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @BP_GET_DEDUP(i32*) #1

declare dso_local i64 @BP_GET_CHECKSUM(i32*) #1

declare dso_local i32 @ddt_key_fill(i32*, i32*) #1

declare dso_local i64 @ddt_object_lookup(i32*, i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
