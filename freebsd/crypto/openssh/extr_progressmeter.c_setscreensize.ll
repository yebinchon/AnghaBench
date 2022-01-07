; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_progressmeter.c_setscreensize.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_progressmeter.c_setscreensize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i64 }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@MAX_WINSIZE = common dso_local global i64 0, align 8
@win_size = common dso_local global i64 0, align 8
@DEFAULT_WINSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setscreensize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setscreensize() #0 {
  %1 = alloca %struct.winsize, align 8
  %2 = load i32, i32* @STDOUT_FILENO, align 4
  %3 = load i32, i32* @TIOCGWINSZ, align 4
  %4 = call i32 @ioctl(i32 %2, i32 %3, %struct.winsize* %1)
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %21

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.winsize, %struct.winsize* %1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.winsize, %struct.winsize* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_WINSIZE, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i64, i64* @MAX_WINSIZE, align 8
  store i64 %16, i64* @win_size, align 8
  br label %20

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.winsize, %struct.winsize* %1, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* @win_size, align 8
  br label %20

20:                                               ; preds = %17, %15
  br label %23

21:                                               ; preds = %6, %0
  %22 = load i64, i64* @DEFAULT_WINSIZE, align 8
  store i64 %22, i64* @win_size, align 8
  br label %23

23:                                               ; preds = %21, %20
  %24 = load i64, i64* @win_size, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @win_size, align 8
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
