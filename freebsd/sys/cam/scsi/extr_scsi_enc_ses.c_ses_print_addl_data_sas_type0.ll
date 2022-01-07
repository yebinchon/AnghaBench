; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_print_addl_data_sas_type0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_print_addl_data_sas_type0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.ses_addl_status }
%struct.ses_addl_status = type { %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_12__ = type { %struct.ses_elm_sas_device_phy* }
%struct.ses_elm_sas_device_phy = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c", SAS Slot: %d%s phys\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" at slot %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s:  phy %d:\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" SATA device\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c" SAS device type %d phy %d\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Initiator\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"%s:  phy %d: parent %jx addr %jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sbuf*, %struct.TYPE_14__*)* @ses_print_addl_data_sas_type0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_print_addl_data_sas_type0(i8* %0, %struct.sbuf* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.ses_addl_status*, align 8
  %10 = alloca %struct.ses_elm_sas_device_phy*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sbuf* %1, %struct.sbuf** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store %struct.ses_addl_status* %15, %struct.ses_addl_status** %9, align 8
  %16 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %17 = load %struct.ses_addl_status*, %struct.ses_addl_status** %9, align 8
  %18 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ses_addl_status*, %struct.ses_addl_status** %9, align 8
  %25 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = call i64 @ses_elm_sas_type0_not_all_phys(%struct.TYPE_15__* %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %31)
  %33 = load %struct.ses_addl_status*, %struct.ses_addl_status** %9, align 8
  %34 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @ses_elm_addlstatus_eip(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %3
  %39 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %40 = load %struct.ses_addl_status*, %struct.ses_addl_status** %9, align 8
  %41 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %38, %3
  %49 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %50 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.ses_addl_status*, %struct.ses_addl_status** %9, align 8
  %52 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.ses_elm_sas_device_phy*, %struct.ses_elm_sas_device_phy** %53, align 8
  %55 = icmp eq %struct.ses_elm_sas_device_phy* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %122

57:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %119, %57
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ses_addl_status*, %struct.ses_addl_status** %9, align 8
  %61 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %59, %66
  br i1 %67, label %68, label %122

68:                                               ; preds = %58
  %69 = load %struct.ses_addl_status*, %struct.ses_addl_status** %9, align 8
  %70 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load %struct.ses_elm_sas_device_phy*, %struct.ses_elm_sas_device_phy** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ses_elm_sas_device_phy, %struct.ses_elm_sas_device_phy* %72, i64 %74
  store %struct.ses_elm_sas_device_phy* %75, %struct.ses_elm_sas_device_phy** %10, align 8
  %76 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %77, i32 %78)
  %80 = load %struct.ses_elm_sas_device_phy*, %struct.ses_elm_sas_device_phy** %10, align 8
  %81 = call i64 @ses_elm_sas_dev_phy_sata_dev(%struct.ses_elm_sas_device_phy* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %85 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %104

86:                                               ; preds = %68
  %87 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %88 = load %struct.ses_elm_sas_device_phy*, %struct.ses_elm_sas_device_phy** %10, align 8
  %89 = call i32 @ses_elm_sas_dev_phy_dev_type(%struct.ses_elm_sas_device_phy* %88)
  %90 = load %struct.ses_elm_sas_device_phy*, %struct.ses_elm_sas_device_phy** %10, align 8
  %91 = getelementptr inbounds %struct.ses_elm_sas_device_phy, %struct.ses_elm_sas_device_phy* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %89, i32 %92)
  %94 = load %struct.ses_elm_sas_device_phy*, %struct.ses_elm_sas_device_phy** %10, align 8
  %95 = getelementptr inbounds %struct.ses_elm_sas_device_phy, %struct.ses_elm_sas_device_phy* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @SES_PRINT_PORTS(i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %98 = load %struct.ses_elm_sas_device_phy*, %struct.ses_elm_sas_device_phy** %10, align 8
  %99 = getelementptr inbounds %struct.ses_elm_sas_device_phy, %struct.ses_elm_sas_device_phy* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @SES_PRINT_PORTS(i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %102 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %103 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %86, %83
  %105 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.ses_elm_sas_device_phy*, %struct.ses_elm_sas_device_phy** %10, align 8
  %109 = getelementptr inbounds %struct.ses_elm_sas_device_phy, %struct.ses_elm_sas_device_phy* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @scsi_8btou64(i32 %110)
  %112 = trunc i64 %111 to i32
  %113 = load %struct.ses_elm_sas_device_phy*, %struct.ses_elm_sas_device_phy** %10, align 8
  %114 = getelementptr inbounds %struct.ses_elm_sas_device_phy, %struct.ses_elm_sas_device_phy* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @scsi_8btou64(i32 %115)
  %117 = trunc i64 %116 to i32
  %118 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %106, i32 %107, i32 %112, i32 %117)
  br label %119

119:                                              ; preds = %104
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %58

122:                                              ; preds = %56, %58
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i64 @ses_elm_sas_type0_not_all_phys(%struct.TYPE_15__*) #1

declare dso_local i64 @ses_elm_addlstatus_eip(i32) #1

declare dso_local i64 @ses_elm_sas_dev_phy_sata_dev(%struct.ses_elm_sas_device_phy*) #1

declare dso_local i32 @ses_elm_sas_dev_phy_dev_type(%struct.ses_elm_sas_device_phy*) #1

declare dso_local i32 @SES_PRINT_PORTS(i32, i8*) #1

declare dso_local i64 @scsi_8btou64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
