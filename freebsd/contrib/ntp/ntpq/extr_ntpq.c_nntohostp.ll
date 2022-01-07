; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_nntohostp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_nntohostp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@showhostnames = common dso_local global i32 0, align 4
@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nntohostp(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @showhostnames, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @SOCK_UNSPEC(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @sptoa(i32* %13)
  store i8* %14, i8** %2, align 8
  br label %35

15:                                               ; preds = %8
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @ISREFCLOCKADR(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @refnumtoa(i32* %20)
  store i8* %21, i8** %2, align 8
  br label %35

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @socktohost(i32* %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @LIB_GETBUF(i8* %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @LIB_BUFLENGTH, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @SRCPORT(i32* %31)
  %33 = call i32 @snprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %32)
  %34 = load i8*, i8** %5, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %23, %19, %12
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i64 @SOCK_UNSPEC(i32*) #1

declare dso_local i8* @sptoa(i32*) #1

declare dso_local i64 @ISREFCLOCKADR(i32*) #1

declare dso_local i8* @refnumtoa(i32*) #1

declare dso_local i8* @socktohost(i32*) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @SRCPORT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
