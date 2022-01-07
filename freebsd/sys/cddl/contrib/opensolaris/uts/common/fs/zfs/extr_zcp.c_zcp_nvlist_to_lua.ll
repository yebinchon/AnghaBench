; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_nvlist_to_lua.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_nvlist_to_lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@DATA_TYPE_BOOLEAN = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zcp_nvlist_to_lua(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @lua_newtable(i32* %14)
  %16 = load i32, i32* @B_FALSE, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @nvlist_next_nvpair(i32* %17, i32* null)
  store i32* %18, i32** %10, align 8
  br label %19

19:                                               ; preds = %30, %4
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = call i64 @nvpair_type(i32* %23)
  %25 = load i64, i64* @DATA_TYPE_BOOLEAN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @B_TRUE, align 4
  store i32 %28, i32* %11, align 4
  br label %34

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32* @nvlist_next_nvpair(i32* %31, i32* %32)
  store i32* %33, i32** %10, align 8
  br label %19

34:                                               ; preds = %27, %19
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %34
  store i32 1, i32* %12, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @nvlist_next_nvpair(i32* %38, i32* null)
  store i32* %39, i32** %10, align 8
  br label %40

40:                                               ; preds = %55, %37
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @lua_pushinteger(i32* %44, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @nvpair_name(i32* %48)
  %50 = call i32 @lua_pushstring(i32* %47, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @lua_settable(i32* %51, i32 -3)
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %43
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32* @nvlist_next_nvpair(i32* %56, i32* %57)
  store i32* %58, i32** %10, align 8
  br label %40

59:                                               ; preds = %40
  br label %88

60:                                               ; preds = %34
  %61 = load i32*, i32** %7, align 8
  %62 = call i32* @nvlist_next_nvpair(i32* %61, i32* null)
  store i32* %62, i32** %10, align 8
  br label %63

63:                                               ; preds = %83, %60
  %64 = load i32*, i32** %10, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %87

66:                                               ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @zcp_nvpair_value_to_lua(i32* %67, i32* %68, i8* %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @lua_pop(i32* %75, i32 1)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %89

78:                                               ; preds = %66
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @nvpair_name(i32* %80)
  %82 = call i32 @lua_setfield(i32* %79, i32 -2, i32 %81)
  br label %83

83:                                               ; preds = %78
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i32* @nvlist_next_nvpair(i32* %84, i32* %85)
  store i32* %86, i32** %10, align 8
  br label %63

87:                                               ; preds = %63
  br label %88

88:                                               ; preds = %87, %59
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %74
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @zcp_nvpair_value_to_lua(i32*, i32*, i8*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
