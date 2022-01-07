; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_get_elm_devnames.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_get_elm_devnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i64, i64, i32 }
%struct.sbuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@ses_elmdevname_callback = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @ses_get_elm_devnames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_get_elm_devnames(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.sbuf, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @cam_periph_unlock(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %22 = call i32 @sbuf_new(%struct.sbuf* %6, i32* null, i32 %20, i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* @ses_elmdevname_callback, align 4
  %33 = call i32 @ses_paths_iter(%struct.TYPE_9__* %23, i32* %31, i32 %32, %struct.sbuf* %6)
  %34 = call i32 @sbuf_finish(%struct.sbuf* %6)
  %35 = call i64 @sbuf_len(%struct.sbuf* %6)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = call i32 @sbuf_data(%struct.sbuf* %6)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = call i32 @copyout(i32 %38, i32 %41, i64 %45)
  %47 = call i32 @sbuf_delete(%struct.sbuf* %6)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @cam_periph_lock(i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %15
  br label %59

57:                                               ; preds = %15
  %58 = load i32, i32* @ENODEV, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i32 [ 0, %56 ], [ %58, %57 ]
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @cam_periph_unlock(i32) #1

declare dso_local i32 @sbuf_new(%struct.sbuf*, i32*, i32, i32) #1

declare dso_local i32 @ses_paths_iter(%struct.TYPE_9__*, i32*, i32, %struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i64 @sbuf_len(%struct.sbuf*) #1

declare dso_local i32 @copyout(i32, i32, i64) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @cam_periph_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
