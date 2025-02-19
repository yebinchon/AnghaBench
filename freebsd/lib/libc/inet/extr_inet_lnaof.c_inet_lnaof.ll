; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_lnaof.c_inet_lnaof.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_lnaof.c_inet_lnaof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@IN_CLASSA_HOST = common dso_local global i32 0, align 4
@IN_CLASSB_HOST = common dso_local global i32 0, align 4
@IN_CLASSC_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_lnaof(i32 %0) #0 {
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
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IN_CLASSA_HOST, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @IN_CLASSB(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @IN_CLASSB_HOST, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IN_CLASSC_HOST, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %20, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @IN_CLASSA(i32) #1

declare dso_local i64 @IN_CLASSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
