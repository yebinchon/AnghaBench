; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_smbfind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_smbfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbfns = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smbfns* (i32, %struct.smbfns*)* @smbfind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smbfns* @smbfind(i32 %0, %struct.smbfns* %1) #0 {
  %3 = alloca %struct.smbfns*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smbfns*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.smbfns* %1, %struct.smbfns** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load %struct.smbfns*, %struct.smbfns** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.smbfns, %struct.smbfns* %8, i64 %10
  %12 = getelementptr inbounds %struct.smbfns, %struct.smbfns* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %7
  %16 = load %struct.smbfns*, %struct.smbfns** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.smbfns, %struct.smbfns* %16, i64 %18
  %20 = getelementptr inbounds %struct.smbfns, %struct.smbfns* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.smbfns*, %struct.smbfns** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.smbfns, %struct.smbfns* %25, i64 %27
  store %struct.smbfns* %28, %struct.smbfns** %3, align 8
  br label %36

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %7

33:                                               ; preds = %7
  %34 = load %struct.smbfns*, %struct.smbfns** %5, align 8
  %35 = getelementptr inbounds %struct.smbfns, %struct.smbfns* %34, i64 0
  store %struct.smbfns* %35, %struct.smbfns** %3, align 8
  br label %36

36:                                               ; preds = %33, %24
  %37 = load %struct.smbfns*, %struct.smbfns** %3, align 8
  ret %struct.smbfns* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
