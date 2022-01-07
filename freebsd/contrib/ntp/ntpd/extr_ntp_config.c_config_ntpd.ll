; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_ntpd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_ntpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET6 = common dso_local global i32 0, align 4
@INITIAL_DNS_RETRY = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@gai_test_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @config_ntpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_ntpd(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @config_tos_clock(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 (...) @clamp_systime()
  br label %13

13:                                               ; preds = %11, %7
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @config_nic_rules(i32* %15, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @config_monitor(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @config_auth(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @config_tos(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @config_access(i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @config_tinker(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @config_rlimit(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @config_system_opts(i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @config_logconfig(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @config_phone(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @config_mdnstries(i32* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @config_setvar(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @config_ttl(i32* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @config_vars(i32* %42)
  %44 = call i32 (...) @io_open_sockets()
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @config_trap(i32* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @config_other_modes(i32* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @config_peers(i32* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @config_unpeers(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @config_fudge(i32* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @config_reset_counters(i32* %55)
  ret void
}

declare dso_local i64 @config_tos_clock(i32*) #1

declare dso_local i32 @clamp_systime(...) #1

declare dso_local i32 @config_nic_rules(i32*, i32) #1

declare dso_local i32 @config_monitor(i32*) #1

declare dso_local i32 @config_auth(i32*) #1

declare dso_local i32 @config_tos(i32*) #1

declare dso_local i32 @config_access(i32*) #1

declare dso_local i32 @config_tinker(i32*) #1

declare dso_local i32 @config_rlimit(i32*) #1

declare dso_local i32 @config_system_opts(i32*) #1

declare dso_local i32 @config_logconfig(i32*) #1

declare dso_local i32 @config_phone(i32*) #1

declare dso_local i32 @config_mdnstries(i32*) #1

declare dso_local i32 @config_setvar(i32*) #1

declare dso_local i32 @config_ttl(i32*) #1

declare dso_local i32 @config_vars(i32*) #1

declare dso_local i32 @io_open_sockets(...) #1

declare dso_local i32 @config_trap(i32*) #1

declare dso_local i32 @config_other_modes(i32*) #1

declare dso_local i32 @config_peers(i32*) #1

declare dso_local i32 @config_unpeers(i32*) #1

declare dso_local i32 @config_fudge(i32*) #1

declare dso_local i32 @config_reset_counters(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
