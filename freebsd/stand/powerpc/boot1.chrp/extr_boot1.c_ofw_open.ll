; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/boot1.chrp/extr_boot1.c_ofw_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/boot1.chrp/extr_boot1.c_ofw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ofw_open: path=\22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ofw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [5 x i32], align 16
  store i8* %0, i8** %3, align 8
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  store i32 ptrtoint ([5 x i8]* @.str to i32), i32* %5, align 4
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %13 = call i64 @ofw(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store i32 -1, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %20 = load i32, i32* %19, align 16
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @ofw(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
