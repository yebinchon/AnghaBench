; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_editlist_populate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_editlist_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.scsi_mode_page_header = type { i32, i64 }
%struct.scsi_mode_page_header_sp = type { i32 }
%struct.scsi_mode_header_6 = type { i32 }
%struct.scsi_mode_header_10 = type { i32 }

@MAX_DATA_SIZE = common dso_local global i32 0, align 4
@editlist = common dso_local global i32 0, align 4
@SMPH_SPF = common dso_local global i32 0, align 4
@format = common dso_local global i32 0, align 4
@editentry_create = common dso_local global i32 0, align 4
@editentry_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32)* @editlist_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @editlist_populate(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %22 = alloca %struct.scsi_mode_page_header*, align 8
  %23 = alloca %struct.scsi_mode_page_header_sp*, align 8
  %24 = alloca i64, align 8
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
  %31 = call i32 @STAILQ_INIT(i32* @editlist)
  %32 = load %struct.cam_device*, %struct.cam_device** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %18, align 4
  %39 = mul nuw i64 4, %28
  %40 = trunc i64 %39 to i32
  %41 = call i32 @mode_sense(%struct.cam_device* %32, i32* %11, i32 %33, i32 0, i32 1, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32* %30, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 6
  br i1 %43, label %44, label %48

44:                                               ; preds = %9
  %45 = bitcast i32* %30 to %struct.scsi_mode_header_6*
  store %struct.scsi_mode_header_6* %45, %struct.scsi_mode_header_6** %25, align 8
  %46 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %25, align 8
  %47 = call %struct.scsi_mode_page_header* @find_mode_page_6(%struct.scsi_mode_header_6* %46)
  store %struct.scsi_mode_page_header* %47, %struct.scsi_mode_page_header** %22, align 8
  br label %52

48:                                               ; preds = %9
  %49 = bitcast i32* %30 to %struct.scsi_mode_header_10*
  store %struct.scsi_mode_header_10* %49, %struct.scsi_mode_header_10** %26, align 8
  %50 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %26, align 8
  %51 = call %struct.scsi_mode_page_header* @find_mode_page_10(%struct.scsi_mode_header_10* %50)
  store %struct.scsi_mode_page_header* %51, %struct.scsi_mode_page_header** %22, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %22, align 8
  %54 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SMPH_SPF, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %22, align 8
  %61 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %60, i64 1
  %62 = bitcast %struct.scsi_mode_page_header* %61 to i32*
  store i32* %62, i32** %21, align 8
  %63 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %22, align 8
  %64 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %24, align 8
  br label %76

66:                                               ; preds = %52
  %67 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %22, align 8
  %68 = bitcast %struct.scsi_mode_page_header* %67 to %struct.scsi_mode_page_header_sp*
  store %struct.scsi_mode_page_header_sp* %68, %struct.scsi_mode_page_header_sp** %23, align 8
  %69 = load %struct.scsi_mode_page_header_sp*, %struct.scsi_mode_page_header_sp** %23, align 8
  %70 = getelementptr inbounds %struct.scsi_mode_page_header_sp, %struct.scsi_mode_page_header_sp* %69, i64 1
  %71 = bitcast %struct.scsi_mode_page_header_sp* %70 to i32*
  store i32* %71, i32** %21, align 8
  %72 = load %struct.scsi_mode_page_header_sp*, %struct.scsi_mode_page_header_sp** %23, align 8
  %73 = getelementptr inbounds %struct.scsi_mode_page_header_sp, %struct.scsi_mode_page_header_sp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @scsi_2btoul(i32 %74)
  store i64 %75, i64* %24, align 8
  br label %76

76:                                               ; preds = %66, %59
  %77 = load i64, i64* %24, align 8
  %78 = mul nuw i64 4, %28
  %79 = load i32*, i32** %21, align 8
  %80 = ptrtoint i32* %79 to i64
  %81 = ptrtoint i32* %30 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = sub i64 %78, %83
  %85 = trunc i64 %84 to i32
  %86 = call i64 @MIN(i64 %77, i32 %85)
  store i64 %86, i64* %24, align 8
  %87 = load i32*, i32** %21, align 8
  %88 = load i64, i64* %24, align 8
  %89 = load i32, i32* @format, align 4
  %90 = load i32, i32* @editentry_create, align 4
  %91 = call i32 @buff_decode_visit(i32* %87, i64 %88, i32 %89, i32 %90, i32 0)
  %92 = load %struct.cam_device*, %struct.cam_device** %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %18, align 4
  %100 = mul nuw i64 4, %28
  %101 = trunc i64 %100 to i32
  %102 = call i32 @mode_sense(%struct.cam_device* %92, i32* %11, i32 %93, i32 0, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32* %30, i32 %101)
  %103 = load i32*, i32** %21, align 8
  %104 = load i64, i64* %24, align 8
  %105 = load i32, i32* @format, align 4
  %106 = load i32, i32* @editentry_update, align 4
  %107 = call i32 @buff_decode_visit(i32* %103, i64 %104, i32 %105, i32 %106, i32 0)
  %108 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @STAILQ_INIT(i32*) #2

declare dso_local i32 @mode_sense(%struct.cam_device*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local %struct.scsi_mode_page_header* @find_mode_page_6(%struct.scsi_mode_header_6*) #2

declare dso_local %struct.scsi_mode_page_header* @find_mode_page_10(%struct.scsi_mode_header_10*) #2

declare dso_local i64 @scsi_2btoul(i32) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i32 @buff_decode_visit(i32*, i64, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
