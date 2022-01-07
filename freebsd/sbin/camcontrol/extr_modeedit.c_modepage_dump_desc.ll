; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_modepage_dump_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_modepage_dump_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.scsi_mode_header_6 = type { i64 }
%struct.scsi_mode_header_10 = type { i32 }

@MAX_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%02x%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32)* @modepage_dump_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modepage_dump_desc(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %24 = alloca %struct.scsi_mode_header_6*, align 8
  %25 = alloca %struct.scsi_mode_header_10*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %26 = load i32, i32* @MAX_DATA_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %19, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %30 = load %struct.cam_device*, %struct.cam_device** %10, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %18, align 4
  %38 = mul nuw i64 4, %27
  %39 = trunc i64 %38 to i32
  %40 = call i32 @mode_sense(%struct.cam_device* %30, i32* %11, i32 0, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32* %29, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 6
  br i1 %42, label %43, label %51

43:                                               ; preds = %9
  %44 = bitcast i32* %29 to %struct.scsi_mode_header_6*
  store %struct.scsi_mode_header_6* %44, %struct.scsi_mode_header_6** %24, align 8
  %45 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %24, align 8
  %46 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %45, i64 1
  %47 = bitcast %struct.scsi_mode_header_6* %46 to i32*
  store i32* %47, i32** %21, align 8
  %48 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %24, align 8
  %49 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %23, align 8
  br label %60

51:                                               ; preds = %9
  %52 = bitcast i32* %29 to %struct.scsi_mode_header_10*
  store %struct.scsi_mode_header_10* %52, %struct.scsi_mode_header_10** %25, align 8
  %53 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %25, align 8
  %54 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %53, i64 1
  %55 = bitcast %struct.scsi_mode_header_10* %54 to i32*
  store i32* %55, i32** %21, align 8
  %56 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %25, align 8
  %57 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @scsi_2btoul(i32 %58)
  store i64 %59, i64* %23, align 8
  br label %60

60:                                               ; preds = %51, %43
  %61 = load i64, i64* %23, align 8
  %62 = mul nuw i64 4, %27
  %63 = load i32*, i32** %21, align 8
  %64 = ptrtoint i32* %63 to i64
  %65 = ptrtoint i32* %29 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = sub i64 %62, %67
  %69 = trunc i64 %68 to i32
  %70 = call i64 @MIN(i64 %61, i32 %69)
  store i64 %70, i64* %23, align 8
  store i64 0, i64* %22, align 8
  br label %71

71:                                               ; preds = %88, %60
  %72 = load i64, i64* %22, align 8
  %73 = load i64, i64* %23, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load i32*, i32** %21, align 8
  %77 = load i64, i64* %22, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %22, align 8
  %81 = add i64 %80, 1
  %82 = urem i64 %81, 8
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 10, i32 32
  %86 = trunc i32 %85 to i8
  %87 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %79, i8 signext %86)
  br label %88

88:                                               ; preds = %75
  %89 = load i64, i64* %22, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %22, align 8
  br label %71

91:                                               ; preds = %71
  %92 = call i32 @putchar(i8 signext 10)
  %93 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %93)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mode_sense(%struct.cam_device*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @scsi_2btoul(i32) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i32 @printf(i8*, i32, i8 signext) #2

declare dso_local i32 @putchar(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
