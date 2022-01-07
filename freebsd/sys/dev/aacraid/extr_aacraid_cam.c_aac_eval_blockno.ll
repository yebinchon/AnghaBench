; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_eval_blockno.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_eval_blockno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_rw_6 = type { i32 }
%struct.scsi_rw_10 = type { i32 }
%struct.scsi_rw_12 = type { i32 }
%struct.scsi_rw_16 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @aac_eval_blockno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_eval_blockno(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 132, label %7
    i32 128, label %7
    i32 135, label %13
    i32 131, label %13
    i32 134, label %19
    i32 130, label %19
    i32 133, label %25
    i32 129, label %25
  ]

7:                                                ; preds = %1, %1
  %8 = load i32*, i32** %2, align 8
  %9 = bitcast i32* %8 to %struct.scsi_rw_6*
  %10 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @scsi_3btoul(i32 %11)
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %1, %1
  %14 = load i32*, i32** %2, align 8
  %15 = bitcast i32* %14 to %struct.scsi_rw_10*
  %16 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @scsi_4btoul(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %1, %1
  %20 = load i32*, i32** %2, align 8
  %21 = bitcast i32* %20 to %struct.scsi_rw_12*
  %22 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @scsi_4btoul(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %1, %1
  %26 = load i32*, i32** %2, align 8
  %27 = bitcast i32* %26 to %struct.scsi_rw_16*
  %28 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @scsi_8btou64(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %25, %19, %13, %7
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @scsi_3btoul(i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
