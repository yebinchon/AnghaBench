; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_loslib.c_getfield.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_loslib.c_getfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"field '%s' is not an integer\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"field '%s' missing in date table\00", align 1
@L_MAXDATEFIELD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"field '%s' is out-of-bound\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @getfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfield(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @lua_getfield(i32* %13, i32 -1, i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @lua_tointegerx(i32* %16, i32 -1, i32* %10)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @LUA_TNIL, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @luaL_error(i32* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 %27, i32* %5, align 4
  br label %59

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @luaL_error(i32* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %5, align 4
  br label %59

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %12, align 4
  br label %55

38:                                               ; preds = %4
  %39 = load i32, i32* @L_MAXDATEFIELD, align 4
  %40 = sub nsw i32 0, %39
  %41 = load i32, i32* %12, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @L_MAXDATEFIELD, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43, %38
  %48 = load i32*, i32** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @luaL_error(i32* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %5, align 4
  br label %59

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %51, %36
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @lua_pop(i32* %56, i32 1)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %47, %31, %24
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_tointegerx(i32*, i32, i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
