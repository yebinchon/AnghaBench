; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_setttywidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_setttywidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i64 }

@errno = common dso_local global i32 0, align 4
@ttyout = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@ttywidth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setttywidth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.winsize, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @errno, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @ttyout, align 4
  %7 = call i32 @fileno(i32 %6)
  %8 = load i32, i32* @TIOCGWINSZ, align 4
  %9 = call i32 @ioctl(i32 %7, i32 %8, %struct.winsize* %3)
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.winsize, %struct.winsize* %3, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @ttywidth, align 4
  br label %20

19:                                               ; preds = %11, %1
  store i32 80, i32* @ttywidth, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* @errno, align 4
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @fileno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
