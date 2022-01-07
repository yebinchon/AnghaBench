; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_initsuj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_initsuj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUJ_HASHSIZE = common dso_local global i32 0, align 4
@cghash = common dso_local global i32* null, align 8
@dbhash = common dso_local global i32* null, align 8
@lastcg = common dso_local global i32* null, align 8
@lastblk = common dso_local global i32* null, align 8
@allsegs = common dso_local global i32 0, align 4
@oldseq = common dso_local global i64 0, align 8
@fs = common dso_local global i32* null, align 8
@sujino = common dso_local global i64 0, align 8
@freefrags = common dso_local global i64 0, align 8
@freeblocks = common dso_local global i64 0, align 8
@freeinos = common dso_local global i64 0, align 8
@freedir = common dso_local global i64 0, align 8
@jbytes = common dso_local global i64 0, align 8
@jrecs = common dso_local global i64 0, align 8
@suj_jblocks = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initsuj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initsuj() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %17, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @SUJ_HASHSIZE, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = load i32*, i32** @cghash, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = call i32 @LIST_INIT(i32* %10)
  %12 = load i32*, i32** @dbhash, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @LIST_INIT(i32* %15)
  br label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %2

20:                                               ; preds = %2
  store i32* null, i32** @lastcg, align 8
  store i32* null, i32** @lastblk, align 8
  %21 = call i32 @TAILQ_INIT(i32* @allsegs)
  store i64 0, i64* @oldseq, align 8
  store i32* null, i32** @fs, align 8
  store i64 0, i64* @sujino, align 8
  store i64 0, i64* @freefrags, align 8
  store i64 0, i64* @freeblocks, align 8
  store i64 0, i64* @freeinos, align 8
  store i64 0, i64* @freedir, align 8
  store i64 0, i64* @jbytes, align 8
  store i64 0, i64* @jrecs, align 8
  store i32* null, i32** @suj_jblocks, align 8
  ret void
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
