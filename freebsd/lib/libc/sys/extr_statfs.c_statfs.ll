; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_statfs.c_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_statfs.c_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }
%struct.freebsd11_statfs = type { i32 }

@INO64_FIRST = common dso_local global i64 0, align 8
@SYS_freebsd11_statfs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @statfs(i8* %0, %struct.statfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca %struct.freebsd11_statfs, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.statfs* %1, %struct.statfs** %5, align 8
  %8 = call i64 (...) @__getosreldate()
  %9 = load i64, i64* @INO64_FIRST, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.statfs*, %struct.statfs** %5, align 8
  %14 = call i32 @__sys_statfs(i8* %12, %struct.statfs* %13)
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* @SYS_freebsd11_statfs, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @syscall(i32 %16, i8* %17, %struct.freebsd11_statfs* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.statfs*, %struct.statfs** %5, align 8
  %23 = call i32 @__statfs11_to_statfs(%struct.freebsd11_statfs* %6, %struct.statfs* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @__getosreldate(...) #1

declare dso_local i32 @__sys_statfs(i8*, %struct.statfs*) #1

declare dso_local i32 @syscall(i32, i8*, %struct.freebsd11_statfs*) #1

declare dso_local i32 @__statfs11_to_statfs(%struct.freebsd11_statfs*, %struct.statfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
