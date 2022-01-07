; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufarea = type { i32, i32, i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@fswritefd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"WRITING IN READ_ONLY MODE.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"WRITING %sZERO'ED BLOCK %lld TO DISK\0A\00", align 1
@dev_bsize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"PARTIALLY \00", align 1
@sblk = common dso_local global %struct.bufarea zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"BUFFER %p DOES NOT MATCH SBLK %p\0A\00", align 1
@fsmodified = common dso_local global i32 0, align 4
@disk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush(i32 %0, %struct.bufarea* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufarea*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.bufarea* %1, %struct.bufarea** %4, align 8
  %5 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %6 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %82

10:                                               ; preds = %2
  %11 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %12 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @fswritefd, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %82

17:                                               ; preds = %10
  %18 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %19 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %24 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %27 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @dev_bsize, align 4
  %30 = sdiv i32 %28, %29
  %31 = icmp eq i32 %25, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %34 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %35 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %33, i64 %36)
  br label %38

38:                                               ; preds = %22, %17
  %39 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %40 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %42 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %69 [
    i32 128, label %44
    i32 129, label %60
  ]

44:                                               ; preds = %38
  %45 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %46 = icmp ne %struct.bufarea* %45, @sblk
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %49 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), %struct.bufarea* %48, %struct.bufarea* @sblk)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %53 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @sbput(i32 %51, i32 %55, i32 0)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 1, i32* @fsmodified, align 4
  br label %59

59:                                               ; preds = %58, %50
  br label %82

60:                                               ; preds = %38
  %61 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %62 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cgput(i32* @disk, i32 %64)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 1, i32* @fsmodified, align 4
  br label %68

68:                                               ; preds = %67, %60
  br label %82

69:                                               ; preds = %38
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %72 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %76 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.bufarea*, %struct.bufarea** %4, align 8
  %79 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @blwrite(i32 %70, i32 %74, i64 %77, i32 %80)
  br label %82

82:                                               ; preds = %9, %15, %69, %68, %59
  ret void
}

declare dso_local i32 @pfatal(i8*, ...) #1

declare dso_local i32 @sbput(i32, i32, i32) #1

declare dso_local i32 @cgput(i32*, i32) #1

declare dso_local i32 @blwrite(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
