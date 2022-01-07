; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_scsi_all.c_ctl_scsi_command_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_scsi_all.c_ctl_scsi_command_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32* }
%struct.scsi_inquiry_data = type { i32 }
%struct.sbuf = type { i32 }

@SCSI_MAX_CDBLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s. CDB: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_scsi_command_string(%struct.ctl_scsiio* %0, %struct.scsi_inquiry_data* %1, %struct.sbuf* %2) #0 {
  %4 = alloca %struct.ctl_scsiio*, align 8
  %5 = alloca %struct.scsi_inquiry_data*, align 8
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %4, align 8
  store %struct.scsi_inquiry_data* %1, %struct.scsi_inquiry_data** %5, align 8
  store %struct.sbuf* %2, %struct.sbuf** %6, align 8
  %9 = load i32, i32* @SCSI_MAX_CDBLEN, align 4
  %10 = mul nsw i32 %9, 3
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %16 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %17 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %22 = call i32 @scsi_op_desc(i32 %20, %struct.scsi_inquiry_data* %21)
  %23 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %24 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = trunc i64 %12 to i32
  %27 = call i32 @scsi_cdb_string(i32* %25, i8* %14, i32 %26)
  %28 = call i32 @sbuf_printf(%struct.sbuf* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %29)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i32) #2

declare dso_local i32 @scsi_op_desc(i32, %struct.scsi_inquiry_data*) #2

declare dso_local i32 @scsi_cdb_string(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
