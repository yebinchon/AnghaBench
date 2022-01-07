; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_target_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_target_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@target_dcache = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32)* @target_xfer_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_xfer_memory(i64 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mem_region*, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %117

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %115, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %116

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.mem_region* @lookup_mem_region(i64 %21)
  store %struct.mem_region* %22, %struct.mem_region** %12, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load %struct.mem_region*, %struct.mem_region** %12, align 8
  %28 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %11, align 4
  br label %40

33:                                               ; preds = %20
  %34 = load %struct.mem_region*, %struct.mem_region** %12, align 8
  %35 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub nsw i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %33, %31
  %41 = load %struct.mem_region*, %struct.mem_region** %12, align 8
  %42 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %57 [
    i32 129, label %45
    i32 128, label %51
  ]

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @EIO, align 4
  store i32 %49, i32* %5, align 4
  br label %117

50:                                               ; preds = %45
  br label %57

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @EIO, align 4
  store i32 %55, i32* %5, align 4
  br label %117

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %40, %56, %50
  br label %58

58:                                               ; preds = %100, %57
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %115

61:                                               ; preds = %58
  %62 = load %struct.mem_region*, %struct.mem_region** %12, align 8
  %63 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* @target_dcache, align 4
  %69 = load i64, i64* %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @dcache_xfer_memory(i32 %68, i64 %69, i8* %70, i32 %71, i32 %72)
  store i32 %73, i32* %10, align 4
  br label %82

74:                                               ; preds = %61
  %75 = load i64, i64* %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.mem_region*, %struct.mem_region** %12, align 8
  %80 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %79, i32 0, i32 1
  %81 = call i32 @do_xfer_memory(i64 %75, i8* %76, i32 %77, i32 %78, %struct.TYPE_2__* %80)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %74, %67
  %83 = load i32, i32* %10, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @memset(i8* %89, i32 0, i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i64, i64* @errno, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @EIO, align 4
  store i32 %96, i32* %5, align 4
  br label %117

97:                                               ; preds = %92
  %98 = load i64, i64* @errno, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %117

100:                                              ; preds = %82
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %6, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %11, align 4
  br label %58

115:                                              ; preds = %58
  br label %17

116:                                              ; preds = %17
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %97, %95, %54, %48, %15
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.mem_region* @lookup_mem_region(i64) #1

declare dso_local i32 @dcache_xfer_memory(i32, i64, i8*, i32, i32) #1

declare dso_local i32 @do_xfer_memory(i64, i8*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
