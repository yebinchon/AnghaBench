; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_userdata_emitter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_userdata_emitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_lua_funcdata = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @lua_ucl_userdata_emitter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lua_ucl_userdata_emitter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ucl_lua_funcdata*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ucl_lua_funcdata*
  store %struct.ucl_lua_funcdata* %6, %struct.ucl_lua_funcdata** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %7 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %8 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %11 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %12 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @lua_rawgeti(i32 %9, i32 %10, i32 %13)
  %15 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %16 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @lua_pcall(i32 %17, i32 0, i32 1, i32 0)
  %19 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %20 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @lua_tostring(i32 %21, i32 -1)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %1
  %26 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %27 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %32 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @free(i8* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @strdup(i8* %36)
  %38 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %39 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %35, %1
  %41 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %42 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @lua_settop(i32 %43, i32 0)
  %45 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %46 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  ret i8* %47
}

declare dso_local i32 @lua_rawgeti(i32, i32, i32) #1

declare dso_local i32 @lua_pcall(i32, i32, i32, i32) #1

declare dso_local i8* @lua_tostring(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @lua_settop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
