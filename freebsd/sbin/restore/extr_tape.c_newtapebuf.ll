; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_newtapebuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_newtapebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@newtapebuf.tapebufsize = internal global i32 -1, align 4
@ntrec = common dso_local global i64 0, align 8
@tapebuf = common dso_local global i32* null, align 8
@TP_BSIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot allocate space for tape buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @newtapebuf(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* @ntrec, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i32, i32* @newtapebuf.tapebufsize, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp sle i64 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %39

9:                                                ; preds = %1
  %10 = load i32*, i32** @tapebuf, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32*, i32** @tapebuf, align 8
  %14 = load i32, i32* @TP_BSIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 0, %15
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = call i32 @free(i32* %17)
  br label %19

19:                                               ; preds = %12, %9
  %20 = load i64, i64* %2, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i32, i32* @TP_BSIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %21, %23
  %25 = call i32* @malloc(i64 %24)
  store i32* %25, i32** @tapebuf, align 8
  %26 = load i32*, i32** @tapebuf, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @done(i32 1)
  br label %32

32:                                               ; preds = %28, %19
  %33 = load i32, i32* @TP_BSIZE, align 4
  %34 = load i32*, i32** @tapebuf, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** @tapebuf, align 8
  %37 = load i64, i64* %2, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* @newtapebuf.tapebufsize, align 4
  br label %39

39:                                               ; preds = %32, %8
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
