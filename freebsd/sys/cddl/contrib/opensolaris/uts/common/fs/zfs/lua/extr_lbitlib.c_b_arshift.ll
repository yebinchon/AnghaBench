; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lbitlib.c_b_arshift.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lbitlib.c_b_arshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_NBITS = common dso_local global i32 0, align 4
@ALLONES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @b_arshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_arshift(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @luaL_checkunsigned(i32* %6, i32 1)
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @luaL_checkint(i32* %8, i32 2)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @LUA_NBITS, align 4
  %15 = sub nsw i32 %14, 1
  %16 = shl i32 1, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12, %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @b_shift(i32* %20, i32 %21, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @LUA_NBITS, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @ALLONES, align 4
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 -1, %35
  %37 = xor i32 %36, -1
  %38 = or i32 %34, %37
  %39 = call i32 @trim(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %31, %29
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @lua_pushunsigned(i32* %41, i32 %42)
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @luaL_checkunsigned(i32*, i32) #1

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @b_shift(i32*, i32, i32) #1

declare dso_local i32 @trim(i32) #1

declare dso_local i32 @lua_pushunsigned(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
