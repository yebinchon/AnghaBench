; ModuleID = '/home/carl/AnghaBench/freebsd/stand/liblua/extr_lutils.c_lua_readfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/liblua/extr_lutils.c_lua_readfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_readfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_readfile(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_gettop(i32* %12)
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %11, %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_pushnil(i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @lua_pushinteger(i32* %18, i64 0)
  store i32 2, i32* %2, align 4
  br label %65

20:                                               ; preds = %11
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @lua_touserdata(i32* %21, i32 1)
  %23 = inttoptr i64 %22 to %struct.TYPE_3__**
  store %struct.TYPE_3__** %23, %struct.TYPE_3__*** %4, align 8
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %25 = icmp eq %struct.TYPE_3__** %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %20
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_pushnil(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pushinteger(i32* %33, i64 0)
  store i32 2, i32* %2, align 4
  br label %65

35:                                               ; preds = %26
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_gettop(i32* %36)
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = call i64 @lua_tonumber(i32* %40, i32 2)
  store i64 %41, i64* %5, align 8
  br label %47

42:                                               ; preds = %35
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @malloc(i64 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i64 @fread(i8* %51, i32 1, i64 %52, %struct.TYPE_3__* %54)
  store i64 %55, i64* %6, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @lua_pushlstring(i32* %56, i8* %57, i64 %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @lua_pushinteger(i32* %62, i64 %63)
  store i32 2, i32* %2, align 4
  br label %65

65:                                               ; preds = %47, %30, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i64 @lua_tonumber(i32*, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, %struct.TYPE_3__*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
