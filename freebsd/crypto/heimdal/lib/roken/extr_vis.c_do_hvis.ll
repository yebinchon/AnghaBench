; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_vis.c_do_hvis.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_vis.c_do_hvis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"$-_.+!*'(),\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32, i32, i8*)* @do_hvis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_hvis(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @isascii(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @isalnum(i32 %15) #3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @strchr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %18, %14, %5
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  store i8 37, i8* %23, align 1
  %25 = load i32, i32* %7, align 4
  %26 = lshr i32 %25, 4
  %27 = and i32 %26, 15
  %28 = call i8* @xtoa(i32 %27)
  %29 = ptrtoint i8* %28 to i8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  store i8 %29, i8* %30, align 1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 15
  %34 = call i8* @xtoa(i32 %33)
  %35 = ptrtoint i8* %34 to i8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  store i8 %35, i8* %36, align 1
  br label %45

38:                                               ; preds = %18
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call i8* @do_svis(i8* %39, i32 %40, i32 %41, i32 %42, i8* %43)
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %38, %22
  %46 = load i8*, i8** %6, align 8
  ret i8* %46
}

declare dso_local i32 @isascii(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i8* @xtoa(i32) #1

declare dso_local i8* @do_svis(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
