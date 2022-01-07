; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_add_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_add_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfioc_table = type { i32, i32, i32, i32, %struct.pfr_table* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCRADDTABLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_add_tables(%struct.pfr_table* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfr_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfioc_table, align 8
  store %struct.pfr_table* %0, %struct.pfr_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.pfr_table*, %struct.pfr_table** %6, align 8
  %18 = icmp eq %struct.pfr_table* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %43

21:                                               ; preds = %16, %13
  %22 = call i32 @bzero(%struct.pfioc_table* %10, i32 24)
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %10, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.pfr_table*, %struct.pfr_table** %6, align 8
  %26 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %10, i32 0, i32 4
  store %struct.pfr_table* %25, %struct.pfr_table** %26, align 8
  %27 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %10, i32 0, i32 1
  store i32 4, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %10, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @dev, align 4
  %31 = load i32, i32* @DIOCRADDTABLES, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, %struct.pfioc_table* %10)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %43

35:                                               ; preds = %21
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %10, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %35
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %34, %19
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @bzero(%struct.pfioc_table*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
