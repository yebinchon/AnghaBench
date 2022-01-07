; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ripng.c_rip6_entry_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ripng.c_rip6_entry_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netinfo6 = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.netinfo6*, i32)* @rip6_entry_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rip6_entry_print(i32* %0, %struct.netinfo6* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.netinfo6*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.netinfo6* %1, %struct.netinfo6** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.netinfo6*, %struct.netinfo6** %5, align 8
  %11 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %10, i32 0, i32 3
  %12 = call i32 @ip6addr_string(i32* %9, i32* %11)
  %13 = load %struct.netinfo6*, %struct.netinfo6** %5, align 8
  %14 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @ND_PRINT(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.netinfo6*, %struct.netinfo6** %5, align 8
  %20 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.netinfo6*, %struct.netinfo6** %5, align 8
  %26 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %25, i32 0, i32 1
  %27 = call i32 @EXTRACT_16BITS(i64* %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @ND_PRINT(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %23, %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.netinfo6*, %struct.netinfo6** %5, align 8
  %39 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @ND_PRINT(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %36, %33
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ip6addr_string(i32*, i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
