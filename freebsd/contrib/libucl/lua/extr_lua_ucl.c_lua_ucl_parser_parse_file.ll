; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_parser_parse_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_parser_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_ucl_parser_parse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_ucl_parser_parse_file(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ucl_parser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 2, i32* %5, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.ucl_parser* @lua_ucl_parser_get(i32* %6, i32 1)
  store %struct.ucl_parser* %7, %struct.ucl_parser** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @luaL_checkstring(i32* %8, i32 2)
  store i8* %9, i8** %4, align 8
  %10 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %11 = icmp ne %struct.ucl_parser* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @ucl_parser_add_file(%struct.ucl_parser* %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_pushboolean(i32* %21, i32 1)
  store i32 1, i32* %5, align 4
  br label %30

23:                                               ; preds = %15
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @lua_pushboolean(i32* %24, i32 0)
  %26 = load i32*, i32** %2, align 8
  %27 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %28 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %27)
  %29 = call i32 @lua_pushstring(i32* %26, i8* %28)
  br label %30

30:                                               ; preds = %23, %20
  br label %36

31:                                               ; preds = %12, %1
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @lua_pushboolean(i32* %32, i32 0)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @lua_pushstring(i32* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %30
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.ucl_parser* @lua_ucl_parser_get(i32*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i64 @ucl_parser_add_file(%struct.ucl_parser*, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i8* @ucl_parser_get_error(%struct.ucl_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
