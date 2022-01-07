; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_to_bsd_flock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_to_bsd_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_flock = type { i32, i64, i64, i64, i32 }
%struct.flock = type { i32, i64, i64, i8*, i8*, i32 }

@F_RDLCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l_flock*, %struct.flock*)* @linux_to_bsd_flock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_to_bsd_flock(%struct.l_flock* %0, %struct.flock* %1) #0 {
  %3 = alloca %struct.l_flock*, align 8
  %4 = alloca %struct.flock*, align 8
  store %struct.l_flock* %0, %struct.l_flock** %3, align 8
  store %struct.flock* %1, %struct.flock** %4, align 8
  %5 = load %struct.l_flock*, %struct.l_flock** %3, align 8
  %6 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %20 [
    i32 130, label %8
    i32 128, label %12
    i32 129, label %16
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @F_RDLCK, align 4
  %10 = load %struct.flock*, %struct.flock** %4, align 8
  %11 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  br label %23

12:                                               ; preds = %2
  %13 = load i32, i32* @F_WRLCK, align 4
  %14 = load %struct.flock*, %struct.flock** %4, align 8
  %15 = getelementptr inbounds %struct.flock, %struct.flock* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @F_UNLCK, align 4
  %18 = load %struct.flock*, %struct.flock** %4, align 8
  %19 = getelementptr inbounds %struct.flock, %struct.flock* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.flock*, %struct.flock** %4, align 8
  %22 = getelementptr inbounds %struct.flock, %struct.flock* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %16, %12, %8
  %24 = load %struct.l_flock*, %struct.l_flock** %3, align 8
  %25 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.flock*, %struct.flock** %4, align 8
  %28 = getelementptr inbounds %struct.flock, %struct.flock* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.l_flock*, %struct.l_flock** %3, align 8
  %30 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.flock*, %struct.flock** %4, align 8
  %34 = getelementptr inbounds %struct.flock, %struct.flock* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.l_flock*, %struct.l_flock** %3, align 8
  %36 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.flock*, %struct.flock** %4, align 8
  %40 = getelementptr inbounds %struct.flock, %struct.flock* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.l_flock*, %struct.l_flock** %3, align 8
  %42 = getelementptr inbounds %struct.l_flock, %struct.l_flock* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.flock*, %struct.flock** %4, align 8
  %45 = getelementptr inbounds %struct.flock, %struct.flock* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.flock*, %struct.flock** %4, align 8
  %47 = getelementptr inbounds %struct.flock, %struct.flock* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
