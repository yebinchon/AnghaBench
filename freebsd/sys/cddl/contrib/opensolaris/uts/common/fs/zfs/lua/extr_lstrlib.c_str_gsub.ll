; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstrlib.c_str_gsub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstrlib.c_str_gsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8*, i8*, i64, i32* }

@LUA_TNUMBER = common dso_local global i32 0, align 4
@LUA_TSTRING = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"string/function/table expected\00", align 1
@MAXCCALLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_gsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_gsub(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i8* @luaL_checklstring(i32* %14, i32 1, i64* %3)
  store i8* %15, i8** %5, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i8* @luaL_checklstring(i32* %16, i32 2, i64* %4)
  store i8* %17, i8** %6, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @lua_type(i32* %18, i32 3)
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  %23 = call i64 @luaL_optinteger(i32* %20, i32 4, i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 94
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @LUA_TNUMBER, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @LUA_TSTRING, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @LUA_TFUNCTION, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @LUA_TTABLE, align 4
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %41, %37, %33, %1
  %46 = phi i1 [ true, %37 ], [ true, %33 ], [ true, %1 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @luaL_argcheck(i32* %29, i32 %47, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @luaL_buffinit(i32* %49, i32* %12)
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %53, %45
  %59 = load i32*, i32** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  store i32* %59, i32** %60, align 8
  %61 = load i64, i64* @MAXCCALLS, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i8* %67, i8** %68, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %123, %58
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %124

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MAXCCALLS, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @lua_assert(i32 %83)
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i8* @match(%struct.TYPE_4__* %11, i8* %85, i8* %86)
  store i8* %87, i8** %13, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %77
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %10, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @add_value(%struct.TYPE_4__* %11, i32* %12, i8* %93, i8* %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %77
  %98 = load i8*, i8** %13, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i8*, i8** %13, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = icmp ugt i8* %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i8*, i8** %13, align 8
  store i8* %105, i8** %5, align 8
  br label %119

106:                                              ; preds = %100, %97
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ult i8* %107, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %5, align 8
  %114 = load i8, i8* %112, align 1
  %115 = sext i8 %114 to i32
  %116 = call i32 @luaL_addchar(i32* %12, i32 %115)
  br label %118

117:                                              ; preds = %106
  br label %124

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %104
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %124

123:                                              ; preds = %119
  br label %73

124:                                              ; preds = %122, %117, %73
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @luaL_addlstring(i32* %12, i8* %125, i32 %132)
  %134 = call i32 @luaL_pushresult(i32* %12)
  %135 = load i32*, i32** %2, align 8
  %136 = load i64, i64* %10, align 8
  %137 = call i32 @lua_pushinteger(i32* %135, i64 %136)
  ret i32 2
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @luaL_optinteger(i32*, i32, i64) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i8* @match(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @add_value(%struct.TYPE_4__*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
