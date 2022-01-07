; ModuleID = '/home/carl/AnghaBench/freebsd/stand/liblua/extr_lutils.c_lua_writefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/liblua/extr_lutils.c_lua_writefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_writefile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_writefile(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* null, i8** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* @errno, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @luaL_fileresult(i32* %17, i32 0, i32* null)
  store i32 %18, i32* %2, align 4
  br label %86

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @lua_touserdata(i32* %20, i32 1)
  %22 = inttoptr i64 %21 to i32**
  store i32** %22, i32*** %4, align 8
  %23 = load i32**, i32*** %4, align 8
  %24 = icmp eq i32** %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32**, i32*** %4, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %19
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @luaL_fileresult(i32* %31, i32 0, i32* null)
  store i32 %32, i32* %2, align 4
  br label %86

33:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 2
  %43 = call i32 @lua_isstring(i32* %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* @errno, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @luaL_fileresult(i32* %47, i32 0, i32* null)
  store i32 %48, i32* %2, align 4
  br label %86

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %34

53:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %79, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 2
  %63 = call i8* @lua_tolstring(i32* %60, i32 %62, i64* %8)
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32**, i32*** %4, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @fwrite(i8* %64, i32 1, i64 %65, i32* %67)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @luaL_fileresult(i32* %73, i32 0, i32* null)
  store i32 %74, i32* %2, align 4
  br label %86

75:                                               ; preds = %59
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %54

82:                                               ; preds = %54
  %83 = load i32*, i32** %3, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @lua_pushinteger(i32* %83, i64 %84)
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %72, %45, %29, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_fileresult(i32*, i32, i32*) #1

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
