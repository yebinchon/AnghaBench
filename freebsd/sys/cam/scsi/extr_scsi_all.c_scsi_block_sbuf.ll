; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_block_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_block_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Block Command Sense Data: \00", align 1
@SSD_DESC_BLOCK_ILI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ILI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_block_sbuf(%struct.sbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %6 = call i32 @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SSD_DESC_BLOCK_ILI, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %13 = call i32 @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
