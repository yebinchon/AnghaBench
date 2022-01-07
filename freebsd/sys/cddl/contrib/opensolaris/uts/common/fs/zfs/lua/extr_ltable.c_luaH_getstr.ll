; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_ltable.c_luaH_getstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_ltable.c_luaH_getstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@LUA_TSHRSTR = common dso_local global i64 0, align 8
@luaO_nilobject = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaH_getstr(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = call i32* @hashstr(i32* %7, %struct.TYPE_7__* %8)
  store i32* %9, i32** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LUA_TSHRSTR, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @lua_assert(i32 %16)
  br label %18

18:                                               ; preds = %37, %2
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @gkey(i32* %19)
  %21 = call i64 @ttisshrstring(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @gkey(i32* %24)
  %26 = call i32 @rawtsvalue(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = call i64 @eqshrstr(i32 %26, %struct.TYPE_7__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @gval(i32* %31)
  store i32* %32, i32** %3, align 8
  br label %42

33:                                               ; preds = %23, %18
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @gnext(i32* %34)
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %18, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %41, i32** %3, align 8
  br label %42

42:                                               ; preds = %40, %30
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local i32* @hashstr(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ttisshrstring(i32) #1

declare dso_local i32 @gkey(i32*) #1

declare dso_local i64 @eqshrstr(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @rawtsvalue(i32) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32* @gnext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
