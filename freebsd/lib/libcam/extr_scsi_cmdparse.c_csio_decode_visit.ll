; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcam/extr_scsi_cmdparse.c_csio_decode_visit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcam/extr_scsi_cmdparse.c_csio_decode_visit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_decode_visit(%struct.ccb_scsiio* %0, i8* %1, void (i8*, i32, i8*, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca void (i8*, i32, i8*, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %6, align 8
  store i8* %1, i8** %7, align 8
  store void (i8*, i32, i8*, i32, i8*)* %2, void (i8*, i32, i8*, i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load void (i8*, i32, i8*, i32, i8*)*, void (i8*, i32, i8*, i32, i8*)** %8, align 8
  %11 = icmp eq void (i8*, i32, i8*, i32, i8*)* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %24

13:                                               ; preds = %4
  %14 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %15 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %18 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load void (i8*, i32, i8*, i32, i8*)*, void (i8*, i32, i8*, i32, i8*)** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @do_buff_decode(i32 %16, i64 %19, void (i8*, i32, i8*, i32, i8*)* %20, i8* %21, i8* %22, i32* null)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %13, %12
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @do_buff_decode(i32, i64, void (i8*, i32, i8*, i32, i8*)*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
