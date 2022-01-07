; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_utx_lastlogin_upgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_utx_lastlogin_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@_PATH_UTX_LASTLOGIN = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @utx_lastlogin_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @utx_lastlogin_upgrade() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @_PATH_UTX_LASTLOGIN, align 4
  %4 = load i32, i32* @O_RDWR, align 4
  %5 = load i32, i32* @O_CLOEXEC, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @_open(i32 %3, i32 %6, i32 420)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %27

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @_fstat(i32 %12, %struct.stat* %1)
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = urem i64 %18, 4
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @ftruncate(i32 %22, i32 0)
  br label %24

24:                                               ; preds = %21, %15, %11
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @_close(i32 %25)
  br label %27

27:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @_open(i32, i32, i32) #1

declare dso_local i32 @_fstat(i32, %struct.stat*) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
