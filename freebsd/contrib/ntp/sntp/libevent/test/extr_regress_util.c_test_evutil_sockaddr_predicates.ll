; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_util.c_test_evutil_sockaddr_predicates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_util.c_test_evutil_sockaddr_predicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_pred_ent = type { i64, i64 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@sa_pred_entries = common dso_local global %struct.sa_pred_ent* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Couldn't parse %s!\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"evutil_sockaddr_loopback(%s) not as expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_evutil_sockaddr_predicates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_evutil_sockaddr_predicates(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sockaddr_storage, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sa_pred_ent*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %48, %1
  %9 = load %struct.sa_pred_ent*, %struct.sa_pred_ent** @sa_pred_entries, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.sa_pred_ent, %struct.sa_pred_ent* %9, i64 %11
  %13 = getelementptr inbounds %struct.sa_pred_ent, %struct.sa_pred_ent* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %8
  %17 = load %struct.sa_pred_ent*, %struct.sa_pred_ent** @sa_pred_entries, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sa_pred_ent, %struct.sa_pred_ent* %17, i64 %19
  store %struct.sa_pred_ent* %20, %struct.sa_pred_ent** %6, align 8
  store i32 4, i32* %7, align 4
  %21 = load %struct.sa_pred_ent*, %struct.sa_pred_ent** %6, align 8
  %22 = getelementptr inbounds %struct.sa_pred_ent, %struct.sa_pred_ent* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = bitcast %struct.sockaddr_storage* %3 to %struct.sockaddr*
  %25 = call i32 @evutil_parse_sockaddr_port(i64 %23, %struct.sockaddr* %24, i32* %7)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct.sa_pred_ent*, %struct.sa_pred_ent** %6, align 8
  %30 = getelementptr inbounds %struct.sa_pred_ent, %struct.sa_pred_ent* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @TT_FAIL(i8* %32)
  br label %48

34:                                               ; preds = %16
  %35 = load %struct.sa_pred_ent*, %struct.sa_pred_ent** %6, align 8
  %36 = getelementptr inbounds %struct.sa_pred_ent, %struct.sa_pred_ent* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = bitcast %struct.sockaddr_storage* %3 to %struct.sockaddr*
  %39 = call i64 @evutil_sockaddr_is_loopback_(%struct.sockaddr* %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.sa_pred_ent*, %struct.sa_pred_ent** %6, align 8
  %43 = getelementptr inbounds %struct.sa_pred_ent, %struct.sa_pred_ent* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @TT_FAIL(i8* %45)
  br label %47

47:                                               ; preds = %41, %34
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %8

51:                                               ; preds = %8
  ret void
}

declare dso_local i32 @evutil_parse_sockaddr_port(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @TT_FAIL(i8*) #1

declare dso_local i64 @evutil_sockaddr_is_loopback_(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
