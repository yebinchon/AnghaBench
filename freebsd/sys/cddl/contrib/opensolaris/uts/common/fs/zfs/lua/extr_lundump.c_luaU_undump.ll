; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lundump.c_luaU_undump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lundump.c_luaU_undump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i8*, i32*, i32*, %struct.TYPE_21__* }

@LUA_SIGNATURE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"binary string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @luaU_undump(%struct.TYPE_21__* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_23__, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 64
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 61
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %4
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  br label %40

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8*, i8** @LUA_SIGNATURE, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  br label %39

36:                                               ; preds = %25
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %36, %34
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 3
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 2
  store i32* %43, i32** %44, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 1
  store i32* %45, i32** %46, align 8
  %47 = call i32 @LoadHeader(%struct.TYPE_23__* %9)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = call %struct.TYPE_24__* @luaF_newLclosure(%struct.TYPE_21__* %48, i32 1)
  store %struct.TYPE_24__* %49, %struct.TYPE_24__** %10, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %55 = call i32 @setclLvalue(%struct.TYPE_21__* %50, i64 %53, %struct.TYPE_24__* %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %57 = call i32 @incr_top(%struct.TYPE_21__* %56)
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = call %struct.TYPE_22__* @luaF_newproto(%struct.TYPE_21__* %58)
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %62, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  %67 = call i32 @LoadFunction(%struct.TYPE_23__* %9, %struct.TYPE_22__* %66)
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %99

75:                                               ; preds = %40
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %78, align 8
  store %struct.TYPE_22__* %79, %struct.TYPE_22__** %11, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.TYPE_24__* @luaF_newLclosure(%struct.TYPE_21__* %80, i32 %86)
  store %struct.TYPE_24__* %87, %struct.TYPE_24__** %10, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  store %struct.TYPE_22__* %88, %struct.TYPE_22__** %91, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, 1
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %98 = call i32 @setclLvalue(%struct.TYPE_21__* %92, i64 %96, %struct.TYPE_24__* %97)
  br label %99

99:                                               ; preds = %75, %40
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %104, align 8
  %106 = call i32 @luai_verifycode(%struct.TYPE_21__* %100, i32* %101, %struct.TYPE_22__* %105)
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  ret %struct.TYPE_24__* %107
}

declare dso_local i32 @LoadHeader(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @luaF_newLclosure(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @setclLvalue(%struct.TYPE_21__*, i64, %struct.TYPE_24__*) #1

declare dso_local i32 @incr_top(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @luaF_newproto(%struct.TYPE_21__*) #1

declare dso_local i32 @LoadFunction(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @luai_verifycode(%struct.TYPE_21__*, i32*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
