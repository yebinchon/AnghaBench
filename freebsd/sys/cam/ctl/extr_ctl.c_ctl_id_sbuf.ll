; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_id_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_id_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_devid = type { i32, i64 }
%struct.sbuf = type { i32 }
%struct.scsi_vpd_id_descriptor = type { i32, i32, i32, i8** }

@SVPD_ID_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"t10.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"eui.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"naa.\00", align 1
@SVPD_ID_CODESET_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_devid*, %struct.sbuf*)* @ctl_id_sbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_id_sbuf(%struct.ctl_devid* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.ctl_devid*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.scsi_vpd_id_descriptor*, align 8
  %6 = alloca i32, align 4
  store %struct.ctl_devid* %0, %struct.ctl_devid** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %7 = load %struct.ctl_devid*, %struct.ctl_devid** %3, align 8
  %8 = icmp eq %struct.ctl_devid* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.ctl_devid*, %struct.ctl_devid** %3, align 8
  %11 = getelementptr inbounds %struct.ctl_devid, %struct.ctl_devid* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  br label %79

15:                                               ; preds = %9
  %16 = load %struct.ctl_devid*, %struct.ctl_devid** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_devid, %struct.ctl_devid* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.scsi_vpd_id_descriptor*
  store %struct.scsi_vpd_id_descriptor* %19, %struct.scsi_vpd_id_descriptor** %5, align 8
  %20 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SVPD_ID_TYPE_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %35 [
    i32 128, label %25
    i32 131, label %28
    i32 130, label %31
    i32 129, label %34
  ]

25:                                               ; preds = %15
  %26 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %27 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %35

28:                                               ; preds = %15
  %29 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %30 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %35

31:                                               ; preds = %15
  %32 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %33 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %35

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %15, %34, %31, %28, %25
  %36 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %5, align 8
  %37 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SVPD_ID_CODESET_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %79 [
    i32 133, label %41
    i32 134, label %62
    i32 132, label %72
  ]

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %5, align 8
  %45 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %50 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %5, align 8
  %51 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %50, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %42

61:                                               ; preds = %42
  br label %79

62:                                               ; preds = %35
  %63 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %64 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %5, align 8
  %68 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %67, i32 0, i32 3
  %69 = load i8**, i8*** %68, align 8
  %70 = bitcast i8** %69 to i8*
  %71 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %66, i8* %70)
  br label %79

72:                                               ; preds = %35
  %73 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %74 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %5, align 8
  %75 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %74, i32 0, i32 3
  %76 = load i8**, i8*** %75, align 8
  %77 = bitcast i8** %76 to i8*
  %78 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %14, %35, %72, %62, %61
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
