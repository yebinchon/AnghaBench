; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_generic.c___rpcgettp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_generic.c___rpcgettp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i32 }
%struct.__rpc_sockinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netconfig* @__rpcgettp(i32 %0) #0 {
  %2 = alloca %struct.netconfig*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.__rpc_sockinfo, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @__rpc_fd2sockinfo(i32 %6, %struct.__rpc_sockinfo* %5)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.netconfig* null, %struct.netconfig** %2, align 8
  br label %17

10:                                               ; preds = %1
  %11 = call i32 @__rpc_sockinfo2netid(%struct.__rpc_sockinfo* %5, i8** %4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store %struct.netconfig* null, %struct.netconfig** %2, align 8
  br label %17

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct.netconfig* @getnetconfigent(i8* %15)
  store %struct.netconfig* %16, %struct.netconfig** %2, align 8
  br label %17

17:                                               ; preds = %14, %13, %9
  %18 = load %struct.netconfig*, %struct.netconfig** %2, align 8
  ret %struct.netconfig* %18
}

declare dso_local i32 @__rpc_fd2sockinfo(i32, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @__rpc_sockinfo2netid(%struct.__rpc_sockinfo*, i8**) #1

declare dso_local %struct.netconfig* @getnetconfigent(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
