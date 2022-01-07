; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lmem.c_luaM_realloc_.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lmem.c_luaM_realloc_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8* (i32, i8*, i64, i64)*, i64 }

@.str = private unnamed_addr constant [43 x i8] c"realloc cannot fail when shrinking a block\00", align 1
@LUA_ERRMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @luaM_realloc_(i32* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_3__* @G(i32* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i64 [ %17, %16 ], [ 0, %18 ]
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @lua_assert(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i8* (i32, i8*, i64, i64)*, i8* (i32, i8*, i64, i64)** %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i8* %32(i32 %35, i8* %36, i64 %37, i64 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %77

42:                                               ; preds = %19
  %43 = load i64, i64* %8, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ugt i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @api_check(i32* %46, i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %45
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @luaC_fullgc(i32* %57, i32 1)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i8* (i32, i8*, i64, i64)*, i8* (i32, i8*, i64, i64)** %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i8* %61(i32 %64, i8* %65, i64 %66, i64 %67)
  store i8* %68, i8** %9, align 8
  br label %69

69:                                               ; preds = %56, %45
  %70 = load i8*, i8** %9, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @LUA_ERRMEM, align 4
  %75 = call i32 @luaD_throw(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %69
  br label %77

77:                                               ; preds = %76, %42, %19
  %78 = load i64, i64* %8, align 8
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load i8*, i8** %9, align 8
  %82 = icmp eq i8* %81, null
  %83 = zext i1 %82 to i32
  %84 = icmp eq i32 %80, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @lua_assert(i32 %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* %11, align 8
  %93 = sub i64 %91, %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i8*, i8** %9, align 8
  ret i8* %96
}

declare dso_local %struct.TYPE_3__* @G(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @api_check(i32*, i32, i8*) #1

declare dso_local i32 @luaC_fullgc(i32*, i32) #1

declare dso_local i32 @luaD_throw(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
