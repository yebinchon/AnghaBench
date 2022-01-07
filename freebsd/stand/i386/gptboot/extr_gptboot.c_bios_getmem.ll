; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/gptboot/extr_gptboot.c_bios_getmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/gptboot/extr_gptboot.c_bios_getmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@v86 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@V86_FLAGS = common dso_local global i8* null, align 8
@MEM_EXT = common dso_local global i32 0, align 4
@SMAP_SIG = common dso_local global i32 0, align 4
@smap = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SMAP_TYPE_MEMORY = common dso_local global i64 0, align 8
@bios_basemem = common dso_local global i32 0, align 4
@bios_extmem = common dso_local global i32 0, align 4
@high_heap_size = common dso_local global i32 0, align 4
@high_heap_base = common dso_local global i32 0, align 4
@HEAP_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bios_getmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bios_getmem() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 0), align 8
  br label %2

2:                                                ; preds = %70, %0
  %3 = load i8*, i8** @V86_FLAGS, align 8
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 6), align 8
  %4 = load i32, i32* @MEM_EXT, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  store i32 59424, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 3), align 8
  %5 = load i32, i32* @SMAP_SIG, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 4), align 4
  %6 = call i32 @VTOPSEG(%struct.TYPE_6__* @smap)
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 8), align 4
  %7 = call i32 @VTOPOFF(%struct.TYPE_6__* @smap)
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 7), align 8
  %8 = call i32 (...) @v86int()
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 8
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %14 = load i32, i32* @SMAP_SIG, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  br label %73

17:                                               ; preds = %12
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 0), align 8
  %19 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  %26 = icmp sge i32 %25, 524288
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  store i32 %28, i32* @bios_basemem, align 4
  br label %29

29:                                               ; preds = %27, %24, %21, %17
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 0), align 8
  %31 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %35 = icmp eq i32 %34, 1048576
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  store i32 %37, i32* @bios_extmem, align 4
  br label %38

38:                                               ; preds = %36, %33, %29
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 0), align 8
  %40 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %44 = icmp sgt i32 %43, 1048576
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %47, 4294967296
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %54, 4294967296
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %58 = sext i32 %57 to i64
  %59 = sub i64 4294967296, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %56, %49
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @high_heap_size, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %1, align 4
  store i32 %66, i32* @high_heap_size, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  store i32 %67, i32* @high_heap_base, align 4
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %45, %42, %38
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 0), align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %2, label %73

73:                                               ; preds = %70, %16
  %74 = load i32, i32* @bios_basemem, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 6), align 8
  store i32 18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  %77 = call i32 (...) @v86int()
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %79 = and i32 %78, 65535
  %80 = mul nsw i32 %79, 1024
  store i32 %80, i32* @bios_basemem, align 4
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* @bios_extmem, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load i8*, i8** @V86_FLAGS, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 6), align 8
  store i32 21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  store i32 59393, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %86 = call i32 (...) @v86int()
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 8
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 3), align 8
  %92 = and i32 %91, 65535
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 4), align 4
  %94 = and i32 %93, 65535
  %95 = mul nsw i32 %94, 64
  %96 = add nsw i32 %92, %95
  %97 = mul nsw i32 %96, 1024
  store i32 %97, i32* @bios_extmem, align 4
  br label %98

98:                                               ; preds = %90, %84
  br label %99

99:                                               ; preds = %98, %81
  %100 = load i32, i32* @bios_extmem, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 6), align 8
  store i32 21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  store i32 34816, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %103 = call i32 (...) @v86int()
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %105 = and i32 %104, 65535
  %106 = mul nsw i32 %105, 1024
  store i32 %106, i32* @bios_extmem, align 4
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i32, i32* @bios_extmem, align 4
  %109 = load i32, i32* @HEAP_MIN, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load i32, i32* @high_heap_size, align 4
  %113 = load i32, i32* @HEAP_MIN, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32, i32* @HEAP_MIN, align 4
  store i32 %116, i32* @high_heap_size, align 4
  %117 = load i32, i32* @bios_extmem, align 4
  %118 = add nsw i32 %117, 1048576
  %119 = load i32, i32* @HEAP_MIN, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* @high_heap_base, align 4
  br label %121

121:                                              ; preds = %115, %111, %107
  ret void
}

declare dso_local i32 @VTOPSEG(%struct.TYPE_6__*) #1

declare dso_local i32 @VTOPOFF(%struct.TYPE_6__*) #1

declare dso_local i32 @v86int(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
