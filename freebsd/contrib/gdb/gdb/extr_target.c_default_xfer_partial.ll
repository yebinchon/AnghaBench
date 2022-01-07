; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_default_xfer_partial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_default_xfer_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i8*, i8*, i8*, i32, i32)* }
%struct.cleanup = type { i32 }

@TARGET_OBJECT_MEMORY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@xfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)* @default_xfer_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_xfer_partial(%struct.target_ops* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.target_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.cleanup*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @TARGET_OBJECT_MEMORY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %7
  %23 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %24 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %23, i32 0, i32 0
  %25 = load i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)** %24, align 8
  %26 = icmp ne i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)* %25, null
  br i1 %26, label %27, label %75

27:                                               ; preds = %22
  store i32 -1, i32* %16, align 4
  store i64 0, i64* @errno, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load i32, i32* %15, align 4
  %32 = call i8* @xmalloc(i32 %31)
  store i8* %32, i8** %17, align 8
  %33 = load i32, i32* @xfree, align 4
  %34 = load i8*, i8** %17, align 8
  %35 = call %struct.cleanup* @make_cleanup(i32 %33, i8* %34)
  store %struct.cleanup* %35, %struct.cleanup** %18, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @memcpy(i8* %36, i8* %37, i32 %38)
  %40 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %41 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %40, i32 0, i32 0
  %42 = load i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i8*, i8** %17, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %47 = call i32 %42(i32 %43, i8* %44, i32 %45, i32 1, i32* null, %struct.target_ops* %46)
  store i32 %47, i32* %16, align 4
  %48 = load %struct.cleanup*, %struct.cleanup** %18, align 8
  %49 = call i32 @do_cleanups(%struct.cleanup* %48)
  br label %50

50:                                               ; preds = %30, %27
  %51 = load i8*, i8** %12, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %55 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %54, i32 0, i32 0
  %56 = load i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %61 = call i32 %56(i32 %57, i8* %58, i32 %59, i32 0, i32* null, %struct.target_ops* %60)
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %53, %50
  %63 = load i32, i32* %16, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %8, align 4
  br label %97

67:                                               ; preds = %62
  %68 = load i32, i32* %16, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i64, i64* @errno, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %97

74:                                               ; preds = %70, %67
  store i32 -1, i32* %8, align 4
  br label %97

75:                                               ; preds = %22, %7
  %76 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %77 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = icmp ne %struct.TYPE_2__* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %82 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_2__*, i32, i8*, i8*, i8*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i8*, i8*, i8*, i32, i32)** %84, align 8
  %86 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %87 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 %85(%struct.TYPE_2__* %88, i32 %89, i8* %90, i8* %91, i8* %92, i32 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  br label %97

96:                                               ; preds = %75
  store i32 -1, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %80, %74, %73, %65
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
