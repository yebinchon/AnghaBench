; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.ssh = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@do_cleanup.called = internal global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"do_cleanup\00", align 1
@is_child = common dso_local global i64 0, align 8
@auth_info_file = common dso_local global i32* null, align 8
@use_privsep = common dso_local global i32 0, align 4
@session_pty_cleanup2 = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_cleanup(%struct.ssh* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = call i32 @debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = load i64, i64* @is_child, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %50

9:                                                ; preds = %2
  %10 = load i32, i32* @do_cleanup.called, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %50

13:                                               ; preds = %9
  store i32 1, i32* @do_cleanup.called, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %50

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %50

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @auth_sock_cleanup_proc(i32 %26)
  %28 = load i32*, i32** @auth_info_file, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @temporarily_use_uid(i32 %33)
  %35 = load i32*, i32** @auth_info_file, align 8
  %36 = call i32 @unlink(i32* %35)
  %37 = call i32 (...) @restore_uid()
  %38 = load i32*, i32** @auth_info_file, align 8
  %39 = call i32 @free(i32* %38)
  store i32* null, i32** @auth_info_file, align 8
  br label %40

40:                                               ; preds = %30, %23
  %41 = load i32, i32* @use_privsep, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call i64 (...) @mm_is_monitor()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %40
  %47 = load %struct.ssh*, %struct.ssh** %3, align 8
  %48 = load i32, i32* @session_pty_cleanup2, align 4
  %49 = call i32 @session_destroy_all(%struct.ssh* %47, i32 %48)
  br label %50

50:                                               ; preds = %8, %12, %16, %22, %46, %43
  ret void
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @auth_sock_cleanup_proc(i32) #1

declare dso_local i32 @temporarily_use_uid(i32) #1

declare dso_local i32 @unlink(i32*) #1

declare dso_local i32 @restore_uid(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @mm_is_monitor(...) #1

declare dso_local i32 @session_destroy_all(%struct.ssh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
