; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_iter.c_zcp_props_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_iter.c_zcp_props_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZPROP_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zcp_props_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_props_iter(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_upvalueindex(i32 1)
  %11 = call i8* @lua_touserdata(i32* %9, i32 %10)
  %12 = bitcast i8* %11 to i32**
  store i32** %12, i32*** %7, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_upvalueindex(i32 2)
  %15 = call i8* @lua_touserdata(i32* %13, i32 %14)
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %8, align 8
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i32**, i32*** %7, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @nvlist_next_nvpair(i32* %19, i32* %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32**, i32*** %7, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @fnvlist_free(i32* %26)
  %28 = load i32**, i32*** %7, align 8
  store i32* null, i32** %28, align 8
  store i32 0, i32* %2, align 4
  br label %61

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32*, i32** %8, align 8
  %32 = call i8* @nvpair_name(i32* %31)
  %33 = call i32 @zfs_prop_user(i8* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %17, label %36

36:                                               ; preds = %30
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @lua_pushlightuserdata(i32* %37, i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_upvalueindex(i32 2)
  %42 = call i32 @lua_replace(i32* %40, i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = call i32* @fnvpair_value_nvlist(i32* %43)
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @ZPROP_VALUE, align 4
  %47 = call i8* @fnvlist_lookup_string(i32* %45, i32 %46)
  store i8* %47, i8** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @ZPROP_SOURCE, align 4
  %50 = call i8* @fnvlist_lookup_string(i32* %48, i32 %49)
  store i8* %50, i8** %4, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i8* @nvpair_name(i32* %52)
  %54 = call i32 @lua_pushstring(i32* %51, i8* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @lua_pushstring(i32* %55, i8* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @lua_pushstring(i32* %58, i8* %59)
  store i32 3, i32* %2, align 4
  br label %61

61:                                               ; preds = %36, %24
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @zfs_prop_user(i8*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32* @fnvpair_value_nvlist(i32*) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
