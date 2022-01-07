; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_get_elm_addlstatus_sas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_get_elm_addlstatus_sas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%union.ses_elm_sas_hdr = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Element %d has Additional Status type 0, invalid for SES element type 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Element %d has Additional Status type 1, invalid for SES element type 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Element %d of type 0x%x has Additional Status of unknown type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32*, i32, i32, i32, i32)* @ses_get_elm_addlstatus_sas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_get_elm_addlstatus_sas(i32* %0, %struct.TYPE_11__* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %union.ses_elm_sas_hdr*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @EIO, align 4
  store i32 %23, i32* %16, align 4
  br label %120

24:                                               ; preds = %7
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %17, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = bitcast i32* %28 to %union.ses_elm_sas_hdr*
  store %union.ses_elm_sas_hdr* %29, %union.ses_elm_sas_hdr** %18, align 8
  %30 = load %union.ses_elm_sas_hdr*, %union.ses_elm_sas_hdr** %18, align 8
  %31 = call i32 @ses_elm_sas_descr_type(%union.ses_elm_sas_hdr* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  switch i32 %32, label %103 [
    i32 128, label %33
    i32 129, label %68
  ]

33:                                               ; preds = %24
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %45 [
    i32 134, label %44
    i32 135, label %44
  ]

44:                                               ; preds = %33, %33
  br label %60

45:                                               ; preds = %33
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32*, i8*, i32, i32, ...) @ENC_VLOG(i32* %46, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %57)
  %59 = load i32, i32* @ENODEV, align 4
  store i32 %59, i32* %16, align 4
  br label %120

60:                                               ; preds = %44
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @ses_get_elm_addlstatus_sas_type0(i32* %61, %struct.TYPE_11__* %62, i32* %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %16, align 4
  br label %119

68:                                               ; preds = %24
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %80 [
    i32 132, label %79
    i32 131, label %79
    i32 130, label %79
    i32 133, label %79
  ]

79:                                               ; preds = %68, %68, %68, %68
  br label %95

80:                                               ; preds = %68
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32*, i8*, i32, i32, ...) @ENC_VLOG(i32* %81, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %92)
  %94 = load i32, i32* @ENODEV, align 4
  store i32 %94, i32* %16, align 4
  br label %120

95:                                               ; preds = %79
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @ses_get_elm_addlstatus_sas_type1(i32* %96, %struct.TYPE_11__* %97, i32* %98, i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %16, align 4
  br label %119

103:                                              ; preds = %24
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i32 (i32*, i8*, i32, i32, ...) @ENC_VLOG(i32* %104, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %115, i32 %116)
  %118 = load i32, i32* @ENODEV, align 4
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %103, %95, %60
  br label %120

120:                                              ; preds = %119, %80, %45, %22
  %121 = load i32, i32* %16, align 4
  ret i32 %121
}

declare dso_local i32 @ses_elm_sas_descr_type(%union.ses_elm_sas_hdr*) #1

declare dso_local i32 @ENC_VLOG(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @ses_get_elm_addlstatus_sas_type0(i32*, %struct.TYPE_11__*, i32*, i32, i32, i32) #1

declare dso_local i32 @ses_get_elm_addlstatus_sas_type1(i32*, %struct.TYPE_11__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
