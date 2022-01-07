; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/kqueue/extr_t_vnode.c_init_kqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/kqueue/extr_t_vnode.c_init_kqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }

@kq = common dso_local global i64 0, align 8
@target = common dso_local global i64 0, align 8
@EVFILT_VNODE = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_DELETE = common dso_local global i32 0, align 4
@NOTE_WRITE = common dso_local global i32 0, align 4
@NOTE_EXTEND = common dso_local global i32 0, align 4
@NOTE_ATTRIB = common dso_local global i32 0, align 4
@NOTE_LINK = common dso_local global i32 0, align 4
@NOTE_RENAME = common dso_local global i32 0, align 4
@NOTE_REVOKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_kqueue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x %struct.kevent], align 4
  %3 = call i64 (...) @kqueue()
  store i64 %3, i64* @kq, align 8
  %4 = load i64, i64* @kq, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %31

7:                                                ; preds = %0
  %8 = getelementptr inbounds [1 x %struct.kevent], [1 x %struct.kevent]* %2, i64 0, i64 0
  %9 = load i64, i64* @target, align 8
  %10 = load i32, i32* @EVFILT_VNODE, align 4
  %11 = load i32, i32* @EV_ADD, align 4
  %12 = load i32, i32* @EV_ONESHOT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @NOTE_DELETE, align 4
  %15 = load i32, i32* @NOTE_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NOTE_EXTEND, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NOTE_ATTRIB, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @NOTE_LINK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @NOTE_RENAME, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @NOTE_REVOKE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @EV_SET(%struct.kevent* %8, i64 %9, i32 %10, i32 %13, i32 %26, i32 0, i32 0)
  %28 = load i64, i64* @kq, align 8
  %29 = getelementptr inbounds [1 x %struct.kevent], [1 x %struct.kevent]* %2, i64 0, i64 0
  %30 = call i32 @kevent(i64 %28, %struct.kevent* %29, i32 1, i32* null, i32 0, i32* null)
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %7, %6
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i64 @kqueue(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kevent(i64, %struct.kevent*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
