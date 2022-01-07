; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_stop_others.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_stop_others.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"stop threads\00", align 1
@worker_cmd_quit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"join %d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"join success %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.daemon*)* @daemon_stop_others to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @daemon_stop_others(%struct.daemon* %0) #0 {
  %2 = alloca %struct.daemon*, align 8
  %3 = alloca i32, align 4
  store %struct.daemon* %0, %struct.daemon** %2, align 8
  %4 = load %struct.daemon*, %struct.daemon** %2, align 8
  %5 = call i32 @log_assert(%struct.daemon* %4)
  %6 = load i32, i32* @VERB_ALGO, align 4
  %7 = call i32 (i32, i8*, ...) @verbose(i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.daemon*, %struct.daemon** %2, align 8
  %11 = getelementptr inbounds %struct.daemon, %struct.daemon* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.daemon*, %struct.daemon** %2, align 8
  %16 = getelementptr inbounds %struct.daemon, %struct.daemon* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* @worker_cmd_quit, align 4
  %23 = call i32 @worker_send_cmd(%struct.TYPE_2__* %21, i32 %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %8

27:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.daemon*, %struct.daemon** %2, align 8
  %31 = getelementptr inbounds %struct.daemon, %struct.daemon* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load i32, i32* @VERB_ALGO, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i32, i8*, ...) @verbose(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.daemon*, %struct.daemon** %2, align 8
  %39 = getelementptr inbounds %struct.daemon, %struct.daemon* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ub_thread_join(i32 %46)
  %48 = load i32, i32* @VERB_ALGO, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i32, i8*, ...) @verbose(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %28

54:                                               ; preds = %28
  ret void
}

declare dso_local i32 @log_assert(%struct.daemon*) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @worker_send_cmd(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @ub_thread_join(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
