; ModuleID = '/home/carl/AnghaBench/freebsd/stand/liblua/extr_lfs.c_lua_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/liblua/extr_lfs.c_lua_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, %struct.stat*)*, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"cannot convert first argument to string\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot obtain information from file '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@members = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid attribute name '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_attributes(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @luaL_checkstring(i32* %9, i32 1)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_pushnil(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @lua_pushfstring(i32* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @lua_pushinteger(i32* %18, i32 %19)
  store i32 3, i32* %2, align 4
  br label %110

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @stat(i8* %22, %struct.stat* %4)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_pushnil(i32* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 (i32*, i8*, ...) @lua_pushfstring(i32* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @lua_pushinteger(i32* %34, i32 %35)
  store i32 3, i32* %2, align 4
  br label %110

37:                                               ; preds = %21
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @lua_isstring(i32* %38, i32 2)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = load i32*, i32** %3, align 8
  %43 = call i8* @lua_tostring(i32* %42, i32 2)
  store i8* %43, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %67, %41
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @members, align 8
  %47 = call i64 @nitems(%struct.TYPE_3__* %46)
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @members, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strcmp(i32 %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %67

59:                                               ; preds = %49
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @members, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (i32*, %struct.stat*)*, i32 (i32*, %struct.stat*)** %63, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 %64(i32* %65, %struct.stat* %4)
  store i32 1, i32* %2, align 4
  br label %110

67:                                               ; preds = %58
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %44

70:                                               ; preds = %44
  %71 = load i32*, i32** %3, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @luaL_error(i32* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  store i32 %73, i32* %2, align 4
  br label %110

74:                                               ; preds = %37
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @lua_settop(i32* %75, i32 2)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @lua_istable(i32* %77, i32 2)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @lua_newtable(i32* %81)
  br label %83

83:                                               ; preds = %80, %74
  store i64 0, i64* %7, align 8
  br label %84

84:                                               ; preds = %106, %83
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @members, align 8
  %87 = call i64 @nitems(%struct.TYPE_3__* %86)
  %88 = icmp ult i64 %85, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  %90 = load i32*, i32** %3, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @members, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @lua_pushstring(i32* %90, i32 %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @members, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32 (i32*, %struct.stat*)*, i32 (i32*, %struct.stat*)** %100, align 8
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 %101(i32* %102, %struct.stat* %4)
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @lua_rawset(i32* %104, i32 -3)
  br label %106

106:                                              ; preds = %89
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %84

109:                                              ; preds = %84
  store i32 1, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %70, %59, %26, %13
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, ...) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
