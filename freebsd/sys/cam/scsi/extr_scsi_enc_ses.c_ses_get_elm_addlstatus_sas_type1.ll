; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_get_elm_addlstatus_sas_type1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_get_elm_addlstatus_sas_type1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.ses_addl_status }
%struct.ses_addl_status = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { %struct.ses_elm_sas_port_phy*, %struct.ses_elm_sas_expander_phy* }
%struct.ses_elm_sas_port_phy = type { i32 }
%struct.ses_elm_sas_expander_phy = type { i32 }
%struct.TYPE_9__ = type { %union.ses_elm_sas_hdr* }
%union.ses_elm_sas_hdr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ELMTYP_SAS_EXP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Element %d: Expander Phy List Beyond End Of Buffer\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Element %d: Port Phy List Beyond End Of Buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, i32*, i32, i32, i32)* @ses_get_elm_addlstatus_sas_type1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_get_elm_addlstatus_sas_type1(i32* %0, %struct.TYPE_12__* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.ses_addl_status*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %23
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %16, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %17, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store %struct.ses_addl_status* %29, %struct.ses_addl_status** %18, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = bitcast i32* %33 to %union.ses_elm_sas_hdr*
  %35 = load %struct.ses_addl_status*, %struct.ses_addl_status** %18, align 8
  %36 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store %union.ses_elm_sas_hdr* %34, %union.ses_elm_sas_hdr** %37, align 8
  %38 = load %struct.ses_addl_status*, %struct.ses_addl_status** %18, align 8
  %39 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %38, i32 0, i32 0
  %40 = call i32 @bzero(%struct.TYPE_13__* %39, i32 16)
  %41 = load %struct.ses_addl_status*, %struct.ses_addl_status** %18, align 8
  %42 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %union.ses_elm_sas_hdr*, %union.ses_elm_sas_hdr** %43, align 8
  %45 = bitcast %union.ses_elm_sas_hdr* %44 to %struct.TYPE_8__*
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %6
  br label %126

50:                                               ; preds = %6
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ELMTYP_SAS_EXP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %50
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load %struct.ses_addl_status*, %struct.ses_addl_status** %18, align 8
  %62 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %union.ses_elm_sas_hdr*, %union.ses_elm_sas_hdr** %63, align 8
  %65 = bitcast %union.ses_elm_sas_hdr* %64 to %struct.TYPE_8__*
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %72, %73
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %56
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @ENC_VLOG(i32* %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EIO, align 4
  store i32 %80, i32* %13, align 4
  br label %126

81:                                               ; preds = %56
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = bitcast i32* %85 to %struct.ses_elm_sas_expander_phy*
  %87 = load %struct.ses_addl_status*, %struct.ses_addl_status** %18, align 8
  %88 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  store %struct.ses_elm_sas_expander_phy* %86, %struct.ses_elm_sas_expander_phy** %89, align 8
  br label %125

90:                                               ; preds = %50
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, 4
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %14, align 4
  %95 = load %struct.ses_addl_status*, %struct.ses_addl_status** %18, align 8
  %96 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %union.ses_elm_sas_hdr*, %union.ses_elm_sas_hdr** %97, align 8
  %99 = bitcast %union.ses_elm_sas_hdr* %98 to %struct.TYPE_8__*
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 %106, %107
  %109 = add nsw i32 %108, 4
  %110 = icmp sgt i32 %105, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %90
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @ENC_VLOG(i32* %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EIO, align 4
  store i32 %115, i32* %13, align 4
  br label %126

116:                                              ; preds = %90
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = bitcast i32* %120 to %struct.ses_elm_sas_port_phy*
  %122 = load %struct.ses_addl_status*, %struct.ses_addl_status** %18, align 8
  %123 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  store %struct.ses_elm_sas_port_phy* %121, %struct.ses_elm_sas_port_phy** %124, align 8
  br label %125

125:                                              ; preds = %116, %81
  br label %126

126:                                              ; preds = %125, %111, %76, %49
  %127 = load i32, i32* %13, align 4
  ret i32 %127
}

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ENC_VLOG(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
