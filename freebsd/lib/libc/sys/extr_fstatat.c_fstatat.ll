; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_fstatat.c_fstatat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_fstatat.c_fstatat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.freebsd11_stat = type { i32 }

@INO64_FIRST = common dso_local global i64 0, align 8
@SYS_freebsd11_fstatat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fstatat(i32 %0, i8* %1, %struct.stat* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.freebsd11_stat, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i64 (...) @__getosreldate()
  %13 = load i64, i64* @INO64_FIRST, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.stat*, %struct.stat** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @__sys_fstatat(i32 %16, i8* %17, %struct.stat* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %34

21:                                               ; preds = %4
  %22 = load i32, i32* @SYS_freebsd11_fstatat, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @syscall(i32 %22, i32 %23, i8* %24, %struct.freebsd11_stat* %10, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.stat*, %struct.stat** %8, align 8
  %31 = call i32 @__stat11_to_stat(%struct.freebsd11_stat* %10, %struct.stat* %30)
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %15
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i64 @__getosreldate(...) #1

declare dso_local i32 @__sys_fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i32 @syscall(i32, i32, i8*, %struct.freebsd11_stat*, i32) #1

declare dso_local i32 @__stat11_to_stat(%struct.freebsd11_stat*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
