; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_gettimeofday.c___gettimeofday.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_gettimeofday.c___gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.timezone = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gettimeofday(%struct.timeval* %0, %struct.timezone* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timezone*, align 8
  %5 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timezone* %1, %struct.timezone** %4, align 8
  %6 = load %struct.timeval*, %struct.timeval** %3, align 8
  %7 = load %struct.timezone*, %struct.timezone** %4, align 8
  %8 = call i32 @__vdso_gettimeofday(%struct.timeval* %6, %struct.timezone* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ENOSYS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.timeval*, %struct.timeval** %3, align 8
  %14 = load %struct.timezone*, %struct.timezone** %4, align 8
  %15 = call i32 @__sys_gettimeofday(%struct.timeval* %13, %struct.timezone* %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @__vdso_gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare dso_local i32 @__sys_gettimeofday(%struct.timeval*, %struct.timezone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
