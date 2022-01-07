; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_flushentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_flushentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.bufarea = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@flushtries = common dso_local global i64 0, align 8
@sblock = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cgbufs = common dso_local global %struct.bufarea* null, align 8
@fswritefd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flushentry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bufarea*, align 8
  %3 = load i64, i64* @flushtries, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sblock, i32 0, i32 0), align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load %struct.bufarea*, %struct.bufarea** @cgbufs, align 8
  %8 = icmp eq %struct.bufarea* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %0
  store i32 0, i32* %1, align 4
  br label %33

10:                                               ; preds = %6
  %11 = load %struct.bufarea*, %struct.bufarea** @cgbufs, align 8
  %12 = load i64, i64* @flushtries, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* @flushtries, align 8
  %14 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %11, i64 %12
  store %struct.bufarea* %14, %struct.bufarea** %2, align 8
  %15 = load %struct.bufarea*, %struct.bufarea** %2, align 8
  %16 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %33

21:                                               ; preds = %10
  %22 = load i32, i32* @fswritefd, align 4
  %23 = load %struct.bufarea*, %struct.bufarea** %2, align 8
  %24 = call i32 @flush(i32 %22, %struct.bufarea* %23)
  %25 = load %struct.bufarea*, %struct.bufarea** %2, align 8
  %26 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @free(i32* %28)
  %30 = load %struct.bufarea*, %struct.bufarea** %2, align 8
  %31 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  store i32 1, i32* %1, align 4
  br label %33

33:                                               ; preds = %21, %20, %9
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @flush(i32, %struct.bufarea*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
