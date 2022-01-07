; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_zygote.c_zygote_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_zygote.c_zygote_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@zygote_sock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zygote_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @PF_UNIX, align 4
  %6 = load i32, i32* @SOCK_STREAM, align 4
  %7 = load i32, i32* @SOCK_NONBLOCK, align 4
  %8 = or i32 %6, %7
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %10 = call i32 @socketpair(i32 %5, i32 %8, i32 0, i32* %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %39

13:                                               ; preds = %0
  %14 = call i32 (...) @fork()
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %33 [
    i32 -1, label %16
    i32 0, label %25
  ]

16:                                               ; preds = %13
  %17 = load i32, i32* @errno, align 4
  store i32 %17, i32* %2, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @close(i32 %19)
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @close(i32 %22)
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* @errno, align 4
  store i32 -1, i32* %1, align 4
  br label %39

25:                                               ; preds = %13
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @close(i32 %27)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @zygote_main(i32 %30)
  %32 = call i32 (...) @abort() #3
  unreachable

33:                                               ; preds = %13
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* @zygote_sock, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @close(i32 %37)
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %33, %16, %12
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @zygote_main(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
