; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_pin_accepted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_pin_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atpic = type { i32, i64*, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atpic*, i32)* @vatpic_pin_accepted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vatpic_pin_accepted(%struct.atpic* %0, i32 %1) #0 {
  %3 = alloca %struct.atpic*, align 8
  %4 = alloca i32, align 4
  store %struct.atpic* %0, %struct.atpic** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.atpic*, %struct.atpic** %3, align 8
  %6 = getelementptr inbounds %struct.atpic, %struct.atpic* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.atpic*, %struct.atpic** %3, align 8
  %8 = getelementptr inbounds %struct.atpic, %struct.atpic* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.atpic*, %struct.atpic** %3, align 8
  %20 = getelementptr inbounds %struct.atpic, %struct.atpic* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.atpic*, %struct.atpic** %3, align 8
  %25 = getelementptr inbounds %struct.atpic, %struct.atpic* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.atpic*, %struct.atpic** %3, align 8
  %30 = getelementptr inbounds %struct.atpic, %struct.atpic* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.atpic*, %struct.atpic** %3, align 8
  %36 = getelementptr inbounds %struct.atpic, %struct.atpic* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %28
  br label %45

38:                                               ; preds = %23
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.atpic*, %struct.atpic** %3, align 8
  %42 = getelementptr inbounds %struct.atpic, %struct.atpic* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %38, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
