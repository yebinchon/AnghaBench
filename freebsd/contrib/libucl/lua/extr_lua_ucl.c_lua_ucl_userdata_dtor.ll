; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_userdata_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_userdata_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_lua_funcdata = type { %struct.ucl_lua_funcdata*, i32, i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lua_ucl_userdata_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lua_ucl_userdata_dtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ucl_lua_funcdata*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ucl_lua_funcdata*
  store %struct.ucl_lua_funcdata* %5, %struct.ucl_lua_funcdata** %3, align 8
  %6 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %7 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %10 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %11 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @luaL_unref(i32 %8, i32 %9, i32 %12)
  %14 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %15 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %14, i32 0, i32 0
  %16 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %15, align 8
  %17 = icmp ne %struct.ucl_lua_funcdata* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %20 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %19, i32 0, i32 0
  %21 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %20, align 8
  %22 = call i32 @free(%struct.ucl_lua_funcdata* %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %3, align 8
  %25 = call i32 @free(%struct.ucl_lua_funcdata* %24)
  ret void
}

declare dso_local i32 @luaL_unref(i32, i32, i32) #1

declare dso_local i32 @free(%struct.ucl_lua_funcdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
