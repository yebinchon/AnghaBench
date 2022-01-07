; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_bsd_to_linux_flock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_bsd_to_linux_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i32, i64, i64, i64, i32 }
%struct.l_flock = type { i64, i8*, i8*, i32, i32 }

@LINUX_F_RDLCK = common dso_local global i32 0, align 4
@LINUX_F_WRLCK = common dso_local global i32 0, align 4
@LINUX_F_UNLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flock*, %struct.l_flock*)* @bsd_to_linux_flock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsd_to_linux_flock(%struct.flock* %0, %struct.l_flock* %1) #0 {
  %3 = alloca %struct.flock*, align 8
  %4 = alloca %struct.l_flock*, align 8
  store %struct.flock* %0, %struct.flock** %3, align 8
  store %struct.l_flock* %1, %struct.l_flock** %4, align 8
  %5 = load %struct.flock*, %struct.flock** %3, align 8
  %6 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %20 [
    i32 130, label %8
    i32 128, label %12
    i32 129, label %16
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @LINUX_F_RDLCK, align 4
  %10 = load %struct.l_flock*, %struct.l_flock** %4, align 8
  %11 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @LINUX_F_WRLCK, align 4
  %14 = load %struct.l_flock*, %struct.l_flock** %4, align 8
  %15 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @LINUX_F_UNLCK, align 4
  %18 = load %struct.l_flock*, %struct.l_flock** %4, align 8
  %19 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %2, %16, %12, %8
  %21 = load %struct.flock*, %struct.flock** %3, align 8
  %22 = getelementptr inbounds %struct.flock, %struct.flock* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.l_flock*, %struct.l_flock** %4, align 8
  %25 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.flock*, %struct.flock** %3, align 8
  %27 = getelementptr inbounds %struct.flock, %struct.flock* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.l_flock*, %struct.l_flock** %4, align 8
  %31 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.flock*, %struct.flock** %3, align 8
  %33 = getelementptr inbounds %struct.flock, %struct.flock* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.l_flock*, %struct.l_flock** %4, align 8
  %37 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.flock*, %struct.flock** %3, align 8
  %39 = getelementptr inbounds %struct.flock, %struct.flock* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.l_flock*, %struct.l_flock** %4, align 8
  %42 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
