; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efifb_uga_locate_framebuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efifb_uga_locate_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*)* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i32, i32*, i8**)* }

@EFI_DEVICE_ERROR = common dso_local global i64 0, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@BS = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64*, i64*)* @efifb_uga_locate_framebuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efifb_uga_locate_framebuffer(%struct.TYPE_5__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @EFI_DEVICE_ERROR, align 8
  store i64 %16, i64* %4, align 8
  br label %110

17:                                               ; preds = %3
  %18 = load i64*, i64** %6, align 8
  store i64 0, i64* %18, align 8
  %19 = load i64*, i64** %7, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %94, %17
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %23, label %97

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64 (%struct.TYPE_5__*, i32, i32*, i8**)*, i64 (%struct.TYPE_5__*, i32, i32*, i8**)** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = load i32, i32* %12, align 4
  %29 = bitcast i32** %8 to i8**
  %30 = call i64 %26(%struct.TYPE_5__* %27, i32 %28, i32* null, i8** %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @EFI_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %94

35:                                               ; preds = %23
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 135
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 10
  %48 = call i64 @le32dec(i32* %47)
  store i64 %48, i64* %9, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 22
  %51 = call i64 @le32dec(i32* %50)
  store i64 %51, i64* %10, align 8
  br label %71

52:                                               ; preds = %40, %35
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 138
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 14
  %65 = call i64 @le64dec(i32* %64)
  store i64 %65, i64* %9, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 38
  %68 = call i64 @le64dec(i32* %67)
  store i64 %68, i64* %10, align 8
  br label %70

69:                                               ; preds = %57, %52
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %70

70:                                               ; preds = %69, %62
  br label %71

71:                                               ; preds = %70, %45
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @BS, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32 (i32*)*, i32 (i32*)** %73, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 %74(i32* %75)
  %77 = load i64, i64* %9, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %71
  %80 = load i64, i64* %10, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %71
  br label %94

83:                                               ; preds = %79
  %84 = load i64, i64* %10, align 8
  %85 = load i64*, i64** %7, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i64, i64* %9, align 8
  %90 = load i64*, i64** %6, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64*, i64** %7, align 8
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %82, %34
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %20

97:                                               ; preds = %20
  %98 = load i64*, i64** %6, align 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i64*, i64** %7, align 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %97
  %106 = load i64, i64* @EFI_DEVICE_ERROR, align 8
  br label %108

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i64 [ %106, %105 ], [ 0, %107 ]
  store i64 %109, i64* %4, align 8
  br label %110

110:                                              ; preds = %108, %15
  %111 = load i64, i64* %4, align 8
  ret i64 %111
}

declare dso_local i64 @le32dec(i32*) #1

declare dso_local i64 @le64dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
