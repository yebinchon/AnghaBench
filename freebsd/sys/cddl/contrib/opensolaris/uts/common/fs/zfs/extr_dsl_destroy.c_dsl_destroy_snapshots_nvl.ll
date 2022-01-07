; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_destroy.c_dsl_destroy_snapshots_nvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_destroy.c_dsl_destroy_snapshots_nvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KM_SLEEP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"defer\00", align 1
@ZCP_ARG_ARGLIST = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [526 x i8] c"arg = ...\0Asnaps = arg['snaps']\0Adefer = arg['defer']\0Aerrors = { }\0Ahas_errors = false\0Afor snap, v in pairs(snaps) do\0A    errno = zfs.check.destroy{snap, defer=defer}\0A    zfs.debug('snap: ' .. snap .. ' errno: ' .. errno)\0A    if errno == ENOENT then\0A        snaps[snap] = nil\0A    elseif errno ~= 0 then\0A        errors[snap] = errno\0A        has_errors = true\0A    end\0Aend\0Aif has_errors then\0A    return errors\0Aend\0Afor snap, v in pairs(snaps) do\0A    errno = zfs.sync.destroy{snap, defer=defer}\0A    assert(errno == 0)\0Aend\0Areturn { }\0A\00", align 1
@zfs_lua_max_memlimit = common dso_local global i32 0, align 4
@ZCP_RET_ERROR = common dso_local global i32 0, align 4
@ZCP_RET_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_destroy_snapshots_nvl(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @nvlist_next_nvpair(i32* %20, i32* null)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %120

24:                                               ; preds = %3
  %25 = load i32, i32* @KM_SLEEP, align 4
  %26 = call i32 @nvlist_alloc(i32** %8, i32 0, i32 %25)
  %27 = call i32 @VERIFY0(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @nvlist_next_nvpair(i32* %28, i32* null)
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %39, %24
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i8* @nvpair_name(i32* %35)
  %37 = load i32, i32* @B_TRUE, align 4
  %38 = call i32 @fnvlist_add_boolean_value(i32* %34, i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32* @nvlist_next_nvpair(i32* %40, i32* %41)
  store i32* %42, i32** %9, align 8
  br label %30

43:                                               ; preds = %30
  %44 = load i32, i32* @KM_SLEEP, align 4
  %45 = call i32 @nvlist_alloc(i32** %10, i32 0, i32 %44)
  %46 = call i32 @VERIFY0(i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @fnvlist_add_nvlist(i32* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %48)
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @fnvlist_free(i32* %50)
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @fnvlist_add_boolean_value(i32* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @KM_SLEEP, align 4
  %56 = call i32 @nvlist_alloc(i32** %11, i32 0, i32 %55)
  %57 = call i32 @VERIFY0(i32 %56)
  %58 = load i32*, i32** %11, align 8
  %59 = load i8*, i8** @ZCP_ARG_ARGLIST, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @fnvlist_add_nvlist(i32* %58, i8* %59, i32* %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @fnvlist_free(i32* %62)
  store i8* getelementptr inbounds ([526 x i8], [526 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %64 = call i32* (...) @fnvlist_alloc()
  store i32* %64, i32** %13, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32* @nvlist_next_nvpair(i32* %65, i32* null)
  %67 = call i8* @nvpair_name(i32* %66)
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* @B_TRUE, align 4
  %70 = load i32, i32* @zfs_lua_max_memlimit, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = call i32* @nvlist_next_nvpair(i32* %71, i32* null)
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @zcp_eval(i8* %67, i8* %68, i32 %69, i32 0, i32 %70, i32* %72, i32* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %43
  store i8* null, i8** %15, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* @ZCP_RET_ERROR, align 4
  %80 = call i32 @nvlist_lookup_string(i32* %78, i32 %79, i8** %15)
  %81 = load i8*, i8** %15, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i8*, i8** %15, align 8
  %85 = call i32 @zfs_dbgmsg(i8* %84)
  br label %86

86:                                               ; preds = %83, %77
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %4, align 4
  br label %120

88:                                               ; preds = %43
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @fnvlist_free(i32* %89)
  store i32 0, i32* %16, align 4
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* @ZCP_RET_RETURN, align 4
  %93 = call i32* @fnvlist_lookup_nvlist(i32* %91, i32 %92)
  store i32* %93, i32** %17, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i32* @nvlist_next_nvpair(i32* %94, i32* null)
  store i32* %95, i32** %18, align 8
  br label %96

96:                                               ; preds = %112, %88
  %97 = load i32*, i32** %18, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load i32*, i32** %18, align 8
  %101 = call i32 @fnvpair_value_int64(i32* %100)
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %19, align 4
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %104, %99
  %107 = load i32*, i32** %7, align 8
  %108 = load i32*, i32** %18, align 8
  %109 = call i8* @nvpair_name(i32* %108)
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @fnvlist_add_int32(i32* %107, i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %106
  %113 = load i32*, i32** %17, align 8
  %114 = load i32*, i32** %18, align 8
  %115 = call i32* @nvlist_next_nvpair(i32* %113, i32* %114)
  store i32* %115, i32** %18, align 8
  br label %96

116:                                              ; preds = %96
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @fnvlist_free(i32* %117)
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %116, %86, %23
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @fnvlist_add_boolean_value(i32*, i8*, i32) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @zcp_eval(i8*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @zfs_dbgmsg(i8*) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i32 @fnvpair_value_int64(i32*) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
