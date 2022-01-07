; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ether_addr.c_ether_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ether_addr.c_ether_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_addr = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"%x:%x:%x:%x:%x:%x %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ether_line(i8* %0, %struct.ether_addr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ether_addr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  store i8* %0, i8** %5, align 8
  store %struct.ether_addr* %1, %struct.ether_addr** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @sscanf(i8* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 6
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ether_addr*, %struct.ether_addr** %6, align 8
  %31 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %22

39:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %41

40:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
