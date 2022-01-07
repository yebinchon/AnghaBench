; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstrlib.c_str_find_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstrlib.c_str_find_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8*, i8*, i64, i32* }

@MAXCCALLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @str_find_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_find_aux(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @luaL_checklstring(i32* %16, i32 1, i64* %6)
  store i8* %17, i8** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @luaL_checklstring(i32* %18, i32 2, i64* %7)
  store i8* %19, i8** %9, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @luaL_optinteger(i32* %20, i32 3, i32 1)
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @posrelat(i32 %21, i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i64 1, i64* %10, align 8
  br label %36

27:                                               ; preds = %2
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @lua_pushnil(i32* %33)
  store i32 1, i32* %3, align 4
  br label %171

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @lua_toboolean(i32* %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @nospecials(i8* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %43, %39
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 -1
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = sub i64 %53, %54
  %56 = add i64 %55, 1
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i8* @lmemfind(i8* %52, i64 %56, i8* %57, i64 %58)
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %48
  %63 = load i32*, i32** %4, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = add nsw i64 %68, 1
  %70 = trunc i64 %69 to i32
  %71 = call i32 @lua_pushinteger(i32* %63, i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @lua_pushinteger(i32* %72, i32 %80)
  store i32 2, i32* %3, align 4
  br label %171

82:                                               ; preds = %48
  br label %168

83:                                               ; preds = %43, %36
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = getelementptr inbounds i8, i8* %86, i64 -1
  store i8* %87, i8** %13, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 94
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %83
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, -1
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %95, %83
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  store i32* %101, i32** %102, align 8
  %103 = load i64, i64* @MAXCCALLS, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i8* %109, i8** %110, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i8* %113, i8** %114, align 8
  br label %115

115:                                              ; preds = %165, %100
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i64 0, i64* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MAXCCALLS, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @lua_assert(i32 %121)
  %123 = load i8*, i8** %13, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = call i8* @match(%struct.TYPE_4__* %12, i8* %123, i8* %124)
  store i8* %125, i8** %15, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %154

127:                                              ; preds = %115
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %127
  %131 = load i32*, i32** %4, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = add nsw i64 %136, 1
  %138 = trunc i64 %137 to i32
  %139 = call i32 @lua_pushinteger(i32* %131, i32 %138)
  %140 = load i32*, i32** %4, align 8
  %141 = load i8*, i8** %15, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @lua_pushinteger(i32* %140, i32 %146)
  %148 = call i32 @push_captures(%struct.TYPE_4__* %12, i8* null, i8* null)
  %149 = add nsw i32 %148, 2
  store i32 %149, i32* %3, align 4
  br label %171

150:                                              ; preds = %127
  %151 = load i8*, i8** %13, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = call i32 @push_captures(%struct.TYPE_4__* %12, i8* %151, i8* %152)
  store i32 %153, i32* %3, align 4
  br label %171

154:                                              ; preds = %115
  br label %155

155:                                              ; preds = %154
  %156 = load i8*, i8** %13, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ult i8* %156, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br label %165

165:                                              ; preds = %161, %155
  %166 = phi i1 [ false, %155 ], [ %164, %161 ]
  br i1 %166, label %115, label %167

167:                                              ; preds = %165
  br label %168

168:                                              ; preds = %167, %82
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 @lua_pushnil(i32* %169)
  store i32 1, i32* %3, align 4
  br label %171

171:                                              ; preds = %168, %150, %130, %62, %32
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i64 @nospecials(i8*, i64) #1

declare dso_local i8* @lmemfind(i8*, i64, i8*, i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i8* @match(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @push_captures(%struct.TYPE_4__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
