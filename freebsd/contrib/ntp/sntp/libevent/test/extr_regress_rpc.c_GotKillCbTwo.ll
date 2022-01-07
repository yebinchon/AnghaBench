; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_rpc.c_GotKillCbTwo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_rpc.c_GotKillCbTwo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_status = type { i64 }
%struct.msg = type { i32 }
%struct.kill = type { i32 }

@EVRPC_STATUS_ERR_NONE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"get weapon\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"get action\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dagger\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"wave around like an idiot\00", align 1
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evrpc_status*, %struct.msg*, %struct.kill*, i8*)* @GotKillCbTwo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GotKillCbTwo(%struct.evrpc_status* %0, %struct.msg* %1, %struct.kill* %2, i8* %3) #0 {
  %5 = alloca %struct.evrpc_status*, align 8
  %6 = alloca %struct.msg*, align 8
  %7 = alloca %struct.kill*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.evrpc_status* %0, %struct.evrpc_status** %5, align 8
  store %struct.msg* %1, %struct.msg** %6, align 8
  store %struct.kill* %2, %struct.kill** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.evrpc_status*, %struct.evrpc_status** %5, align 8
  %12 = getelementptr inbounds %struct.evrpc_status, %struct.evrpc_status* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EVRPC_STATUS_ERR_NONE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %46

17:                                               ; preds = %4
  %18 = load %struct.kill*, %struct.kill** %7, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @EVTAG_GET(%struct.kill* %18, i8* %19, i8** %9)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %46

25:                                               ; preds = %17
  %26 = load %struct.kill*, %struct.kill** %7, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @EVTAG_GET(%struct.kill* %26, i8* %27, i8** %10)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %46

33:                                               ; preds = %25
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %46

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @test_ok, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @test_ok, align 4
  br label %46

46:                                               ; preds = %43, %42, %37, %30, %22, %16
  %47 = load i32, i32* @test_ok, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @event_loopexit(i32* null)
  br label %51

51:                                               ; preds = %49, %46
  ret void
}

declare dso_local i32 @EVTAG_GET(%struct.kill*, i8*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @event_loopexit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
