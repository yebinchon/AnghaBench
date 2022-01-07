; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libbegemot/extr_rpoll.c_poll_blocksig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libbegemot/extr_rpoll.c_poll_blocksig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGNAL = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@bset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"sigprocmask(SIG_BLOCK): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @poll_blocksig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_blocksig() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @sigemptyset(i32* %1)
  %3 = load i32, i32* @SIGNAL, align 4
  %4 = call i32 @sigaddset(i32* %1, i32 %3)
  %5 = load i32, i32* @SIG_BLOCK, align 4
  %6 = call i64 @sigprocmask(i32 %5, i32* %1, i32* @bset)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @errno, align 4
  %10 = call i32 @strerror(i32 %9)
  %11 = call i32 @_panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %8, %0
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @_panic(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
