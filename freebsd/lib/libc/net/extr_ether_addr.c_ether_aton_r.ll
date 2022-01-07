; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ether_addr.c_ether_aton_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ether_addr.c_ether_aton_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_addr = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"%x:%x:%x:%x:%x:%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ether_addr* @ether_aton_r(i8* %0, %struct.ether_addr* %1) #0 {
  %3 = alloca %struct.ether_addr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ether_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ether_addr* %1, %struct.ether_addr** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 6
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.ether_addr* null, %struct.ether_addr** %3, align 8
  br label %50

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  %21 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  %26 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  %31 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  %36 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  %41 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  %46 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  store i32 %44, i32* %48, align 4
  %49 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  store %struct.ether_addr* %49, %struct.ether_addr** %3, align 8
  br label %50

50:                                               ; preds = %18, %17
  %51 = load %struct.ether_addr*, %struct.ether_addr** %3, align 8
  ret %struct.ether_addr* %51
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
