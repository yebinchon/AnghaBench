; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passmemdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passmemdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i64 }
%struct.pass_io_req = type { i32, i32, i32*, i32*, i32*, i32* }
%struct.pass_softc = type { i32 }

@CAM_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unable to copy %u bytes from %p to user address %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_periph*, %struct.pass_io_req*)* @passmemdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passmemdone(%struct.cam_periph* %0, %struct.pass_io_req* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.pass_io_req*, align 8
  %5 = alloca %struct.pass_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %struct.pass_io_req* %1, %struct.pass_io_req** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %9 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.pass_softc*
  store %struct.pass_softc* %11, %struct.pass_softc** %5, align 8
  %12 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %13 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %109 [
    i32 128, label %15
    i32 131, label %89
    i32 130, label %90
    i32 129, label %108
    i32 132, label %110
  ]

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %85, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %19 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %88

22:                                               ; preds = %16
  %23 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %24 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CAM_DIR_IN, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %85

33:                                               ; preds = %22
  %34 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %35 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %42 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %49 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @copyout(i32 %40, i32 %47, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %33
  %59 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %60 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %63 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %70 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %77 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @xpt_print(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %75, i32 %82)
  br label %113

84:                                               ; preds = %33
  br label %85

85:                                               ; preds = %84, %32
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %16

88:                                               ; preds = %16
  br label %112

89:                                               ; preds = %2
  br label %112

90:                                               ; preds = %2
  %91 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %92 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CAM_DIR_IN, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %100 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %101 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %102 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @passcopysglist(%struct.cam_periph* %99, %struct.pass_io_req* %100, i32 %105)
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %98, %90
  br label %112

108:                                              ; preds = %2
  br label %112

109:                                              ; preds = %2
  br label %110

110:                                              ; preds = %2, %109
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %108, %107, %89, %88
  br label %113

113:                                              ; preds = %112, %58
  %114 = load %struct.pass_softc*, %struct.pass_softc** %5, align 8
  %115 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %116 = call i32 @passiocleanup(%struct.pass_softc* %114, %struct.pass_io_req* %115)
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @copyout(i32, i32, i32) #1

declare dso_local i32 @xpt_print(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @passcopysglist(%struct.cam_periph*, %struct.pass_io_req*, i32) #1

declare dso_local i32 @passiocleanup(%struct.pass_softc*, %struct.pass_io_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
