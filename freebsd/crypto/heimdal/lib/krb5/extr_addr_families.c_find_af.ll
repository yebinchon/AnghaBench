; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_addr_families.c_find_af.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_addr_families.c_find_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_operations = type { i32 }

@at = common dso_local global %struct.addr_operations* null, align 8
@num_addrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addr_operations* (i32)* @find_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addr_operations* @find_af(i32 %0) #0 {
  %2 = alloca %struct.addr_operations*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.addr_operations*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.addr_operations*, %struct.addr_operations** @at, align 8
  store %struct.addr_operations* %5, %struct.addr_operations** %4, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load %struct.addr_operations*, %struct.addr_operations** %4, align 8
  %8 = load %struct.addr_operations*, %struct.addr_operations** @at, align 8
  %9 = load i32, i32* @num_addrs, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.addr_operations, %struct.addr_operations* %8, i64 %10
  %12 = icmp ult %struct.addr_operations* %7, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %6
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.addr_operations*, %struct.addr_operations** %4, align 8
  %16 = getelementptr inbounds %struct.addr_operations, %struct.addr_operations* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.addr_operations*, %struct.addr_operations** %4, align 8
  store %struct.addr_operations* %20, %struct.addr_operations** %2, align 8
  br label %26

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.addr_operations*, %struct.addr_operations** %4, align 8
  %24 = getelementptr inbounds %struct.addr_operations, %struct.addr_operations* %23, i32 1
  store %struct.addr_operations* %24, %struct.addr_operations** %4, align 8
  br label %6

25:                                               ; preds = %6
  store %struct.addr_operations* null, %struct.addr_operations** %2, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load %struct.addr_operations*, %struct.addr_operations** %2, align 8
  ret %struct.addr_operations* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
