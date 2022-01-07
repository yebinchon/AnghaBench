; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_restart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_restart = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_restart(%struct.uni_restart* %0, %struct.uni_restart* %1) #0 {
  %3 = alloca %struct.uni_restart*, align 8
  %4 = alloca %struct.uni_restart*, align 8
  store %struct.uni_restart* %0, %struct.uni_restart** %3, align 8
  store %struct.uni_restart* %1, %struct.uni_restart** %4, align 8
  %5 = load %struct.uni_restart*, %struct.uni_restart** %3, align 8
  %6 = getelementptr inbounds %struct.uni_restart, %struct.uni_restart* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @IE_ISGOOD(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.uni_restart*, %struct.uni_restart** %3, align 8
  %12 = getelementptr inbounds %struct.uni_restart, %struct.uni_restart* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.uni_restart*, %struct.uni_restart** %4, align 8
  %15 = getelementptr inbounds %struct.uni_restart, %struct.uni_restart* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.uni_restart*, %struct.uni_restart** %3, align 8
  %18 = getelementptr inbounds %struct.uni_restart, %struct.uni_restart* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IE_ISGOOD(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.uni_restart*, %struct.uni_restart** %3, align 8
  %24 = getelementptr inbounds %struct.uni_restart, %struct.uni_restart* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uni_restart*, %struct.uni_restart** %4, align 8
  %27 = getelementptr inbounds %struct.uni_restart, %struct.uni_restart* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.uni_restart*, %struct.uni_restart** %3, align 8
  %30 = getelementptr inbounds %struct.uni_restart, %struct.uni_restart* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IE_ISGOOD(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.uni_restart*, %struct.uni_restart** %3, align 8
  %36 = getelementptr inbounds %struct.uni_restart, %struct.uni_restart* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uni_restart*, %struct.uni_restart** %4, align 8
  %39 = getelementptr inbounds %struct.uni_restart, %struct.uni_restart* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %28
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
