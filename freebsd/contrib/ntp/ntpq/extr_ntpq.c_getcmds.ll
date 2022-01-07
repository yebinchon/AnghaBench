; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_getcmds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_getcmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interactive = common dso_local global i64 0, align 8
@prompt = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @getcmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getcmds() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @interactive, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32*, i32** @prompt, align 8
  br label %8

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32* [ %6, %5 ], [ null, %7 ]
  %10 = call i32 @ntp_readline_init(i32* %9)
  br label %11

11:                                               ; preds = %16, %8
  %12 = call i8* @ntp_readline(i32* %2)
  store i8* %12, i8** %1, align 8
  %13 = load i8*, i8** %1, align 8
  %14 = icmp eq i8* null, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %21

16:                                               ; preds = %11
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 @docmd(i8* %17)
  %19 = load i8*, i8** %1, align 8
  %20 = call i32 @free(i8* %19)
  br label %11

21:                                               ; preds = %15
  %22 = call i32 (...) @ntp_readline_uninit()
  ret void
}

declare dso_local i32 @ntp_readline_init(i32*) #1

declare dso_local i8* @ntp_readline(i32*) #1

declare dso_local i32 @docmd(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ntp_readline_uninit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
