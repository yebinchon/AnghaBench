; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lstrlib.c_str_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lstrlib.c_str_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"data string too short\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"too many results\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_unpack(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i8* @luaL_checkstring(i32* %17, i32 1)
  store i8* %18, i8** %4, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i8* @luaL_checklstring(i32* %19, i32 2, i64* %5)
  store i8* %20, i8** %6, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @luaL_optinteger(i32* %21, i32 3, i32 1)
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @posrelat(i32 %22, i64 %23)
  %25 = sub i64 %24, 1
  store i64 %25, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ule i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @luaL_argcheck(i32* %26, i32 %30, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @initheader(i32* %32, %struct.TYPE_5__* %3)
  br label %34

34:                                               ; preds = %163, %1
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %168

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @getdetails(%struct.TYPE_5__* %3, i64 %40, i8** %4, i32* %9, i32* %10)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = load i64, i64* %7, align 8
  %48 = xor i64 %47, -1
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %39
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = load i64, i64* %5, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50, %39
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @luaL_argerror(i32* %61, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %50
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @luaL_checkstack(i32* %68, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %11, align 4
  switch i32 %72, label %163 [
    i32 134, label %73
    i32 129, label %73
    i32 135, label %88
    i32 136, label %103
    i32 130, label %111
    i32 128, label %143
    i32 132, label %160
    i32 131, label %160
    i32 133, label %160
  ]

73:                                               ; preds = %63, %63
  %74 = load i32*, i32** %2, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 134
  %83 = zext i1 %82 to i32
  %84 = call i64 @unpackint(i32* %74, i8* %77, i32 %79, i32 %80, i32 %83)
  store i64 %84, i64* %12, align 8
  %85 = load i32*, i32** %2, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @lua_pushinteger(i32* %85, i64 %86)
  br label %163

88:                                               ; preds = %63
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %90 = load volatile i32, i32* %89, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i32, i32* %9, align 4
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @copywithendian(i32 %90, i8* %93, i32 %94, i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %99 = load volatile i32, i32* %98, align 4
  store i32 %99, i32* %14, align 4
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @lua_pushnumber(i32* %100, i32 %101)
  br label %163

103:                                              ; preds = %63
  %104 = load i32*, i32** %2, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = call i32 @lua_pushlstring(i32* %104, i8* %107, i64 %109)
  br label %163

111:                                              ; preds = %63
  %112 = load i32*, i32** %2, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i64 @unpackint(i32* %112, i8* %115, i32 %117, i32 %118, i32 0)
  store i64 %119, i64* %15, align 8
  %120 = load i32*, i32** %2, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %15, align 8
  %123 = add i64 %121, %122
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %123, %125
  %127 = load i64, i64* %5, align 8
  %128 = icmp ule i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @luaL_argcheck(i32* %120, i32 %129, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32*, i32** %2, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i64, i64* %7, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i64, i64* %15, align 8
  %139 = call i32 @lua_pushlstring(i32* %131, i8* %137, i64 %138)
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* %7, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %7, align 8
  br label %163

143:                                              ; preds = %63
  %144 = load i8*, i8** %6, align 8
  %145 = load i64, i64* %7, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = call i64 @strlen(i8* %146)
  %148 = trunc i64 %147 to i32
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %16, align 8
  %150 = load i32*, i32** %2, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i64, i64* %7, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  %154 = load i64, i64* %16, align 8
  %155 = call i32 @lua_pushlstring(i32* %150, i8* %153, i64 %154)
  %156 = load i64, i64* %16, align 8
  %157 = add i64 %156, 1
  %158 = load i64, i64* %7, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %7, align 8
  br label %163

160:                                              ; preds = %63, %63, %63
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %63, %160, %143, %111, %103, %88, %73
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %7, align 8
  %167 = add i64 %166, %165
  store i64 %167, i64* %7, align 8
  br label %34

168:                                              ; preds = %34
  %169 = load i32*, i32** %2, align 8
  %170 = load i64, i64* %7, align 8
  %171 = add i64 %170, 1
  %172 = call i32 @lua_pushinteger(i32* %169, i64 %171)
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  ret i32 %174
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @initheader(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @getdetails(%struct.TYPE_5__*, i64, i8**, i32*, i32*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i64 @unpackint(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i32 @copywithendian(i32, i8*, i32, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
