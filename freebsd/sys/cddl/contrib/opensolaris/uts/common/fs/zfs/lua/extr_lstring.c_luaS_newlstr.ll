; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstring.c_luaS_newlstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstring.c_luaS_newlstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@LUAI_MAXSHORTLEN = common dso_local global i64 0, align 8
@MAX_SIZET = common dso_local global i32 0, align 4
@LUA_TLNGSTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaS_newlstr(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LUAI_MAXSHORTLEN, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32* @internshrstr(i32* %12, i8* %13, i64 %14)
  store i32* %15, i32** %4, align 8
  br label %37

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, 1
  %19 = load i32, i32* @MAX_SIZET, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = udiv i64 %21, 1
  %23 = icmp ugt i64 %18, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @luaM_toobig(i32* %25)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @LUA_TLNGSTR, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call %struct.TYPE_2__* @G(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @createstrobj(i32* %28, i8* %29, i64 %30, i32 %31, i32 %35, i32* null)
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %27, %11
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

declare dso_local i32* @internshrstr(i32*, i8*, i64) #1

declare dso_local i32 @luaM_toobig(i32*) #1

declare dso_local i32* @createstrobj(i32*, i8*, i64, i32, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @G(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
