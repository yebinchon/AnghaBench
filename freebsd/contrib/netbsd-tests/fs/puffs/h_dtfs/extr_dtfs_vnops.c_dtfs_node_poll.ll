; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.dtfs_mount = type { i32 }
%struct.dtfs_poll = type { i32 }
%struct.itimerval = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ITIMER_REAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@dp_entries = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_node_poll(%struct.puffs_usermount* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.puffs_usermount*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dtfs_mount*, align 8
  %9 = alloca %struct.dtfs_poll, align 4
  %10 = alloca %struct.itimerval, align 4
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.puffs_usermount*, %struct.puffs_usermount** %5, align 8
  %12 = call %struct.dtfs_mount* @puffs_getspecific(%struct.puffs_usermount* %11)
  store %struct.dtfs_mount* %12, %struct.dtfs_mount** %8, align 8
  %13 = call i32 @memset(%struct.itimerval* %10, i32 0, i32 4)
  %14 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %10, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 4, i32* %15, align 4
  %16 = load i32, i32* @ITIMER_REAL, align 4
  %17 = call i32 @setitimer(i32 %16, %struct.itimerval* %10, i32* null)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load %struct.puffs_usermount*, %struct.puffs_usermount** %5, align 8
  %23 = call i32 @puffs_cc_getcc(%struct.puffs_usermount* %22)
  %24 = getelementptr inbounds %struct.dtfs_poll, %struct.dtfs_poll* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.dtfs_mount*, %struct.dtfs_mount** %8, align 8
  %26 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %25, i32 0, i32 0
  %27 = load i32, i32* @dp_entries, align 4
  %28 = call i32 @LIST_INSERT_HEAD(i32* %26, %struct.dtfs_poll* %9, i32 %27)
  %29 = getelementptr inbounds %struct.dtfs_poll, %struct.dtfs_poll* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @puffs_cc_yield(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @POLLIN, align 4
  %35 = load i32, i32* @POLLOUT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @POLLRDNORM, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @POLLWRNORM, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %33, %40
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %21, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.dtfs_mount* @puffs_getspecific(%struct.puffs_usermount*) #1

declare dso_local i32 @memset(%struct.itimerval*, i32, i32) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @puffs_cc_getcc(%struct.puffs_usermount*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.dtfs_poll*, i32) #1

declare dso_local i32 @puffs_cc_yield(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
