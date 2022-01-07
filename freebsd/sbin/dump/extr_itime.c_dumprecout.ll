; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_itime.c_dumprecout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_itime.c_dumprecout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumpdates = type { i32, i32, i32 }

@DUMPFMTLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Name '%s' exceeds DUMPFMTLEN (%d) bytes\0A\00", align 1
@DUMPOUTFMT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@dumpdates = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.dumpdates*)* @dumprecout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumprecout(i32* %0, %struct.dumpdates* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dumpdates*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.dumpdates* %1, %struct.dumpdates** %4, align 8
  %5 = load %struct.dumpdates*, %struct.dumpdates** %4, align 8
  %6 = getelementptr inbounds %struct.dumpdates, %struct.dumpdates* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @strlen(i32 %7)
  %9 = load i64, i64* @DUMPFMTLEN, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.dumpdates*, %struct.dumpdates** %4, align 8
  %13 = getelementptr inbounds %struct.dumpdates, %struct.dumpdates* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @DUMPFMTLEN, align 8
  %16 = call i32 @quit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i8*, i8** @DUMPOUTFMT, align 8
  %20 = load i64, i64* @DUMPFMTLEN, align 8
  %21 = load %struct.dumpdates*, %struct.dumpdates** %4, align 8
  %22 = getelementptr inbounds %struct.dumpdates, %struct.dumpdates* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dumpdates*, %struct.dumpdates** %4, align 8
  %25 = getelementptr inbounds %struct.dumpdates, %struct.dumpdates* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dumpdates*, %struct.dumpdates** %4, align 8
  %28 = getelementptr inbounds %struct.dumpdates, %struct.dumpdates* %27, i32 0, i32 0
  %29 = call i32 @ctime(i32* %28)
  %30 = call i64 @fprintf(i32* %18, i8* %19, i64 %20, i32 %23, i32 %26, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load i32, i32* @dumpdates, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i64 @strerror(i32 %34)
  %36 = call i32 @quit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33, i64 %35)
  br label %37

37:                                               ; preds = %32, %17
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @quit(i8*, i32, i64) #1

declare dso_local i64 @fprintf(i32*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @ctime(i32*) #1

declare dso_local i64 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
