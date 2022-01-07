; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_apply_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_apply_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.in_addr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @nat64lsn_apply_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64lsn_apply_mask(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca %struct.in_addr*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AF_INET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.in_addr*
  store %struct.in_addr* %16, %struct.in_addr** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 32, %17
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  %21 = xor i32 %20, -1
  %22 = call i32 @htonl(i32 %21)
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %42

30:                                               ; preds = %3
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @AF_INET6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = bitcast i8* %35 to %struct.in6_addr*
  store %struct.in6_addr* %36, %struct.in6_addr** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @n2mask(%struct.in6_addr* %7, i32 %37)
  %39 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %40 = call i32 @APPLY_MASK(%struct.in6_addr* %39, %struct.in6_addr* %7)
  br label %41

41:                                               ; preds = %34, %30
  br label %42

42:                                               ; preds = %41, %14
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @n2mask(%struct.in6_addr*, i32) #1

declare dso_local i32 @APPLY_MASK(%struct.in6_addr*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
