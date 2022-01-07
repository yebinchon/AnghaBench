; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_fsutilinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_fsutilinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@totalreads = common dso_local global i64 0, align 8
@totaldiskreads = common dso_local global i64 0, align 8
@diskreads = common dso_local global i64 0, align 8
@startpass = common dso_local global i32 0, align 4
@finishpass = common dso_local global i32 0, align 4
@slowio_starttime = common dso_local global i32 0, align 4
@slowio_delay_usec = common dso_local global i32 0, align 4
@slowio_pollcnt = common dso_local global i64 0, align 8
@cgblk = common dso_local global i32 0, align 4
@bufhead = common dso_local global i32 0, align 4
@numbufs = common dso_local global i64 0, align 8
@cgbufs = common dso_local global i32* null, align 8
@flushtries = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsutilinit() #0 {
  store i64 0, i64* @totalreads, align 8
  store i64 0, i64* @totaldiskreads, align 8
  store i64 0, i64* @diskreads, align 8
  %1 = call i32 @bzero(i32* @startpass, i32 4)
  %2 = call i32 @bzero(i32* @finishpass, i32 4)
  %3 = call i32 @bzero(i32* @slowio_starttime, i32 4)
  store i32 10000, i32* @slowio_delay_usec, align 4
  store i64 0, i64* @slowio_pollcnt, align 8
  %4 = call i32 @bzero(i32* @cgblk, i32 4)
  %5 = call i32 @TAILQ_INIT(i32* @bufhead)
  store i64 0, i64* @numbufs, align 8
  store i32* null, i32** @cgbufs, align 8
  store i64 0, i64* @flushtries, align 8
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
