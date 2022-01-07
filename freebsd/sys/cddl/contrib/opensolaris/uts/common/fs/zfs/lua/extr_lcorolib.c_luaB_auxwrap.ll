; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lcorolib.c_luaB_auxwrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lcorolib.c_luaB_auxwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_auxwrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_auxwrap(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_upvalueindex(i32 1)
  %8 = call i32* @lua_tothread(i32* %6, i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  %13 = call i32 @auxresume(i32* %9, i32* %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @lua_isstring(i32* %17, i32 -1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @luaL_where(i32* %21, i32 1)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_insert(i32* %23, i32 -2)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_concat(i32* %25, i32 2)
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_error(i32* %28)
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32* @lua_tothread(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @auxresume(i32*, i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_where(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

declare dso_local i32 @lua_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
