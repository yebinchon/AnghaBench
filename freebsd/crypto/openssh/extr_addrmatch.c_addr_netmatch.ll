; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_netmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_netmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xaddr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xaddr*, %struct.xaddr*, i32)* @addr_netmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_netmatch(%struct.xaddr* %0, %struct.xaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xaddr*, align 8
  %6 = alloca %struct.xaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xaddr, align 8
  %9 = alloca %struct.xaddr, align 8
  store %struct.xaddr* %0, %struct.xaddr** %5, align 8
  store %struct.xaddr* %1, %struct.xaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %11 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.xaddr*, %struct.xaddr** %6, align 8
  %14 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %34

18:                                               ; preds = %3
  %19 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %20 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @addr_netmask(i64 %21, i32 %22, %struct.xaddr* %8)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %34

26:                                               ; preds = %18
  %27 = load %struct.xaddr*, %struct.xaddr** %5, align 8
  %28 = call i32 @addr_and(%struct.xaddr* %9, %struct.xaddr* %27, %struct.xaddr* %8)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load %struct.xaddr*, %struct.xaddr** %6, align 8
  %33 = call i32 @addr_cmp(%struct.xaddr* %9, %struct.xaddr* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %30, %25, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @addr_netmask(i64, i32, %struct.xaddr*) #1

declare dso_local i32 @addr_and(%struct.xaddr*, %struct.xaddr*, %struct.xaddr*) #1

declare dso_local i32 @addr_cmp(%struct.xaddr*, %struct.xaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
