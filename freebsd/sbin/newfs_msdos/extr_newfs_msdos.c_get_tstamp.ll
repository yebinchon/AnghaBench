; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs_msdos/extr_newfs_msdos.c_get_tstamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs_msdos/extr_newfs_msdos.c_get_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't parse timestamp '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tstamp(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @stat(i8* %7, %struct.stat* %4)
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  store i64 0, i64* @errno, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strtoll(i8* %14, i8** %5, i32 0)
  store i64 %15, i64* %6, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @errno, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %19, %13
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @errx(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
