; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_submit_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_submit_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_transfer = type { i32*, i32 }
%struct.libusb20_transfer = type { i32 }
%struct.libusb_super_transfer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.libusb_device = type { i64, i32, i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB_DEBUG_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"libusb_submit_transfer enter\00", align 1
@LIBUSB_ERROR_OTHER = common dso_local global i32 0, align 4
@LIBUSB_ERROR_BUSY = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NO_DEVICE = common dso_local global i32 0, align 4
@LIBUSB_SUPER_XFER_ST_PEND = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"libusb_submit_transfer leave %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_submit_transfer(%struct.libusb_transfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.libusb_transfer*, align 8
  %4 = alloca %struct.libusb20_transfer*, align 8
  %5 = alloca %struct.libusb20_transfer*, align 8
  %6 = alloca %struct.libusb_super_transfer*, align 8
  %7 = alloca %struct.libusb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.libusb_transfer* %0, %struct.libusb_transfer** %3, align 8
  %10 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %11 = icmp eq %struct.libusb_transfer* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %13, i32* %2, align 4
  br label %112

14:                                               ; preds = %1
  %15 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %16 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %20, i32* %2, align 4
  br label %112

21:                                               ; preds = %14
  %22 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %23 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %26 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call %struct.libusb_device* @libusb_get_device(i32* %27)
  store %struct.libusb_device* %28, %struct.libusb_device** %7, align 8
  %29 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %30 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LIBUSB_DEBUG_FUNCTION, align 4
  %33 = call i32 (i32, i32, i8*, ...) @DPRINTF(i32 %31, i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %35 = bitcast %struct.libusb_transfer* %34 to i32*
  %36 = getelementptr inbounds i32, i32* %35, i64 -16
  %37 = bitcast i32* %36 to %struct.libusb_super_transfer*
  store %struct.libusb_super_transfer* %37, %struct.libusb_super_transfer** %6, align 8
  %38 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %39 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @CTX_LOCK(i32 %40)
  %42 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %43 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.libusb20_transfer* @libusb10_get_transfer(i32* %44, i32 %45, i32 0)
  store %struct.libusb20_transfer* %46, %struct.libusb20_transfer** %4, align 8
  %47 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %48 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call %struct.libusb20_transfer* @libusb10_get_transfer(i32* %49, i32 %50, i32 1)
  store %struct.libusb20_transfer* %51, %struct.libusb20_transfer** %5, align 8
  %52 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %53 = icmp eq %struct.libusb20_transfer* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %21
  %55 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %56 = icmp eq %struct.libusb20_transfer* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %21
  %58 = load i32, i32* @LIBUSB_ERROR_OTHER, align 4
  store i32 %58, i32* %9, align 4
  br label %100

59:                                               ; preds = %54
  %60 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %61 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %59
  %66 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %4, align 8
  %67 = call %struct.libusb_super_transfer* @libusb20_tr_get_priv_sc1(%struct.libusb20_transfer* %66)
  %68 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %69 = icmp eq %struct.libusb_super_transfer* %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %72 = call %struct.libusb_super_transfer* @libusb20_tr_get_priv_sc1(%struct.libusb20_transfer* %71)
  %73 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %74 = icmp eq %struct.libusb_super_transfer* %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70, %65, %59
  %76 = load i32, i32* @LIBUSB_ERROR_BUSY, align 4
  store i32 %76, i32* %9, align 4
  br label %99

77:                                               ; preds = %70
  %78 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %79 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @LIBUSB_ERROR_NO_DEVICE, align 4
  store i32 %83, i32* %9, align 4
  br label %98

84:                                               ; preds = %77
  %85 = load i32, i32* @LIBUSB_SUPER_XFER_ST_PEND, align 4
  %86 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %87 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %89 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %88, i32 0, i32 2
  %90 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %6, align 8
  %91 = load i32, i32* @entry, align 4
  %92 = call i32 @TAILQ_INSERT_TAIL(i32* %89, %struct.libusb_super_transfer* %90, i32 %91)
  %93 = load %struct.libusb_transfer*, %struct.libusb_transfer** %3, align 8
  %94 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @libusb10_submit_transfer_sub(i32* %95, i32 %96)
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %84, %82
  br label %99

99:                                               ; preds = %98, %75
  br label %100

100:                                              ; preds = %99, %57
  %101 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %102 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @CTX_UNLOCK(i32 %103)
  %105 = load %struct.libusb_device*, %struct.libusb_device** %7, align 8
  %106 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @LIBUSB_DEBUG_FUNCTION, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i32, i32, i8*, ...) @DPRINTF(i32 %107, i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %100, %19, %12
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.libusb_device* @libusb_get_device(i32*) #1

declare dso_local i32 @DPRINTF(i32, i32, i8*, ...) #1

declare dso_local i32 @CTX_LOCK(i32) #1

declare dso_local %struct.libusb20_transfer* @libusb10_get_transfer(i32*, i32, i32) #1

declare dso_local %struct.libusb_super_transfer* @libusb20_tr_get_priv_sc1(%struct.libusb20_transfer*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.libusb_super_transfer*, i32) #1

declare dso_local i32 @libusb10_submit_transfer_sub(i32*, i32) #1

declare dso_local i32 @CTX_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
