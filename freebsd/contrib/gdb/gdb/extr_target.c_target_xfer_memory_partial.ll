; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_target_xfer_memory_partial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_target_xfer_memory_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@target_dcache = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32, i32*)* @target_xfer_memory_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xfer_memory_partial(i64 %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mem_region*, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32*, i32** %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %6, align 4
  br label %95

19:                                               ; preds = %5
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.mem_region* @lookup_mem_region(i64 %20)
  store %struct.mem_region* %21, %struct.mem_region** %14, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load %struct.mem_region*, %struct.mem_region** %14, align 8
  %27 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %13, align 4
  br label %39

32:                                               ; preds = %19
  %33 = load %struct.mem_region*, %struct.mem_region** %14, align 8
  %34 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub nsw i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %32, %30
  %40 = load %struct.mem_region*, %struct.mem_region** %14, align 8
  %41 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %58 [
    i32 129, label %44
    i32 128, label %51
  ]

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @EIO, align 4
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  store i32 -1, i32* %6, align 4
  br label %95

50:                                               ; preds = %44
  br label %58

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EIO, align 4
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  store i32 -1, i32* %6, align 4
  br label %95

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %39, %57, %50
  %59 = load %struct.mem_region*, %struct.mem_region** %14, align 8
  %60 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* @target_dcache, align 4
  %66 = load i64, i64* %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @dcache_xfer_memory(i32 %65, i64 %66, i8* %67, i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  br label %79

71:                                               ; preds = %58
  %72 = load i64, i64* %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.mem_region*, %struct.mem_region** %14, align 8
  %77 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %76, i32 0, i32 1
  %78 = call i32 @do_xfer_memory(i64 %72, i8* %73, i32 %74, i32 %75, %struct.TYPE_2__* %77)
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %71, %64
  %80 = load i32, i32* %12, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* @errno, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @errno, align 4
  %87 = load i32*, i32** %11, align 8
  store i32 %86, i32* %87, align 4
  br label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @EIO, align 4
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %85
  store i32 -1, i32* %6, align 4
  br label %95

92:                                               ; preds = %79
  %93 = load i32*, i32** %11, align 8
  store i32 0, i32* %93, align 4
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %91, %54, %47, %17
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.mem_region* @lookup_mem_region(i64) #1

declare dso_local i32 @dcache_xfer_memory(i32, i64, i8*, i32, i32) #1

declare dso_local i32 @do_xfer_memory(i64, i8*, i32, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
