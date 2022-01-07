; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hncp.c_format_nid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hncp.c_format_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@format_nid.buf = internal global [4 x [16 x i8]] zeroinitializer, align 16
@format_nid.i = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%02x:%02x:%02x:%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @format_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_nid(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @format_nid.i, align 4
  %4 = add nsw i32 %3, 1
  %5 = srem i32 %4, 4
  store i32 %5, i32* @format_nid.i, align 4
  %6 = load i32, i32* @format_nid.i, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x [16 x i8]], [4 x [16 x i8]]* @format_nid.buf, i64 0, i64 %7
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snprintf(i8* %9, i32 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21)
  %23 = load i32, i32* @format_nid.i, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x [16 x i8]], [4 x [16 x i8]]* @format_nid.buf, i64 0, i64 %24
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  ret i8* %26
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
