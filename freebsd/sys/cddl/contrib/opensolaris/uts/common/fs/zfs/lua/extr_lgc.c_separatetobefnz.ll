; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lgc.c_separatetobefnz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lgc.c_separatetobefnz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32*, i32 }

@SEPARATED = common dso_local global i32 0, align 4
@FINALIZEDBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @separatetobefnz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @separatetobefnz(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_4__* @G(i32* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32** %12, i32*** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32** %14, i32*** %8, align 8
  br label %15

15:                                               ; preds = %19, %2
  %16 = load i32**, i32*** %8, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32**, i32*** %8, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = call %struct.TYPE_5__* @gch(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32** %23, i32*** %8, align 8
  br label %15

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %75, %24
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %76

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @isfinalized(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @lua_assert(i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call %struct.TYPE_5__* @gch(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SEPARATED, align 4
  %41 = call i32 @testbit(i32 %39, i32 %40)
  %42 = call i32 @lua_assert(i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @iswhite(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  %51 = call %struct.TYPE_5__* @gch(i32* %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32** %52, i32*** %6, align 8
  br label %75

53:                                               ; preds = %46, %29
  %54 = load i32*, i32** %7, align 8
  %55 = call %struct.TYPE_5__* @gch(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FINALIZEDBIT, align 4
  %59 = call i32 @l_setbit(i32 %57, i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call %struct.TYPE_5__* @gch(i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32**, i32*** %6, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32**, i32*** %8, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call %struct.TYPE_5__* @gch(i32* %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32* %66, i32** %69, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32**, i32*** %8, align 8
  store i32* %70, i32** %71, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call %struct.TYPE_5__* @gch(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32** %74, i32*** %8, align 8
  br label %75

75:                                               ; preds = %53, %49
  br label %25

76:                                               ; preds = %25
  ret void
}

declare dso_local %struct.TYPE_4__* @G(i32*) #1

declare dso_local %struct.TYPE_5__* @gch(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isfinalized(i32*) #1

declare dso_local i32 @testbit(i32, i32) #1

declare dso_local i64 @iswhite(i32*) #1

declare dso_local i32 @l_setbit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
