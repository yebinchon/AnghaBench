; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_find_host_endpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_find_host_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_device = type { %struct.usb_host_endpoint, %struct.usb_interface*, %struct.usb_interface* }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.usb_host_endpoint*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UE_CONTROL = common dso_local global i32 0, align 4
@UE_ADDR = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@UE_DIR_OUT = common dso_local global i32 0, align 4
@UE_XFERTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_host_endpoint* @usb_find_host_endpoint(%struct.usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_host_endpoint*, align 8
  %9 = alloca %struct.usb_host_endpoint*, align 8
  %10 = alloca %struct.usb_host_interface*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %16 = icmp eq %struct.usb_device* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %4, align 8
  br label %110

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @UE_CONTROL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @UE_ADDR, align 4
  store i32 %23, i32* %14, align 4
  br label %30

24:                                               ; preds = %18
  %25 = load i32, i32* @UE_DIR_IN, align 4
  %26 = load i32, i32* @UE_DIR_OUT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @UE_ADDR, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %24, %22
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 2
  %36 = load %struct.usb_interface*, %struct.usb_interface** %35, align 8
  store %struct.usb_interface* %36, %struct.usb_interface** %11, align 8
  br label %37

37:                                               ; preds = %94, %30
  %38 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 1
  %41 = load %struct.usb_interface*, %struct.usb_interface** %40, align 8
  %42 = icmp ne %struct.usb_interface* %38, %41
  br i1 %42, label %43, label %97

43:                                               ; preds = %37
  %44 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %45 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %44, i32 0, i32 0
  %46 = load %struct.usb_host_interface*, %struct.usb_host_interface** %45, align 8
  store %struct.usb_host_interface* %46, %struct.usb_host_interface** %10, align 8
  %47 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %48 = icmp ne %struct.usb_host_interface* %47, null
  br i1 %48, label %49, label %93

49:                                               ; preds = %43
  %50 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %51 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %50, i32 0, i32 0
  %52 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %51, align 8
  %53 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %54 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %52, i64 %57
  store %struct.usb_host_endpoint* %58, %struct.usb_host_endpoint** %9, align 8
  %59 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %60 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %59, i32 0, i32 0
  %61 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %60, align 8
  store %struct.usb_host_endpoint* %61, %struct.usb_host_endpoint** %8, align 8
  br label %62

62:                                               ; preds = %89, %49
  %63 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %64 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %65 = icmp ne %struct.usb_host_endpoint* %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  %67 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %68 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  %71 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %72 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %14, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %66
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @UE_XFERTYPE, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  store %struct.usb_host_endpoint* %87, %struct.usb_host_endpoint** %4, align 8
  br label %110

88:                                               ; preds = %80, %66
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %91 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %90, i32 1
  store %struct.usb_host_endpoint* %91, %struct.usb_host_endpoint** %8, align 8
  br label %62

92:                                               ; preds = %62
  br label %93

93:                                               ; preds = %92, %43
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %96 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %95, i32 1
  store %struct.usb_interface* %96, %struct.usb_interface** %11, align 8
  br label %37

97:                                               ; preds = %37
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @UE_CONTROL, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @UE_ADDR, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %108 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %107, i32 0, i32 0
  store %struct.usb_host_endpoint* %108, %struct.usb_host_endpoint** %4, align 8
  br label %110

109:                                              ; preds = %101, %97
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %4, align 8
  br label %110

110:                                              ; preds = %109, %106, %86, %17
  %111 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  ret %struct.usb_host_endpoint* %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
