; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_do_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@co = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ipfw_socket = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@IP_FW_GET = common dso_local global i32 0, align 4
@IP_DUMMYNET_GET = common dso_local global i32 0, align 4
@IP_FW_ADD = common dso_local global i32 0, align 4
@IP_FW3 = common dso_local global i32 0, align 4
@IP_FW_NAT_GET_CONFIG = common dso_local global i32 0, align 4
@IP_FW_NAT_GET_LOG = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_cmd(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

12:                                               ; preds = %3
  %13 = load i32, i32* @ipfw_socket, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* @AF_INET, align 4
  %17 = load i32, i32* @SOCK_RAW, align 4
  %18 = load i32, i32* @IPPROTO_RAW, align 4
  %19 = call i32 @socket(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* @ipfw_socket, align 4
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i32, i32* @ipfw_socket, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EX_UNAVAILABLE, align 4
  %25 = call i32 @err(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IP_FW_GET, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %53, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IP_DUMMYNET_GET, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %53, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @IP_FW_ADD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %53, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @IP_FW3, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @IP_FW_NAT_GET_CONFIG, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @IP_FW_NAT_GET_LOG, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49, %46, %42, %38, %34, %30, %26
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* @ipfw_socket, align 4
  %61 = load i32, i32* @IPPROTO_IP, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @getsockopt(i32 %60, i32 %61, i32 %62, i8* %63, i32* %65)
  store i32 %66, i32* %8, align 4
  br label %74

67:                                               ; preds = %49
  %68 = load i32, i32* @ipfw_socket, align 4
  %69 = load i32, i32* @IPPROTO_IP, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @setsockopt(i32 %68, i32 %69, i32 %70, i8* %71, i64 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %67, %59
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %11
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
