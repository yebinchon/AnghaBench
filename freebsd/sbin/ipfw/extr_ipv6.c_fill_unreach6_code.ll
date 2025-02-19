; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipv6.c_fill_unreach6_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipv6.c_fill_unreach6_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@icmp6codes = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unknown ICMPv6 unreachable code ``%s''\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_unreach6_code(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strtoul(i8* %7, i8** %6, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 256
  br i1 %19, label %20, label %24

20:                                               ; preds = %17, %12, %2
  %21 = load i32, i32* @icmp6codes, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @match_token(i32 %21, i8* %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @EX_DATAERR, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @errx(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %3, align 8
  store i32 %32, i32* %33, align 4
  ret void
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @match_token(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
