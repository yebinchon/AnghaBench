; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_parse_table_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_parse_table_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@LUA_TNIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"too few arguments\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"arg %d wrong type (is '%s', expected '%s')\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"kwarg '%s' wrong type (is '%s', expected '%s')\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"too many positional arguments\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"invalid kwarg '%s'\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"kwarg keys must be strings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*)* @zcp_parse_table_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zcp_parse_table_args(i32* %0, i8* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %77, %4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %80

19:                                               ; preds = %11
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @lua_pushinteger(i32* %20, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @lua_gettable(i32* %24, i32 1)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @lua_type(i32* %26, i32 -1)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @LUA_TNIL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load i32*, i32** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = call i32 (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, ...) @zcp_args_error(i32* %32, i8* %33, %struct.TYPE_6__* %34, %struct.TYPE_6__* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %68

38:                                               ; preds = %19
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %39, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %38
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @lua_typename(i32* %54, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @lua_typename(i32* %57, i32 %63)
  %65 = call i32 (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, ...) @zcp_args_error(i32* %48, i8* %49, %struct.TYPE_6__* %50, %struct.TYPE_6__* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %56, i32 %64)
  %66 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %47, %38
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @lua_pushinteger(i32* %69, i32 %71)
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @lua_pushnil(i32* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @lua_settable(i32* %75, i32 1)
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %11

80:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %147, %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %150

89:                                               ; preds = %81
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @lua_getfield(i32* %90, i32 1, i32* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @lua_type(i32* %98, i32 -1)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @LUA_TNIL, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %89
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %104, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %103
  %113 = load i32*, i32** %5, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @lua_typename(i32* %123, i32 %124)
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @lua_typename(i32* %126, i32 %132)
  %134 = call i32 (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, ...) @zcp_args_error(i32* %113, i8* %114, %struct.TYPE_6__* %115, %struct.TYPE_6__* %116, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32* %122, i32 %125, i32 %133)
  %135 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %136

136:                                              ; preds = %112, %103, %89
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @lua_pushnil(i32* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @lua_setfield(i32* %139, i32 1, i32* %145)
  br label %147

147:                                              ; preds = %136
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %81

150:                                              ; preds = %81
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @lua_pushnil(i32* %151)
  %153 = load i32*, i32** %5, align 8
  %154 = call i64 @lua_next(i32* %153, i32 1)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %191

156:                                              ; preds = %150
  %157 = load i32*, i32** %5, align 8
  %158 = call i64 @lua_isnumber(i32* %157, i32 -2)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load i32*, i32** %5, align 8
  %162 = call i64 @lua_tointeger(i32* %161, i32 -2)
  %163 = icmp sgt i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i32*, i32** %5, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %169 = call i32 (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, ...) @zcp_args_error(i32* %165, i8* %166, %struct.TYPE_6__* %167, %struct.TYPE_6__* %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %189

170:                                              ; preds = %160, %156
  %171 = load i32*, i32** %5, align 8
  %172 = call i64 @lua_isstring(i32* %171, i32 -2)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = load i32*, i32** %5, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = call i32 @lua_tostring(i32* %179, i32 -2)
  %181 = call i32 (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, ...) @zcp_args_error(i32* %175, i8* %176, %struct.TYPE_6__* %177, %struct.TYPE_6__* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  br label %188

182:                                              ; preds = %170
  %183 = load i32*, i32** %5, align 8
  %184 = load i8*, i8** %6, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %187 = call i32 (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, ...) @zcp_args_error(i32* %183, i8* %184, %struct.TYPE_6__* %185, %struct.TYPE_6__* %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %188

188:                                              ; preds = %182, %174
  br label %189

189:                                              ; preds = %188, %164
  %190 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %150
  %192 = load i32*, i32** %5, align 8
  %193 = call i32 @lua_remove(i32* %192, i32 1)
  ret void
}

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @zcp_args_error(i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i32*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
