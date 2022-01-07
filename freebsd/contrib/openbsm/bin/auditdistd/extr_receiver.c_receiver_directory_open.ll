; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_receiver_directory_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_receiver_directory_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.stat = type { i32 }

@adhost = common dso_local global %struct.TYPE_2__* null, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EX_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to stat directory \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to open directory \22%s\22\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @receiver_directory_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receiver_directory_open() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = call i32 @stat(i32 %4, %struct.stat* %1)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @ENOENT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 (...) @receiver_directory_create()
  br label %19

13:                                               ; preds = %7
  %14 = load i32, i32* @EX_CONFIG, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pjdlog_exit(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %11
  br label %20

20:                                               ; preds = %19, %0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @opendir(i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load i32, i32* @EX_CONFIG, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pjdlog_exit(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %20
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @dirfd(i32* %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  ret void
}

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @receiver_directory_create(...) #1

declare dso_local i32 @pjdlog_exit(i32, i8*, i32) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @dirfd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
