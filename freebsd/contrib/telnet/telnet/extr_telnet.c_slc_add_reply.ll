; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_slc_add_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_slc_add_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slc_replyp = common dso_local global i32* null, align 8
@slc_reply_eom = common dso_local global i32* null, align 8
@IAC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slc_add_reply(i8 zeroext %0, i8 zeroext %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store i64 %2, i64* %6, align 8
  %7 = load i32*, i32** @slc_replyp, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 8
  %9 = load i32*, i32** @slc_reply_eom, align 8
  %10 = icmp ugt i32* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %55

12:                                               ; preds = %3
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = load i32*, i32** @slc_replyp, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** @slc_replyp, align 8
  store i32 %14, i32* %15, align 4
  %17 = sext i32 %14 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8*, i8** @IAC, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load i8*, i8** @IAC, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = load i32*, i32** @slc_replyp, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** @slc_replyp, align 8
  store i32 %23, i32* %24, align 4
  br label %26

26:                                               ; preds = %21, %12
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32*, i32** @slc_replyp, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** @slc_replyp, align 8
  store i32 %28, i32* %29, align 4
  %31 = sext i32 %28 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load i8*, i8** @IAC, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i8*, i8** @IAC, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load i32*, i32** @slc_replyp, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** @slc_replyp, align 8
  store i32 %37, i32* %38, align 4
  br label %40

40:                                               ; preds = %35, %26
  %41 = load i64, i64* %6, align 8
  %42 = trunc i64 %41 to i8
  %43 = zext i8 %42 to i32
  %44 = load i32*, i32** @slc_replyp, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** @slc_replyp, align 8
  store i32 %43, i32* %44, align 4
  %46 = sext i32 %43 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8*, i8** @IAC, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load i8*, i8** @IAC, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** @slc_replyp, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** @slc_replyp, align 8
  store i32 %52, i32* %53, align 4
  br label %55

55:                                               ; preds = %11, %50, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
