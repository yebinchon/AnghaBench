; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_gjournal.c_opendisk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_gjournal.c_opendisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@diskp = common dso_local global %struct.TYPE_4__* null, align 8
@disk = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@devnam = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ufs_disk_fillout(%s) failed: %s\00", align 1
@fs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @opendisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opendisk() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @diskp, align 8
  %2 = icmp ne %struct.TYPE_4__* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %18

4:                                                ; preds = %0
  store %struct.TYPE_4__* @disk, %struct.TYPE_4__** @diskp, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @diskp, align 8
  %6 = load i32, i32* @devnam, align 4
  %7 = call i32 @ufs_disk_fillout(%struct.TYPE_4__* %5, i32 %6)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load i32, i32* @devnam, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @diskp, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  br label %15

15:                                               ; preds = %9, %4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @diskp, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32* %17, i32** @fs, align 8
  br label %18

18:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @ufs_disk_fillout(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
