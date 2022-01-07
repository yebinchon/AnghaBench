; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_findtapeblksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_findtapeblksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_spcl = type { i64 }

@ntrec = common dso_local global i64 0, align 8
@tapebuf = common dso_local global i32* null, align 8
@TP_BSIZE = common dso_local global i64 0, align 8
@blkcnt = common dso_local global i64 0, align 8
@mt = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"tape read error: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Tape block size (%ld) %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"is not a multiple of dump block size\00", align 1
@numtrec = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Tape block size is %ld\0A\00", align 1
@host = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @findtapeblksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findtapeblksize() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @ntrec, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = load i32*, i32** @tapebuf, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @TP_BSIZE, align 8
  %10 = mul nsw i64 %8, %9
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = bitcast i32* %11 to %struct.s_spcl*
  %13 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %6
  %15 = load i64, i64* %1, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %1, align 8
  br label %2

17:                                               ; preds = %2
  store i64 0, i64* @blkcnt, align 8
  %18 = load i32, i32* @mt, align 4
  %19 = load i32*, i32** @tapebuf, align 8
  %20 = load i64, i64* @ntrec, align 8
  %21 = load i64, i64* @TP_BSIZE, align 8
  %22 = mul nsw i64 %20, %21
  %23 = call i64 @read(i32 %18, i32* %19, i64 %22)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = call i8* @strerror(i32 %28)
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = call i32 @done(i32 1)
  br label %32

32:                                               ; preds = %26, %17
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @TP_BSIZE, align 8
  %35 = srem i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @stderr, align 4
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @TP_BSIZE, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = call i32 @done(i32 1)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @TP_BSIZE, align 8
  %46 = sdiv i64 %44, %45
  store i64 %46, i64* @ntrec, align 8
  %47 = load i64, i64* @ntrec, align 8
  store i64 %47, i64* @numtrec, align 8
  %48 = load i32, i32* @stdout, align 4
  %49 = load i64, i64* @ntrec, align 8
  %50 = call i32 @vprintf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %49)
  ret void
}

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @done(i32) #1

declare dso_local i32 @vprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
