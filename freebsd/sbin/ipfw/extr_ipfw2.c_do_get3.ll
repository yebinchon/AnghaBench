; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_do_get3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_do_get3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@co = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ipfw_socket = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_FW3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_get3(i32 %0, %struct.TYPE_5__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

13:                                               ; preds = %3
  %14 = load i32, i32* @ipfw_socket, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @AF_INET, align 4
  %18 = load i32, i32* @SOCK_RAW, align 4
  %19 = load i32, i32* @IPPROTO_RAW, align 4
  %20 = call i32 @socket(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* @ipfw_socket, align 4
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @ipfw_socket, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EX_UNAVAILABLE, align 4
  %26 = call i32 @err(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* @ipfw_socket, align 4
  %34 = load i32, i32* @IPPROTO_IP, align 4
  %35 = load i32, i32* @IP_FW3, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = call i32 @getsockopt(i32 %33, i32 %34, i32 %35, %struct.TYPE_5__* %36, i64* %9)
  store i32 %37, i32* %8, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %27, %12
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, %struct.TYPE_5__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
