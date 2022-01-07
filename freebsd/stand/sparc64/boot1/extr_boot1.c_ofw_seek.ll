; ModuleID = '/home/carl/AnghaBench/freebsd/stand/sparc64/boot1/extr_boot1.c_ofw_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/sparc64/boot1/extr_boot1.c_ofw_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ofw_seek: devh=0x%x off=0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ofw_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_seek(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [7 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  store i32 ptrtoint ([5 x i8]* @.str to i32), i32* %7, align 4
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 3, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 32
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds i32, i32* %12, i64 1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %19 = call i64 @ofw(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  store i32 1, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @ofw(i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
