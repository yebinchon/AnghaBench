; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_krl.c_serial_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_krl.c_serial_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revoked_serial = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.revoked_serial*, %struct.revoked_serial*)* @serial_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_cmp(%struct.revoked_serial* %0, %struct.revoked_serial* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.revoked_serial*, align 8
  %5 = alloca %struct.revoked_serial*, align 8
  store %struct.revoked_serial* %0, %struct.revoked_serial** %4, align 8
  store %struct.revoked_serial* %1, %struct.revoked_serial** %5, align 8
  %6 = load %struct.revoked_serial*, %struct.revoked_serial** %4, align 8
  %7 = getelementptr inbounds %struct.revoked_serial, %struct.revoked_serial* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.revoked_serial*, %struct.revoked_serial** %5, align 8
  %10 = getelementptr inbounds %struct.revoked_serial, %struct.revoked_serial* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.revoked_serial*, %struct.revoked_serial** %4, align 8
  %15 = getelementptr inbounds %struct.revoked_serial, %struct.revoked_serial* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.revoked_serial*, %struct.revoked_serial** %5, align 8
  %18 = getelementptr inbounds %struct.revoked_serial, %struct.revoked_serial* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %32

22:                                               ; preds = %13, %2
  %23 = load %struct.revoked_serial*, %struct.revoked_serial** %4, align 8
  %24 = getelementptr inbounds %struct.revoked_serial, %struct.revoked_serial* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.revoked_serial*, %struct.revoked_serial** %5, align 8
  %27 = getelementptr inbounds %struct.revoked_serial, %struct.revoked_serial* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 -1, i32 1
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %22, %21
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
