; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_daemonized.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_daemonized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_TTY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"already daemonized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @daemonized() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @_PATH_TTY, align 4
  %4 = load i32, i32* @O_RDONLY, align 4
  %5 = load i32, i32* @O_NOCTTY, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @open(i32 %3, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @close(i32 %10)
  store i32 0, i32* %1, align 4
  br label %23

12:                                               ; preds = %0
  %13 = call i32 (...) @getppid()
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %23

16:                                               ; preds = %12
  %17 = call i64 @getsid(i32 0)
  %18 = call i64 (...) @getpid()
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %23

21:                                               ; preds = %16
  %22 = call i32 @debug3(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %20, %15, %9
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i64 @getsid(i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @debug3(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
