; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_check_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_check_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i64, i64 }

@sigexit_received = common dso_local global i32 0, align 4
@cfg = common dso_local global %struct.TYPE_2__* null, align 8
@EX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unexpected signal (%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_signals() #0 {
  %1 = alloca %struct.timespec, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = call i64 @sigemptyset(i32* %2)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @PJDLOG_VERIFY(i32 %8)
  %10 = call i64 @sigaddset(i32* %2, i32 130)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @PJDLOG_VERIFY(i32 %12)
  %14 = call i64 @sigaddset(i32* %2, i32 129)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @PJDLOG_VERIFY(i32 %16)
  %18 = call i64 @sigaddset(i32* %2, i32 128)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @PJDLOG_VERIFY(i32 %20)
  %22 = call i64 @sigaddset(i32* %2, i32 131)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @PJDLOG_VERIFY(i32 %24)
  br label %26

26:                                               ; preds = %46, %0
  %27 = call i32 @sigtimedwait(i32* %2, i32* null, %struct.timespec* %1)
  store i32 %27, i32* %3, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  switch i32 %30, label %43 [
    i32 129, label %31
    i32 128, label %31
    i32 131, label %39
    i32 130, label %41
  ]

31:                                               ; preds = %29, %29
  store i32 1, i32* @sigexit_received, align 4
  %32 = call i32 (...) @terminate_workers()
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @proto_close(i32 %35)
  %37 = load i32, i32* @EX_OK, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %29
  %40 = call i32 (...) @child_exit()
  br label %46

41:                                               ; preds = %29
  %42 = call i32 (...) @hastd_reload()
  br label %46

43:                                               ; preds = %29
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %41, %39
  br label %26

47:                                               ; preds = %26
  ret void
}

declare dso_local i32 @PJDLOG_VERIFY(i32) #1

declare dso_local i64 @sigemptyset(i32*) #1

declare dso_local i64 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigtimedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @terminate_workers(...) #1

declare dso_local i32 @proto_close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @child_exit(...) #1

declare dso_local i32 @hastd_reload(...) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
