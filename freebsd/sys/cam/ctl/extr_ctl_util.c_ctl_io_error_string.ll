; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_io_error_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_io_error_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.sbuf = type { i32 }

@SBUF_FIXEDLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ctl_io_error_string(%union.ctl_io* %0, %struct.scsi_inquiry_data* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca %struct.scsi_inquiry_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sbuf, align 4
  store %union.ctl_io* %0, %union.ctl_io** %5, align 8
  store %struct.scsi_inquiry_data* %1, %struct.scsi_inquiry_data** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %13 = call i32 @sbuf_new(%struct.sbuf* %9, i8* %10, i32 %11, i32 %12)
  %14 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %15 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %6, align 8
  %16 = call i32 @ctl_io_error_sbuf(%union.ctl_io* %14, %struct.scsi_inquiry_data* %15, %struct.sbuf* %9)
  %17 = call i32 @sbuf_finish(%struct.sbuf* %9)
  %18 = call i8* @sbuf_data(%struct.sbuf* %9)
  ret i8* %18
}

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @ctl_io_error_sbuf(%union.ctl_io*, %struct.scsi_inquiry_data*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
