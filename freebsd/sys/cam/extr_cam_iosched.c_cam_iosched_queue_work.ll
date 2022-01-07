; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_queue_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_iosched_softc = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bio = type { i64 }

@BIO_FLUSH = common dso_local global i64 0, align 8
@ticks = common dso_local global i8* null, align 8
@BIO_DELETE = common dso_local global i64 0, align 8
@BIO_READ = common dso_local global i64 0, align 8
@BIO_WRITE = common dso_local global i64 0, align 8
@do_dynamic_iosched = common dso_local global i64 0, align 8
@iosched_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cam_iosched_queue_work(%struct.cam_iosched_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.cam_iosched_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.cam_iosched_softc* %0, %struct.cam_iosched_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.bio*, %struct.bio** %4, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BIO_FLUSH, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %12 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i8*, i8** @ticks, align 8
  %17 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %18 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 0, %19
  %21 = getelementptr i8, i8* %16, i64 %20
  %22 = getelementptr i8, i8* %21, i64 -1
  %23 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %24 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %23, i32 0, i32 7
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %15, %10, %2
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BIO_DELETE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %33 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %32, i32 0, i32 8
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = call i32 @bioq_insert_tail(i32* %33, %struct.bio* %34)
  %36 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %37 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i8*, i8** @ticks, align 8
  %42 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %43 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %46 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %64

49:                                               ; preds = %25
  %50 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %51 = call i64 @cam_iosched_sort_queue(%struct.cam_iosched_softc* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %55 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %54, i32 0, i32 4
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = call i32 @bioq_disksort(i32* %55, %struct.bio* %56)
  br label %63

58:                                               ; preds = %49
  %59 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %60 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %59, i32 0, i32 4
  %61 = load %struct.bio*, %struct.bio** %4, align 8
  %62 = call i32 @bioq_insert_tail(i32* %60, %struct.bio* %61)
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %44
  ret void
}

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i64 @cam_iosched_sort_queue(%struct.cam_iosched_softc*) #1

declare dso_local i32 @bioq_disksort(i32*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
