; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_io_unsetbclient.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_io_unsetbclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, %struct.TYPE_4__* }

@ep_list = common dso_local global %struct.TYPE_4__* null, align 8
@INT_WILDCARD = common dso_local global i32 0, align 4
@INT_BCASTOPEN = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"stop listening for broadcasts to %s on interface #%d %s\00", align 1
@ISC_FALSE = common dso_local global i32 0, align 4
@broadcast_client_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_unsetbclient() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ep_list, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %1, align 8
  br label %3

3:                                                ; preds = %54, %0
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %6, label %58

6:                                                ; preds = %3
  %7 = load i32, i32* @INT_WILDCARD, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %54

14:                                               ; preds = %6
  %15 = load i32, i32* @INT_BCASTOPEN, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %54

22:                                               ; preds = %14
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INVALID_SOCKET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load i32, i32* @LOG_INFO, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = call i32 @stoa(i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @msyslog(i32 %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @close_and_delete_fd_from_list(i64 %42)
  %44 = load i64, i64* @INVALID_SOCKET, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %28, %22
  %48 = load i32, i32* @INT_BCASTOPEN, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %47, %21, %13
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %1, align 8
  br label %3

58:                                               ; preds = %3
  %59 = load i32, i32* @ISC_FALSE, align 4
  store i32 %59, i32* @broadcast_client_enabled, align 4
  ret void
}

declare dso_local i32 @msyslog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local i32 @close_and_delete_fd_from_list(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
