; ModuleID = '/home/carl/AnghaBench/freebsd/stand/liblua/extr_lutils.c_lua_perform.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/liblua/extr_lutils.c_lua_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_perform(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @luaL_checkstring(i32* %6, i32 1)
  %8 = call i64 @parse(i32* %3, i8*** %4, i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = call i32 @interp_builtin_cmd(i32 %11, i8** %12)
  store i32 %13, i32* %5, align 4
  %14 = load i8**, i8*** %4, align 8
  %15 = call i32 @free(i8** %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @lua_pushinteger(i32* %17, i32 %18)
  ret i32 1
}

declare dso_local i64 @parse(i32*, i8***, i32) #1

declare dso_local i32 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @interp_builtin_cmd(i32, i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
