; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lgc.c_luaC_barrier_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lgc.c_luaC_barrier_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaC_barrier_(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @G(i32* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @isblack(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @iswhite(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @isdead(i32* %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @isdead(i32* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %17, %13, %3
  %29 = phi i1 [ false, %17 ], [ false, %13 ], [ false, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @lua_assert(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @keepinvariant(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @reallymarkobject(i32* %36, i32* %37)
  br label %46

39:                                               ; preds = %28
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @issweepphase(i32* %40)
  %42 = call i32 @lua_assert(i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @makewhite(i32* %43, i32* %44)
  br label %46

46:                                               ; preds = %39, %35
  ret void
}

declare dso_local i32* @G(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @isblack(i32*) #1

declare dso_local i64 @iswhite(i32*) #1

declare dso_local i32 @isdead(i32*, i32*) #1

declare dso_local i64 @keepinvariant(i32*) #1

declare dso_local i32 @reallymarkobject(i32*, i32*) #1

declare dso_local i32 @issweepphase(i32*) #1

declare dso_local i32 @makewhite(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
