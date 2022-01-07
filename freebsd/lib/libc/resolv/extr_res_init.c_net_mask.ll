; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_init.c_net_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_init.c_net_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@IN_CLASSA_NET = common dso_local global i32 0, align 4
@IN_CLASSB_NET = common dso_local global i32 0, align 4
@IN_CLASSC_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @net_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ntohl(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @IN_CLASSA(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @IN_CLASSA_NET, align 4
  %14 = call i32 @htonl(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @IN_CLASSB(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @IN_CLASSB_NET, align 4
  %21 = call i32 @htonl(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @IN_CLASSC_NET, align 4
  %25 = call i32 @htonl(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %19, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @IN_CLASSA(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @IN_CLASSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
