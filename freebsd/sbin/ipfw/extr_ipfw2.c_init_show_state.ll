; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_init_show_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_init_show_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.show_state = type { i64, i64, i64, i32*, %struct.ip_fw_rule*, i32* }
%struct.ip_fw_rule = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.show_state*, %struct.ip_fw_rule*)* @init_show_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_show_state(%struct.show_state* %0, %struct.ip_fw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.show_state*, align 8
  %5 = alloca %struct.ip_fw_rule*, align 8
  store %struct.show_state* %0, %struct.show_state** %4, align 8
  store %struct.ip_fw_rule* %1, %struct.ip_fw_rule** %5, align 8
  %6 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %5, align 8
  %7 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32* @calloc(i32 %8, i32 4)
  %10 = load %struct.show_state*, %struct.show_state** %4, align 8
  %11 = getelementptr inbounds %struct.show_state, %struct.show_state* %10, i32 0, i32 5
  store i32* %9, i32** %11, align 8
  %12 = load %struct.show_state*, %struct.show_state** %4, align 8
  %13 = getelementptr inbounds %struct.show_state, %struct.show_state* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %5, align 8
  %20 = load %struct.show_state*, %struct.show_state** %4, align 8
  %21 = getelementptr inbounds %struct.show_state, %struct.show_state* %20, i32 0, i32 4
  store %struct.ip_fw_rule* %19, %struct.ip_fw_rule** %21, align 8
  %22 = load %struct.show_state*, %struct.show_state** %4, align 8
  %23 = getelementptr inbounds %struct.show_state, %struct.show_state* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.show_state*, %struct.show_state** %4, align 8
  %25 = getelementptr inbounds %struct.show_state, %struct.show_state* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.show_state*, %struct.show_state** %4, align 8
  %27 = getelementptr inbounds %struct.show_state, %struct.show_state* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.show_state*, %struct.show_state** %4, align 8
  %29 = getelementptr inbounds %struct.show_state, %struct.show_state* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %18, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
