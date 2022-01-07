; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstrlib.c_str_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstrlib.c_str_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_sub(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @luaL_checklstring(i32* %7, i32 1, i64* %3)
  store i8* %8, i8** %4, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @luaL_checkinteger(i32* %9, i32 2)
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @posrelat(i32 %10, i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @luaL_optinteger(i32* %13, i32 3, i32 -1)
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @posrelat(i32 %14, i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i64 1, i64* %5, align 8
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* %3, align 8
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = getelementptr inbounds i8, i8* %34, i64 -1
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = sub i64 %36, %37
  %39 = add i64 %38, 1
  %40 = call i32 @lua_pushlstring(i32* %31, i8* %35, i64 %39)
  br label %44

41:                                               ; preds = %26
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @lua_pushliteral(i32* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %30
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @posrelat(i32, i64) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
