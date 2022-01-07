; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_globs.c_fsckinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_globs.c_fsckinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readcnt = common dso_local global i32* null, align 8
@BT_NUMBUFTYPES = common dso_local global i32 0, align 4
@totalreadcnt = common dso_local global i32* null, align 8
@readtime = common dso_local global i32* null, align 8
@totalreadtime = common dso_local global i32* null, align 8
@startprog = common dso_local global i32 0, align 4
@sblk = common dso_local global i32 0, align 4
@pdirbp = common dso_local global i32* null, align 8
@pbp = common dso_local global i32* null, align 8
@cursnapshot = common dso_local global i64 0, align 8
@inplast = common dso_local global i64 0, align 8
@dirhash = common dso_local global i64 0, align 8
@numdirs = common dso_local global i64 0, align 8
@listmax = common dso_local global i64 0, align 8
@countdirs = common dso_local global i64 0, align 8
@adjrefcnt = common dso_local global i32* null, align 8
@MIBSIZE = common dso_local global i32 0, align 4
@adjblkcnt = common dso_local global i32* null, align 8
@setsize = common dso_local global i32* null, align 8
@adjndir = common dso_local global i32* null, align 8
@adjnbfree = common dso_local global i32* null, align 8
@adjnifree = common dso_local global i32* null, align 8
@adjnffree = common dso_local global i32* null, align 8
@adjnumclusters = common dso_local global i32* null, align 8
@freefiles = common dso_local global i32* null, align 8
@freedirs = common dso_local global i32* null, align 8
@freeblks = common dso_local global i32* null, align 8
@cmd = common dso_local global i32 0, align 4
@snapname = common dso_local global i32* null, align 8
@BUFSIZ = common dso_local global i32 0, align 4
@cdevname = common dso_local global i32* null, align 8
@dev_bsize = common dso_local global i64 0, align 8
@secsize = common dso_local global i64 0, align 8
@real_dev_bsize = common dso_local global i64 0, align 8
@bkgrdsumadj = common dso_local global i64 0, align 8
@usedsoftdep = common dso_local global i64 0, align 8
@rerun = common dso_local global i64 0, align 8
@returntosingle = common dso_local global i64 0, align 8
@resolved = common dso_local global i64 0, align 8
@havesb = common dso_local global i64 0, align 8
@fsmodified = common dso_local global i64 0, align 8
@fsreadfd = common dso_local global i64 0, align 8
@fswritefd = common dso_local global i64 0, align 8
@maxfsblock = common dso_local global i64 0, align 8
@blockmap = common dso_local global i32* null, align 8
@maxino = common dso_local global i64 0, align 8
@lfdir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"lost+found\00", align 1
@lfname = common dso_local global i8* null, align 8
@lfmode = common dso_local global i32 0, align 4
@n_blks = common dso_local global i64 0, align 8
@n_files = common dso_local global i64 0, align 8
@got_siginfo = common dso_local global i64 0, align 8
@got_sigalarm = common dso_local global i64 0, align 8
@ufs1_zino = common dso_local global i32 0, align 4
@ufs2_zino = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsckinit() #0 {
  %1 = load i32*, i32** @readcnt, align 8
  %2 = load i32, i32* @BT_NUMBUFTYPES, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 8, %3
  %5 = trunc i64 %4 to i32
  %6 = call i32 @bzero(i32* %1, i32 %5)
  %7 = load i32*, i32** @totalreadcnt, align 8
  %8 = load i32, i32* @BT_NUMBUFTYPES, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 8, %9
  %11 = trunc i64 %10 to i32
  %12 = call i32 @bzero(i32* %7, i32 %11)
  %13 = load i32*, i32** @readtime, align 8
  %14 = load i32, i32* @BT_NUMBUFTYPES, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @bzero(i32* %13, i32 %17)
  %19 = load i32*, i32** @totalreadtime, align 8
  %20 = load i32, i32* @BT_NUMBUFTYPES, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @bzero(i32* %19, i32 %23)
  %25 = call i32 @bzero(i32* @startprog, i32 4)
  %26 = call i32 @bzero(i32* @sblk, i32 4)
  store i32* null, i32** @pdirbp, align 8
  store i32* null, i32** @pbp, align 8
  store i64 0, i64* @cursnapshot, align 8
  store i64 0, i64* @inplast, align 8
  store i64 0, i64* @dirhash, align 8
  store i64 0, i64* @numdirs, align 8
  store i64 0, i64* @listmax, align 8
  store i64 0, i64* @countdirs, align 8
  %27 = load i32*, i32** @adjrefcnt, align 8
  %28 = load i32, i32* @MIBSIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @bzero(i32* %27, i32 %31)
  %33 = load i32*, i32** @adjblkcnt, align 8
  %34 = load i32, i32* @MIBSIZE, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @bzero(i32* %33, i32 %37)
  %39 = load i32*, i32** @setsize, align 8
  %40 = load i32, i32* @MIBSIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @bzero(i32* %39, i32 %43)
  %45 = load i32*, i32** @adjndir, align 8
  %46 = load i32, i32* @MIBSIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @bzero(i32* %45, i32 %49)
  %51 = load i32*, i32** @adjnbfree, align 8
  %52 = load i32, i32* @MIBSIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @bzero(i32* %51, i32 %55)
  %57 = load i32*, i32** @adjnifree, align 8
  %58 = load i32, i32* @MIBSIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @bzero(i32* %57, i32 %61)
  %63 = load i32*, i32** @adjnffree, align 8
  %64 = load i32, i32* @MIBSIZE, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @bzero(i32* %63, i32 %67)
  %69 = load i32*, i32** @adjnumclusters, align 8
  %70 = load i32, i32* @MIBSIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @bzero(i32* %69, i32 %73)
  %75 = load i32*, i32** @freefiles, align 8
  %76 = load i32, i32* @MIBSIZE, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @bzero(i32* %75, i32 %79)
  %81 = load i32*, i32** @freedirs, align 8
  %82 = load i32, i32* @MIBSIZE, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 4, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @bzero(i32* %81, i32 %85)
  %87 = load i32*, i32** @freeblks, align 8
  %88 = load i32, i32* @MIBSIZE, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @bzero(i32* %87, i32 %91)
  %93 = call i32 @bzero(i32* @cmd, i32 4)
  %94 = load i32*, i32** @snapname, align 8
  %95 = load i32, i32* @BUFSIZ, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 1, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @bzero(i32* %94, i32 %98)
  store i32* null, i32** @cdevname, align 8
  store i64 0, i64* @dev_bsize, align 8
  store i64 0, i64* @secsize, align 8
  store i64 0, i64* @real_dev_bsize, align 8
  store i64 0, i64* @bkgrdsumadj, align 8
  store i64 0, i64* @usedsoftdep, align 8
  store i64 0, i64* @rerun, align 8
  store i64 0, i64* @returntosingle, align 8
  store i64 0, i64* @resolved, align 8
  store i64 0, i64* @havesb, align 8
  store i64 0, i64* @fsmodified, align 8
  store i64 0, i64* @fsreadfd, align 8
  store i64 0, i64* @fswritefd, align 8
  store i64 0, i64* @maxfsblock, align 8
  store i32* null, i32** @blockmap, align 8
  store i64 0, i64* @maxino, align 8
  store i64 0, i64* @lfdir, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** @lfname, align 8
  store i32 448, i32* @lfmode, align 4
  store i64 0, i64* @n_blks, align 8
  store i64 0, i64* @n_files, align 8
  store i64 0, i64* @got_siginfo, align 8
  store i64 0, i64* @got_sigalarm, align 8
  %100 = call i32 @bzero(i32* @ufs1_zino, i32 4)
  %101 = call i32 @bzero(i32* @ufs2_zino, i32 4)
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
