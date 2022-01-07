; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_get_elm_addlstatus_sas_type0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_get_elm_addlstatus_sas_type0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.ses_addl_status }
%struct.ses_addl_status = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { %struct.ses_elm_sas_device_phy* }
%struct.ses_elm_sas_device_phy = type { i32 }
%struct.TYPE_9__ = type { %union.ses_elm_sas_hdr* }
%union.ses_elm_sas_hdr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Element %d Device Phy List Beyond End Of Buffer\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, i32*, i32, i32, i32)* @ses_get_elm_addlstatus_sas_type0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_get_elm_addlstatus_sas_type0(i32* %0, %struct.TYPE_12__* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
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
  %40 = call i32 @bzero(%struct.TYPE_13__* %39, i32 8)
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
  br label %95

50:                                               ; preds = %6
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 4
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %14, align 4
  br label %63

58:                                               ; preds = %50
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.ses_addl_status*, %struct.ses_addl_status** %18, align 8
  %65 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %union.ses_elm_sas_hdr*, %union.ses_elm_sas_hdr** %66, align 8
  %68 = bitcast %union.ses_elm_sas_hdr* %67 to %struct.TYPE_8__*
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %76, %77
  %79 = add nsw i32 %78, 4
  %80 = icmp sgt i32 %75, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %63
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @ENC_VLOG(i32* %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EIO, align 4
  store i32 %85, i32* %13, align 4
  br label %95

86:                                               ; preds = %63
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = bitcast i32* %90 to %struct.ses_elm_sas_device_phy*
  %92 = load %struct.ses_addl_status*, %struct.ses_addl_status** %18, align 8
  %93 = getelementptr inbounds %struct.ses_addl_status, %struct.ses_addl_status* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store %struct.ses_elm_sas_device_phy* %91, %struct.ses_elm_sas_device_phy** %94, align 8
  br label %95

95:                                               ; preds = %86, %81, %49
  %96 = load i32, i32* %13, align 4
  ret i32 %96
}

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ENC_VLOG(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
