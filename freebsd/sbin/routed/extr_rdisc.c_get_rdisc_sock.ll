; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_get_rdisc_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_get_rdisc_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rdisc_sock = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"rdisc_sock = socket()\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"rdisc_sock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_rdisc_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rdisc_sock() #0 {
  %1 = load i64, i64* @rdisc_sock, align 8
  %2 = icmp slt i64 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load i32, i32* @AF_INET, align 4
  %5 = load i32, i32* @SOCK_RAW, align 4
  %6 = load i32, i32* @IPPROTO_ICMP, align 4
  %7 = call i64 @socket(i32 %4, i32 %5, i32 %6)
  store i64 %7, i64* @rdisc_sock, align 8
  %8 = load i64, i64* @rdisc_sock, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 @BADERR(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i64, i64* @rdisc_sock, align 8
  %14 = call i32 @fix_sock(i64 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 (...) @fix_select()
  br label %16

16:                                               ; preds = %12, %0
  ret void
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @BADERR(i32, i8*) #1

declare dso_local i32 @fix_sock(i64, i8*) #1

declare dso_local i32 @fix_select(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
