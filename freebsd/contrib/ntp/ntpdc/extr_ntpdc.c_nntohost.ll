; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_nntohost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_nntohost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@showhostnames = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nntohost(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @showhostnames, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @SOCK_UNSPEC(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @stoa(i32* %11)
  store i8* %12, i8** %2, align 8
  br label %23

13:                                               ; preds = %6
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @ISREFCLOCKADR(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @refnumtoa(i32* %18)
  store i8* %19, i8** %2, align 8
  br label %23

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @socktohost(i32* %21)
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %20, %17, %10
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local i64 @SOCK_UNSPEC(i32*) #1

declare dso_local i8* @stoa(i32*) #1

declare dso_local i64 @ISREFCLOCKADR(i32*) #1

declare dso_local i8* @refnumtoa(i32*) #1

declare dso_local i8* @socktohost(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
