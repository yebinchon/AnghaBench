; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_release_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_release_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.flock = type { i32, i32, i32, i32, i32, i32, i32 }

@F_UNLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@kvp_pools = common dso_local global %struct.TYPE_2__* null, align 8
@F_SETLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to release the lock pool: %d\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @kvp_release_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_release_lock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flock, align 4
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 1
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 3
  %8 = load i32, i32* @F_UNLCK, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 4
  %10 = load i32, i32* @SEEK_SET, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 5
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 6
  store i32 0, i32* %12, align 4
  %13 = call i32 (...) @getpid()
  %14 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_pools, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @F_SETLK, align 4
  %22 = call i32 @fcntl(i32 %20, i32 %21, %struct.flock* %3)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @KVP_LOG(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 @exit(i32 %29) #3
  unreachable

31:                                               ; preds = %1
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @KVP_LOG(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
