; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lvm.c_luaV_gettable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lvm.c_luaV_gettable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAXTAGLOOP = common dso_local global i32 0, align 4
@TM_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"loop in gettable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_gettable(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %69, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MAXTAGLOOP, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @ttistable(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_4__* @hvalue(i32* %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %11, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @luaH_get(%struct.TYPE_4__* %24, i32* %25)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i64 @ttisnil(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TM_INDEX, align 4
  %36 = call i32* @fasttm(i32* %31, i32 %34, i32 %35)
  store i32* %36, i32** %10, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %30, %21
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @setobj2s(i32* %39, i32 %40, i32* %41)
  br label %75

43:                                               ; preds = %30
  br label %56

44:                                               ; preds = %17
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @TM_INDEX, align 4
  %48 = call i32* @luaT_gettmbyobj(i32* %45, i32* %46, i32 %47)
  store i32* %48, i32** %10, align 8
  %49 = call i64 @ttisnil(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @luaG_typeerror(i32* %52, i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %44
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32*, i32** %10, align 8
  %58 = call i64 @ttisfunction(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @callTM(i32* %61, i32* %62, i32* %63, i32* %64, i32 %65, i32 1)
  br label %75

67:                                               ; preds = %56
  %68 = load i32*, i32** %10, align 8
  store i32* %68, i32** %6, align 8
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %13

72:                                               ; preds = %13
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @luaG_runerror(i32* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %60, %38
  ret void
}

declare dso_local i64 @ttistable(i32*) #1

declare dso_local %struct.TYPE_4__* @hvalue(i32*) #1

declare dso_local i32* @luaH_get(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @fasttm(i32*, i32, i32) #1

declare dso_local i32 @setobj2s(i32*, i32, i32*) #1

declare dso_local i32* @luaT_gettmbyobj(i32*, i32*, i32) #1

declare dso_local i32 @luaG_typeerror(i32*, i32*, i8*) #1

declare dso_local i64 @ttisfunction(i32*) #1

declare dso_local i32 @callTM(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @luaG_runerror(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
