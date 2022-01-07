; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }
%struct.ses_iterator = type { i32, i32 }
%struct.ses_control_page_hdr = type { i32 }

@EIO = common dso_local global i32 0, align 4
@SES_SET_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Set EncStat %x\0A\00", align 1
@SES_ELEM_INDEX_GLOBAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Set Type 0x%x Obj 0x%x (offset %d) with %x %x %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32, %struct.TYPE_8__*)* @ses_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_encode(%struct.TYPE_9__* %0, i32* %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.ses_iterator, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ses_control_page_hdr*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = call i32 @ses_iter_init(%struct.TYPE_9__* %14, i32* %16, %struct.ses_iterator* %10)
  %18 = load i32*, i32** %7, align 8
  %19 = bitcast i32* %18 to %struct.ses_control_page_hdr*
  store %struct.ses_control_page_hdr* %19, %struct.ses_control_page_hdr** %13, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %43

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @EIO, align 4
  store i32 %28, i32* %5, align 4
  br label %105

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SES_SET_STATUS_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.ses_control_page_hdr*, %struct.ses_control_page_hdr** %13, align 8
  %37 = getelementptr inbounds %struct.ses_control_page_hdr, %struct.ses_control_page_hdr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = load %struct.ses_control_page_hdr*, %struct.ses_control_page_hdr** %13, align 8
  %40 = getelementptr inbounds %struct.ses_control_page_hdr, %struct.ses_control_page_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @ENC_DLOG(%struct.TYPE_9__* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %5, align 4
  br label %105

43:                                               ; preds = %4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SES_ELEM_INDEX_GLOBAL, align 4
  %48 = call i32* @ses_iter_seek_to(%struct.ses_iterator* %10, i32 %46, i32 %47)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %5, align 4
  br label %105

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = add i64 4, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 4
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ugt i64 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* @EIO, align 4
  store i32 %67, i32* %5, align 4
  br label %105

68:                                               ; preds = %53
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = call i32 @memcpy(i32* %72, %struct.TYPE_10__* %74, i32 4)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %10, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.ses_iterator, %struct.ses_iterator* %10, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @ENC_DLOG(%struct.TYPE_9__* %76, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %80, i32 %81, i32 %85, i32 %91, i32 %97, i32 %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %68, %66, %51, %29, %27
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @ses_iter_init(%struct.TYPE_9__*, i32*, %struct.ses_iterator*) #1

declare dso_local i32 @ENC_DLOG(%struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32* @ses_iter_seek_to(%struct.ses_iterator*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
