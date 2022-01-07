; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_bios_getmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_bios_getmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@v86 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@V86_FLAGS = common dso_local global i8* null, align 8
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

2:                                                ; preds = %69, %0
  %3 = load i8*, i8** @V86_FLAGS, align 8
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 8
  store i32 21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  store i32 59424, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 3), align 8
  %4 = load i32, i32* @SMAP_SIG, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 4), align 4
  %5 = call i32 @VTOPSEG(%struct.TYPE_6__* @smap)
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 8), align 8
  %6 = call i32 @VTOPOFF(%struct.TYPE_6__* @smap)
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 7), align 4
  %7 = call i32 (...) @v86int()
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 6), align 8
  %9 = call i64 @V86_CY(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %13 = load i32, i32* @SMAP_SIG, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  br label %72

16:                                               ; preds = %11
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 0), align 8
  %18 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  %25 = icmp sge i32 %24, 524288
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  store i32 %27, i32* @bios_basemem, align 4
  br label %28

28:                                               ; preds = %26, %23, %20, %16
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 0), align 8
  %30 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %34 = icmp eq i32 %33, 1048576
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  store i32 %36, i32* @bios_extmem, align 4
  br label %37

37:                                               ; preds = %35, %32, %28
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 0), align 8
  %39 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %43 = icmp sgt i32 %42, 1048576
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 4294967296
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 2), align 4
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = icmp ugt i64 %53, 4294967296
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  %57 = sext i32 %56 to i64
  %58 = sub i64 4294967296, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %55, %48
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @high_heap_size, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %1, align 4
  store i32 %65, i32* @high_heap_size, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smap, i32 0, i32 1), align 8
  store i32 %66, i32* @high_heap_base, align 4
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %44, %41, %37
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 0), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %2, label %72

72:                                               ; preds = %69, %15
  %73 = load i32, i32* @bios_basemem, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 8
  store i32 18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  %76 = call i32 (...) @v86int()
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %78 = and i32 %77, 65535
  %79 = mul nsw i32 %78, 1024
  store i32 %79, i32* @bios_basemem, align 4
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i32, i32* @bios_extmem, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load i8*, i8** @V86_FLAGS, align 8
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 8
  store i32 21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  store i32 59393, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %85 = call i32 (...) @v86int()
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 6), align 8
  %87 = call i64 @V86_CY(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 3), align 8
  %91 = and i32 %90, 65535
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 4), align 4
  %93 = and i32 %92, 65535
  %94 = mul nsw i32 %93, 64
  %95 = add nsw i32 %91, %94
  %96 = mul nsw i32 %95, 1024
  store i32 %96, i32* @bios_extmem, align 4
  br label %97

97:                                               ; preds = %89, %83
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i32, i32* @bios_extmem, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 8
  store i32 21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 8
  store i32 34816, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %102 = call i32 (...) @v86int()
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %104 = and i32 %103, 65535
  %105 = mul nsw i32 %104, 1024
  store i32 %105, i32* @bios_extmem, align 4
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i32, i32* @bios_extmem, align 4
  %108 = load i32, i32* @HEAP_MIN, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i32, i32* @high_heap_size, align 4
  %112 = load i32, i32* @HEAP_MIN, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i32, i32* @HEAP_MIN, align 4
  store i32 %115, i32* @high_heap_size, align 4
  %116 = load i32, i32* @bios_extmem, align 4
  %117 = add nsw i32 %116, 1048576
  %118 = load i32, i32* @HEAP_MIN, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* @high_heap_base, align 4
  br label %120

120:                                              ; preds = %114, %110, %106
  ret void
}

declare dso_local i32 @VTOPSEG(%struct.TYPE_6__*) #1

declare dso_local i32 @VTOPOFF(%struct.TYPE_6__*) #1

declare dso_local i32 @v86int(...) #1

declare dso_local i64 @V86_CY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
