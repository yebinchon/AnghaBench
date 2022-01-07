; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_cc_conn_sig_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_cc_conn_sig_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccconn = type { i32 }
%struct.uni_msg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_conn_sig_msg(%struct.ccconn* %0, i32 %1, %struct.uni_msg* %2) #0 {
  %4 = alloca %struct.ccconn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uni_msg*, align 8
  store %struct.ccconn* %0, %struct.ccconn** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.uni_msg* %2, %struct.uni_msg** %6, align 8
  %7 = load %struct.ccconn*, %struct.ccconn** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %10 = icmp ne %struct.uni_msg* %9, null
  %11 = zext i1 %10 to i32
  %12 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %13 = call i32 @sig_conn(%struct.ccconn* %7, i32 %8, i32 %11, %struct.uni_msg* %12)
  ret i32 %13
}

declare dso_local i32 @sig_conn(%struct.ccconn*, i32, i32, %struct.uni_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
