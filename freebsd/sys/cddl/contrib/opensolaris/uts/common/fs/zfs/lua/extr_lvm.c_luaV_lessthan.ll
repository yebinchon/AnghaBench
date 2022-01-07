; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lvm.c_luaV_lessthan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lvm.c_luaV_lessthan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TM_LT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaV_lessthan(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i64 @ttisnumber(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @ttisnumber(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @nvalue(i32* %18)
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @nvalue(i32* %20)
  %22 = call i32 @luai_numlt(i32* %17, i32 %19, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %55

23:                                               ; preds = %12, %3
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @ttisstring(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @ttisstring(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @rawtsvalue(i32* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @rawtsvalue(i32* %34)
  %36 = call i64 @l_strcmp(i32 %33, i32 %35)
  %37 = icmp slt i64 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %55

39:                                               ; preds = %27, %23
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @TM_LT, align 4
  %44 = call i32 @call_orderTM(i32* %40, i32* %41, i32* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @luaG_ordererror(i32* %47, i32* %48, i32* %49)
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %31, %16
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @ttisnumber(i32*) #1

declare dso_local i32 @luai_numlt(i32*, i32, i32) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i64 @ttisstring(i32*) #1

declare dso_local i64 @l_strcmp(i32, i32) #1

declare dso_local i32 @rawtsvalue(i32*) #1

declare dso_local i32 @call_orderTM(i32*, i32*, i32*, i32) #1

declare dso_local i32 @luaG_ordererror(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
