; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_slc_end_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_slc_end_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slc_replyp = common dso_local global i32* null, align 8
@slc_reply_eom = common dso_local global i32* null, align 8
@IAC = common dso_local global i32 0, align 4
@SE = common dso_local global i32 0, align 4
@slc_reply = common dso_local global i32* null, align 8
@netoring = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"slc_end_reply: not enough room\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slc_end_reply() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @slc_replyp, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 2
  %4 = load i32*, i32** @slc_reply_eom, align 8
  %5 = icmp ugt i32* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %51

7:                                                ; preds = %0
  %8 = load i32, i32* @IAC, align 4
  %9 = load i32*, i32** @slc_replyp, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** @slc_replyp, align 8
  store i32 %8, i32* %9, align 4
  %11 = load i32, i32* @SE, align 4
  %12 = load i32*, i32** @slc_replyp, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** @slc_replyp, align 8
  store i32 %11, i32* %12, align 4
  %14 = load i32*, i32** @slc_replyp, align 8
  %15 = load i32*, i32** @slc_reply, align 8
  %16 = ptrtoint i32* %14 to i64
  %17 = ptrtoint i32* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp sle i32 %21, 6
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  br label %51

24:                                               ; preds = %7
  %25 = call i32 (...) @NETROOM()
  %26 = load i32, i32* %1, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i32*, i32** @slc_reply, align 8
  %30 = load i32*, i32** @slc_replyp, align 8
  %31 = load i32*, i32** @slc_reply, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @ring_supply_data(i32* @netoring, i32* %29, i32 %36)
  %38 = load i32*, i32** @slc_reply, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32*, i32** @slc_replyp, align 8
  %41 = load i32*, i32** @slc_reply, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = sub nsw i64 %45, 2
  %47 = trunc i64 %46 to i32
  %48 = call i32 @printsub(i8 signext 62, i32* %39, i32 %47)
  br label %51

49:                                               ; preds = %24
  %50 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %6, %23, %49, %28
  ret void
}

declare dso_local i32 @NETROOM(...) #1

declare dso_local i32 @ring_supply_data(i32*, i32*, i32) #1

declare dso_local i32 @printsub(i8 signext, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
