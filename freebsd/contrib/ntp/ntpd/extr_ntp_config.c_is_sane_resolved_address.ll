; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_is_sane_resolved_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_is_sane_resolved_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"attempt to configure invalid address %s\00", align 1
@T_Server = common dso_local global i32 0, align 4
@T_Peer = common dso_local global i32 0, align 4
@T_Pool = common dso_local global i32 0, align 4
@T_Manycastclient = common dso_local global i32 0, align 4
@ipv6_works = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @is_sane_resolved_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sane_resolved_address(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @ISREFCLOCKADR(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @ISBADADR(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @stoa(i32* %15)
  %17 = call i32 @msyslog(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %3, align 4
  br label %61

18:                                               ; preds = %9, %2
  %19 = load i32, i32* @T_Server, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @T_Peer, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @T_Pool, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26, %22, %18
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @IS_MCAST(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @LOG_ERR, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @stoa(i32* %36)
  %38 = call i32 @msyslog(i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 0, i32* %3, align 4
  br label %61

39:                                               ; preds = %30, %26
  %40 = load i32, i32* @T_Manycastclient, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @IS_MCAST(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @LOG_ERR, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @stoa(i32* %49)
  %51 = call i32 @msyslog(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 0, i32* %3, align 4
  br label %61

52:                                               ; preds = %43, %39
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @IS_IPV6(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @ipv6_works, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %61

60:                                               ; preds = %56, %52
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %47, %34, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ISREFCLOCKADR(i32*) #1

declare dso_local i64 @ISBADADR(i32*) #1

declare dso_local i32 @msyslog(i32, i8*, i32) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local i64 @IS_MCAST(i32*) #1

declare dso_local i64 @IS_IPV6(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
