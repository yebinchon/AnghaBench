; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_mqueue.c_send_msgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_mqueue.c_send_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MQ_PRIO_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"mq_send 1 failed: %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"mq_send 2 failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mq_send 3 failed: %d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"mq_send 4 failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"mq_send 5 failed: %d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"mq_send 6 failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @send_msgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_msgs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8], align 1
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 97, i8* %5, align 1
  %6 = load i32, i32* %2, align 4
  %7 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %8 = load i64, i64* @MQ_PRIO_BASE, align 8
  %9 = call i32 @mq_send(i32 %6, i8* %7, i32 2, i64 %8)
  %10 = icmp ne i32 %9, -1
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @ATF_REQUIRE_MSG(i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 98, i8* %14, align 1
  %15 = load i32, i32* %2, align 4
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %17 = load i64, i64* @MQ_PRIO_BASE, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @mq_send(i32 %15, i8* %16, i32 2, i64 %18)
  %20 = icmp ne i32 %19, -1
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @ATF_REQUIRE_MSG(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 99, i8* %24, align 1
  %25 = load i32, i32* %2, align 4
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %27 = load i64, i64* @MQ_PRIO_BASE, align 8
  %28 = call i32 @mq_send(i32 %25, i8* %26, i32 2, i64 %27)
  %29 = icmp ne i32 %28, -1
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @ATF_REQUIRE_MSG(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 100, i8* %33, align 1
  %34 = load i32, i32* %2, align 4
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %36 = load i64, i64* @MQ_PRIO_BASE, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @mq_send(i32 %34, i8* %35, i32 2, i64 %37)
  %39 = icmp ne i32 %38, -1
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @ATF_REQUIRE_MSG(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 101, i8* %43, align 1
  %44 = load i32, i32* %2, align 4
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %46 = call i32 @mq_send(i32 %44, i8* %45, i32 2, i64 0)
  %47 = icmp ne i32 %46, -1
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @ATF_REQUIRE_MSG(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 102, i8* %51, align 1
  %52 = load i32, i32* %2, align 4
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %54 = load i64, i64* @MQ_PRIO_BASE, align 8
  %55 = add nsw i64 %54, 1
  %56 = call i32 @mq_send(i32 %52, i8* %53, i32 2, i64 %55)
  %57 = icmp ne i32 %56, -1
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @ATF_REQUIRE_MSG(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  ret void
}

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i32 @mq_send(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
