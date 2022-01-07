; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_editlist_save_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_editlist_save_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i64 }
%struct.scsi_mode_header_6 = type { i64, i64, i64 }
%struct.scsi_mode_header_10 = type { i64, i32, i32 }

@MAX_DATA_SIZE = common dso_local global i32 0, align 4
@editlist_changed = common dso_local global i32 0, align 4
@T_SEQUENTIAL = common dso_local global i64 0, align 8
@format = common dso_local global i32 0, align 4
@editentry_save = common dso_local global i32 0, align 4
@PAGE_CTRL_SHIFT = common dso_local global i64 0, align 8
@SMS_PAGE_CTRL_SAVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32)* @editlist_save_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @editlist_save_desc(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.cam_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.scsi_mode_header_6*, align 8
  %26 = alloca %struct.scsi_mode_header_10*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %27 = load i32, i32* @MAX_DATA_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %19, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %20, align 8
  %31 = load i32, i32* @editlist_changed, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %9
  store i32 1, i32* %24, align 4
  br label %122

34:                                               ; preds = %9
  %35 = load %struct.cam_device*, %struct.cam_device** %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %18, align 4
  %43 = mul nuw i64 4, %28
  %44 = trunc i64 %43 to i32
  %45 = call i32 @mode_sense(%struct.cam_device* %35, i32* %11, i32 0, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32* %30, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 6
  br i1 %47, label %48, label %67

48:                                               ; preds = %34
  %49 = bitcast i32* %30 to %struct.scsi_mode_header_6*
  store %struct.scsi_mode_header_6* %49, %struct.scsi_mode_header_6** %25, align 8
  store i64 24, i64* %23, align 8
  %50 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %25, align 8
  %51 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %50, i64 1
  %52 = bitcast %struct.scsi_mode_header_6* %51 to i32*
  store i32* %52, i32** %21, align 8
  %53 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %25, align 8
  %54 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %22, align 8
  %56 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %25, align 8
  %57 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.cam_device*, %struct.cam_device** %10, align 8
  %59 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @T_SEQUENTIAL, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %25, align 8
  %65 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %48
  br label %89

67:                                               ; preds = %34
  %68 = bitcast i32* %30 to %struct.scsi_mode_header_10*
  store %struct.scsi_mode_header_10* %68, %struct.scsi_mode_header_10** %26, align 8
  store i64 16, i64* %23, align 8
  %69 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %26, align 8
  %70 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %69, i64 1
  %71 = bitcast %struct.scsi_mode_header_10* %70 to i32*
  store i32* %71, i32** %21, align 8
  %72 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %26, align 8
  %73 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @scsi_2btoul(i32 %74)
  store i64 %75, i64* %22, align 8
  %76 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %26, align 8
  %77 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @scsi_ulto2b(i32 0, i32 %78)
  %80 = load %struct.cam_device*, %struct.cam_device** %10, align 8
  %81 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @T_SEQUENTIAL, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %67
  %86 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %26, align 8
  %87 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %67
  br label %89

89:                                               ; preds = %88, %66
  %90 = load i64, i64* %22, align 8
  %91 = mul nuw i64 4, %28
  %92 = load i32*, i32** %21, align 8
  %93 = ptrtoint i32* %92 to i64
  %94 = ptrtoint i32* %30 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 4
  %97 = sub i64 %91, %96
  %98 = trunc i64 %97 to i32
  %99 = call i64 @MIN(i64 %90, i32 %98)
  store i64 %99, i64* %22, align 8
  %100 = load i32*, i32** %21, align 8
  %101 = load i64, i64* %22, align 8
  %102 = load i32, i32* @format, align 4
  %103 = load i32, i32* @editentry_save, align 4
  %104 = call i32 @buff_encode_visit(i32* %100, i64 %101, i32 %102, i32 %103, i32 0)
  %105 = load %struct.cam_device*, %struct.cam_device** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i64, i64* @PAGE_CTRL_SHIFT, align 8
  %109 = trunc i64 %108 to i32
  %110 = shl i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @SMS_PAGE_CTRL_SAVED, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %18, align 4
  %118 = load i64, i64* %23, align 8
  %119 = load i64, i64* %22, align 8
  %120 = add i64 %118, %119
  %121 = call i32 @mode_select(%struct.cam_device* %105, i32 %106, i32 %114, i32 %115, i32 %116, i32 %117, i32* %30, i64 %120)
  store i32 0, i32* %24, align 4
  br label %122

122:                                              ; preds = %89, %33
  %123 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %24, align 4
  switch i32 %124, label %126 [
    i32 0, label %125
    i32 1, label %125
  ]

125:                                              ; preds = %122, %122
  ret void

126:                                              ; preds = %122
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mode_sense(%struct.cam_device*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @scsi_2btoul(i32) #2

declare dso_local i32 @scsi_ulto2b(i32, i32) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i32 @buff_encode_visit(i32*, i64, i32, i32, i32) #2

declare dso_local i32 @mode_select(%struct.cam_device*, i32, i32, i32, i32, i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
