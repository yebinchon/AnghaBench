; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rbootd.c_DoTimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rbootd.c_DoTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@RmpConns = common dso_local global %struct.TYPE_9__* null, align 8
@RMP_TIMEOUT = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: connection timed out (%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DoTimeout() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @time(i32* null)
  store i64 %3, i64* %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** @RmpConns, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %1, align 8
  br label %5

5:                                                ; preds = %29, %0
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RMP_TIMEOUT, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* %2, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %8
  %18 = load i32, i32* @LOG_WARNING, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %20 = call i32 @EnetStr(%struct.TYPE_9__* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @syslog(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %27 = call i32 @RemoveConn(%struct.TYPE_9__* %26)
  br label %28

28:                                               ; preds = %17, %8
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %1, align 8
  br label %5

33:                                               ; preds = %5
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @syslog(i32, i8*, i32, i32) #1

declare dso_local i32 @EnetStr(%struct.TYPE_9__*) #1

declare dso_local i32 @RemoveConn(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
