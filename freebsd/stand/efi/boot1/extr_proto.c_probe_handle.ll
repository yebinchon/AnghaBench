; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_proto.c_probe_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_proto.c_probe_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 (%struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, i32*, i32*, i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@DevicePathGUID = common dso_local global i32 0, align 4
@EFI_UNSUPPORTED = common dso_local global i64 0, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"\0AFailed to query DevicePath (%lu)\0A\00", align 1
@BlockIoProtocolGUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"\0AFailed to query BlockIoProtocol (%lu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AFailed to allocate devinfo\0A\00", align 1
@num_boot_modules = common dso_local global i64 0, align 8
@boot_modules = common dso_local global %struct.TYPE_11__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @probe_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_handle(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = bitcast i32** %8 to i8**
  %14 = call i64 @OpenProtocolByHandle(i32 %12, i32* @DevicePathGUID, i8** %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @EFI_UNSUPPORTED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

19:                                               ; preds = %2
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @EFI_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @EFI_ERROR_CODE(i64 %24)
  %26 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %3, align 4
  br label %103

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = bitcast %struct.TYPE_10__** %7 to i8**
  %30 = call i64 @OpenProtocolByHandle(i32 %28, i32* @BlockIoProtocolGUID, i8** %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @EFI_UNSUPPORTED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %103

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @EFI_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @EFI_ERROR_CODE(i64 %40)
  %42 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 -1, i32* %3, align 4
  br label %103

43:                                               ; preds = %35
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %103

51:                                               ; preds = %43
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @efi_devpath_same_disk(i32* %52, i32* %53)
  store i32 %54, i32* %11, align 4
  %55 = call %struct.TYPE_9__* @malloc(i32 48)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %6, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = icmp eq %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %103

60:                                               ; preds = %51
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 5
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %63, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  store i64 0, i64* %10, align 8
  br label %75

75:                                               ; preds = %97, %60
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @num_boot_modules, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @boot_modules, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %82, i64 %83
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64 (%struct.TYPE_9__*)*, i64 (%struct.TYPE_9__*)** %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = call i64 %87(%struct.TYPE_9__* %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @EFI_SUCCESS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %103

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %10, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %10, align 8
  br label %75

100:                                              ; preds = %75
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = call i32 @free(%struct.TYPE_9__* %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %93, %58, %50, %39, %34, %23, %18
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @OpenProtocolByHandle(i32, i32*, i8**) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @EFI_ERROR_CODE(i64) #1

declare dso_local i32 @efi_devpath_same_disk(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
