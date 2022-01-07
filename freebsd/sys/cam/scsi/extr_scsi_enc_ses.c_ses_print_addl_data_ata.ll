; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_print_addl_data_ata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_print_addl_data_ata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ses_addl_status }
%struct.ses_addl_status = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ses_elm_ata_hdr* }
%struct.ses_elm_ata_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c", SATA Slot: scbus%d target %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, %struct.TYPE_7__*)* @ses_print_addl_data_ata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_print_addl_data_ata(%struct.sbuf* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.ses_addl_status*, align 8
  %7 = alloca %struct.ses_elm_ata_hdr*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.ses_addl_status* %12, %struct.ses_addl_status** %6, align 8
  %13 = load %struct.ses_addl_status*, %struct.ses_addl_status** %6, align 8
  %14 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.ses_elm_ata_hdr*, %struct.ses_elm_ata_hdr** %15, align 8
  store %struct.ses_elm_ata_hdr* %16, %struct.ses_elm_ata_hdr** %7, align 8
  %17 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %18 = load %struct.ses_elm_ata_hdr*, %struct.ses_elm_ata_hdr** %7, align 8
  %19 = getelementptr inbounds %struct.ses_elm_ata_hdr, %struct.ses_elm_ata_hdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @scsi_4btoul(i32 %20)
  %22 = load %struct.ses_elm_ata_hdr*, %struct.ses_elm_ata_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.ses_elm_ata_hdr, %struct.ses_elm_ata_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @scsi_4btoul(i32 %24)
  %26 = call i32 @sbuf_printf(%struct.sbuf* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
