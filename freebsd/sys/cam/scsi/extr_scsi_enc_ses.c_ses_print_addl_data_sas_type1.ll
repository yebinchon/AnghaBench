; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_print_addl_data_sas_type1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_print_addl_data_sas_type1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.ses_addl_status }
%struct.ses_addl_status = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.ses_elm_sas_port_phy*, %struct.ses_elm_sas_expander_phy* }
%struct.ses_elm_sas_port_phy = type { i32, i32, i32, i32 }
%struct.ses_elm_sas_expander_phy = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c", SAS \00", align 1
@ELMTYP_SAS_EXP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Expander: %d phys\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s:  phy %d: connector %d other %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Port: %d phys\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%s:  phy %d: id %d connector %d other %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s:  phy %d: addr %jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sbuf*, %struct.TYPE_13__*)* @ses_print_addl_data_sas_type1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_print_addl_data_sas_type1(i8* %0, %struct.sbuf* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.ses_addl_status*, align 8
  %11 = alloca %struct.ses_elm_sas_expander_phy*, align 8
  %12 = alloca %struct.ses_elm_sas_port_phy*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sbuf* %1, %struct.sbuf** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %9, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store %struct.ses_addl_status* %17, %struct.ses_addl_status** %10, align 8
  %18 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %19 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ELMTYP_SAS_EXP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %3
  %26 = load %struct.ses_addl_status*, %struct.ses_addl_status** %10, align 8
  %27 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.ses_addl_status*, %struct.ses_addl_status** %10, align 8
  %37 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.ses_elm_sas_expander_phy*, %struct.ses_elm_sas_expander_phy** %38, align 8
  %40 = icmp eq %struct.ses_elm_sas_expander_phy* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  br label %125

42:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %65, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load %struct.ses_addl_status*, %struct.ses_addl_status** %10, align 8
  %49 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load %struct.ses_elm_sas_expander_phy*, %struct.ses_elm_sas_expander_phy** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ses_elm_sas_expander_phy, %struct.ses_elm_sas_expander_phy* %51, i64 %53
  store %struct.ses_elm_sas_expander_phy* %54, %struct.ses_elm_sas_expander_phy** %11, align 8
  %55 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ses_elm_sas_expander_phy*, %struct.ses_elm_sas_expander_phy** %11, align 8
  %59 = getelementptr inbounds %struct.ses_elm_sas_expander_phy, %struct.ses_elm_sas_expander_phy* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ses_elm_sas_expander_phy*, %struct.ses_elm_sas_expander_phy** %11, align 8
  %62 = getelementptr inbounds %struct.ses_elm_sas_expander_phy, %struct.ses_elm_sas_expander_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %56, i32 %57, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %43

68:                                               ; preds = %43
  br label %125

69:                                               ; preds = %3
  %70 = load %struct.ses_addl_status*, %struct.ses_addl_status** %10, align 8
  %71 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  %77 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.ses_addl_status*, %struct.ses_addl_status** %10, align 8
  %81 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.ses_elm_sas_port_phy*, %struct.ses_elm_sas_port_phy** %82, align 8
  %84 = icmp eq %struct.ses_elm_sas_port_phy* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %125

86:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %121, %86
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %124

91:                                               ; preds = %87
  %92 = load %struct.ses_addl_status*, %struct.ses_addl_status** %10, align 8
  %93 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.ses_elm_sas_port_phy*, %struct.ses_elm_sas_port_phy** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ses_elm_sas_port_phy, %struct.ses_elm_sas_port_phy* %95, i64 %97
  store %struct.ses_elm_sas_port_phy* %98, %struct.ses_elm_sas_port_phy** %12, align 8
  %99 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.ses_elm_sas_port_phy*, %struct.ses_elm_sas_port_phy** %12, align 8
  %103 = getelementptr inbounds %struct.ses_elm_sas_port_phy, %struct.ses_elm_sas_port_phy* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ses_elm_sas_port_phy*, %struct.ses_elm_sas_port_phy** %12, align 8
  %106 = getelementptr inbounds %struct.ses_elm_sas_port_phy, %struct.ses_elm_sas_port_phy* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ses_elm_sas_port_phy*, %struct.ses_elm_sas_port_phy** %12, align 8
  %109 = getelementptr inbounds %struct.ses_elm_sas_port_phy, %struct.ses_elm_sas_port_phy* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %100, i32 %101, i32 %104, i32 %107, i32 %110)
  %112 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.ses_elm_sas_port_phy*, %struct.ses_elm_sas_port_phy** %12, align 8
  %116 = getelementptr inbounds %struct.ses_elm_sas_port_phy, %struct.ses_elm_sas_port_phy* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @scsi_8btou64(i32 %117)
  %119 = trunc i64 %118 to i32
  %120 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %113, i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %91
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %87

124:                                              ; preds = %87
  br label %125

125:                                              ; preds = %41, %85, %124, %68
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i64 @scsi_8btou64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
