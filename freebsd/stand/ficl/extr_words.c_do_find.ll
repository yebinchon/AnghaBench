; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_do_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_do_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @do_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_find(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @vmGetDict(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @dictLookup(i32 %9, i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @PUSHPTR(i8* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @wordIsImmediate(i8* %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 -1
  %22 = call i32 @PUSHINT(i32 %21)
  br label %27

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @PUSHPTR(i8* %24)
  %26 = call i32 @PUSHUNS(i32 0)
  br label %27

27:                                               ; preds = %23, %14
  ret void
}

declare dso_local i8* @dictLookup(i32, i32) #1

declare dso_local i32 @vmGetDict(i32*) #1

declare dso_local i32 @PUSHPTR(i8*) #1

declare dso_local i32 @PUSHINT(i32) #1

declare dso_local i64 @wordIsImmediate(i8*) #1

declare dso_local i32 @PUSHUNS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
