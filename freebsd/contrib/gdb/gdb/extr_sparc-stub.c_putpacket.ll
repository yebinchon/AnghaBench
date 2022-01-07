; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-stub.c_putpacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-stub.c_putpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hexchars = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @putpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putpacket(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  br label %6

6:                                                ; preds = %44, %1
  %7 = call i32 @putDebugChar(i8 signext 36)
  store i8 0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %15, %6
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %5, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = load i8, i8* %5, align 1
  %17 = call i32 @putDebugChar(i8 signext %16)
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %3, align 1
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %8

26:                                               ; preds = %8
  %27 = call i32 @putDebugChar(i8 signext 35)
  %28 = load i8*, i8** @hexchars, align 8
  %29 = load i8, i8* %3, align 1
  %30 = zext i8 %29 to i32
  %31 = ashr i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @putDebugChar(i8 signext %34)
  %36 = load i8*, i8** @hexchars, align 8
  %37 = load i8, i8* %3, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 15
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @putDebugChar(i8 signext %42)
  br label %44

44:                                               ; preds = %26
  %45 = call signext i8 (...) @getDebugChar()
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 43
  br i1 %47, label %6, label %48

48:                                               ; preds = %44
  ret void
}

declare dso_local i32 @putDebugChar(i8 signext) #1

declare dso_local signext i8 @getDebugChar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
