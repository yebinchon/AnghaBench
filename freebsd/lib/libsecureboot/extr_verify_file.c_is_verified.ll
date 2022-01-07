; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_verify_file.c_is_verified.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_verify_file.c_is_verified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.verify_status = type { i64, i64, i32, %struct.verify_status* }
%struct.stat = type { i64, i64 }

@verified_files = common dso_local global %struct.verify_status* null, align 8
@VE_NOT_CHECKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_verified(%struct.stat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat*, align 8
  %4 = alloca %struct.verify_status*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  %5 = load %struct.verify_status*, %struct.verify_status** @verified_files, align 8
  store %struct.verify_status* %5, %struct.verify_status** %4, align 8
  br label %6

6:                                                ; preds = %30, %1
  %7 = load %struct.verify_status*, %struct.verify_status** %4, align 8
  %8 = icmp ne %struct.verify_status* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = load %struct.stat*, %struct.stat** %3, align 8
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.verify_status*, %struct.verify_status** %4, align 8
  %14 = getelementptr inbounds %struct.verify_status, %struct.verify_status* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = load %struct.stat*, %struct.stat** %3, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.verify_status*, %struct.verify_status** %4, align 8
  %22 = getelementptr inbounds %struct.verify_status, %struct.verify_status* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.verify_status*, %struct.verify_status** %4, align 8
  %27 = getelementptr inbounds %struct.verify_status, %struct.verify_status* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %2, align 4
  br label %36

29:                                               ; preds = %17, %9
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.verify_status*, %struct.verify_status** %4, align 8
  %32 = getelementptr inbounds %struct.verify_status, %struct.verify_status* %31, i32 0, i32 3
  %33 = load %struct.verify_status*, %struct.verify_status** %32, align 8
  store %struct.verify_status* %33, %struct.verify_status** %4, align 8
  br label %6

34:                                               ; preds = %6
  %35 = load i32, i32* @VE_NOT_CHECKED, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
