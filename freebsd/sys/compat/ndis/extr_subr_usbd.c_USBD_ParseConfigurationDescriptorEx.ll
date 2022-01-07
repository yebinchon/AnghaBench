; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_USBD_ParseConfigurationDescriptorEx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_USBD_ParseConfigurationDescriptorEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }
%struct.usb_descriptor = type { i32 }

@UDESC_INTERFACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i32*, i8*, i32, i32, i32, i32, i32)* @USBD_ParseConfigurationDescriptorEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @USBD_ParseConfigurationDescriptorEx(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.usb_descriptor*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.usb_descriptor* null, %struct.usb_descriptor** %16, align 8
  br label %18

18:                                               ; preds = %81, %71, %61, %51, %41, %31, %7
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.usb_descriptor*, %struct.usb_descriptor** %16, align 8
  %21 = call %struct.usb_descriptor* @usb_desc_foreach(i32* %19, %struct.usb_descriptor* %20)
  store %struct.usb_descriptor* %21, %struct.usb_descriptor** %16, align 8
  %22 = icmp ne %struct.usb_descriptor* %21, null
  br i1 %22, label %23, label %84

23:                                               ; preds = %18
  %24 = load %struct.usb_descriptor*, %struct.usb_descriptor** %16, align 8
  %25 = bitcast %struct.usb_descriptor* %24 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %17, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UDESC_INTERFACE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %18

32:                                               ; preds = %23
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %18

42:                                               ; preds = %35, %32
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %18

52:                                               ; preds = %45, %42
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %18

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %14, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %18

72:                                               ; preds = %65, %62
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br label %18

82:                                               ; preds = %75, %72
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %8, align 8
  br label %85

84:                                               ; preds = %18
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  br label %85

85:                                               ; preds = %84, %82
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  ret %struct.TYPE_3__* %86
}

declare dso_local %struct.usb_descriptor* @usb_desc_foreach(i32*, %struct.usb_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
