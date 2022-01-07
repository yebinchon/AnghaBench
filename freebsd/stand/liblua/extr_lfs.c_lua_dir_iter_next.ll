; ModuleID = '/home/carl/AnghaBench/freebsd/stand/liblua/extr_lfs.c_lua_dir_iter_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/liblua/extr_lfs.c_lua_dir_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DIR_METATABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"closed directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_dir_iter_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_dir_iter_next(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.TYPE_3__**, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @DIR_METATABLE, align 4
  %9 = call i64 @luaL_checkudata(i32* %7, i32 1, i32 %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_3__**
  store %struct.TYPE_3__** %10, %struct.TYPE_3__*** %6, align 8
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @luaL_argcheck(i32* %13, i32 %16, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.dirent* @readdirfd(i32 %20)
  store %struct.dirent* %21, %struct.dirent** %4, align 8
  %22 = load %struct.dirent*, %struct.dirent** %4, align 8
  %23 = icmp eq %struct.dirent* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = call i32 @closedir(%struct.TYPE_3__* %25)
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %27, align 8
  store i32 0, i32* %2, align 4
  br label %34

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.dirent*, %struct.dirent** %4, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lua_pushstring(i32* %29, i32 %32)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local %struct.dirent* @readdirfd(i32) #1

declare dso_local i32 @closedir(%struct.TYPE_3__*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
