; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-babel.c_format_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-babel.c_format_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@format_prefix.buf = internal global [50 x i8] zeroinitializer, align 16
@v4prefix = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i8)* @format_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_prefix(i32* %0, i32* %1, i8 zeroext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp sge i32 %8, 96
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @v4prefix, align 4
  %13 = call i64 @memcmp(i32* %11, i32 %12, i32 12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 12
  %19 = call i8* @ipaddr_string(i32* %16, i32* %18)
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = sub nsw i32 %21, 96
  %23 = trunc i32 %22 to i8
  %24 = call i32 @snprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @format_prefix.buf, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i8 zeroext %23)
  br label %31

25:                                               ; preds = %10, %3
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @ip6addr_string(i32* %26, i32* %27)
  %29 = load i8, i8* %6, align 1
  %30 = call i32 @snprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @format_prefix.buf, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i8 zeroext %29)
  br label %31

31:                                               ; preds = %25, %15
  store i8 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @format_prefix.buf, i64 0, i64 49), align 1
  ret i8* getelementptr inbounds ([50 x i8], [50 x i8]* @format_prefix.buf, i64 0, i64 0)
}

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8 zeroext) #1

declare dso_local i8* @ipaddr_string(i32*, i32*) #1

declare dso_local i8* @ip6addr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
