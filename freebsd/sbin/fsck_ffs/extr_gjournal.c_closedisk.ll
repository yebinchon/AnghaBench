; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_gjournal.c_closedisk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_gjournal.c_closedisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fs = common dso_local global %struct.TYPE_2__* null, align 8
@diskp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"sbwrite(%s)\00", align 1
@devnam = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ufs_disk_close(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @closedisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closedisk() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 1, i32* %2, align 4
  %3 = load i32*, i32** @diskp, align 8
  %4 = call i32 @sbwrite(i32* %3, i32 0)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @devnam, align 4
  %8 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32*, i32** @diskp, align 8
  %11 = call i32 @ufs_disk_close(i32* %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @devnam, align 4
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32*, i32** @diskp, align 8
  %18 = call i32 @free(i32* %17)
  store i32* null, i32** @diskp, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @fs, align 8
  ret void
}

declare dso_local i32 @sbwrite(i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @ufs_disk_close(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
