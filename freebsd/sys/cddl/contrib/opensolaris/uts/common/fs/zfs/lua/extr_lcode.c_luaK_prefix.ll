; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lcode.c_luaK_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lcode.c_luaK_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@NO_JUMP = common dso_local global i32 0, align 4
@VKNUM = common dso_local global i32 0, align 4
@OP_UNM = common dso_local global i32 0, align 4
@OP_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_prefix(i32* %0, i32 %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @NO_JUMP, align 4
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @VKNUM, align 4
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %54 [
    i32 129, label %18
    i32 128, label %41
    i32 130, label %45
  ]

18:                                               ; preds = %4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = call i32 @isnumeral(%struct.TYPE_10__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @luai_numunm(i32* null, i64 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  br label %40

31:                                               ; preds = %18
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = call i32 @luaK_exp2anyreg(i32* %32, %struct.TYPE_10__* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @OP_UNM, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @codearith(i32* %35, i32 %36, %struct.TYPE_10__* %37, %struct.TYPE_10__* %9, i32 %38)
  br label %40

40:                                               ; preds = %31, %22
  br label %56

41:                                               ; preds = %4
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = call i32 @codenot(i32* %42, %struct.TYPE_10__* %43)
  br label %56

45:                                               ; preds = %4
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = call i32 @luaK_exp2anyreg(i32* %46, %struct.TYPE_10__* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @OP_LEN, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @codearith(i32* %49, i32 %50, %struct.TYPE_10__* %51, %struct.TYPE_10__* %9, i32 %52)
  br label %56

54:                                               ; preds = %4
  %55 = call i32 @lua_assert(i32 0)
  br label %56

56:                                               ; preds = %54, %45, %41, %40
  ret void
}

declare dso_local i32 @isnumeral(%struct.TYPE_10__*) #1

declare dso_local i64 @luai_numunm(i32*, i64) #1

declare dso_local i32 @luaK_exp2anyreg(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @codearith(i32*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @codenot(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
