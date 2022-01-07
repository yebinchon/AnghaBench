; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstrlib.c_str_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstrlib.c_str_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_byte(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 1, i64* %4)
  store i8* %11, i8** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_optinteger(i32* %12, i32 2, i64 1)
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @posrelat(i32 %13, i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @luaL_optinteger(i32* %16, i32 3, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @posrelat(i32 %18, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i64 1, i64* %6, align 8
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %75

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %36, %37
  %39 = add i64 %38, 1
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %41, %43
  %45 = load i64, i64* %7, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @luaL_error(i32* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %49, i32* %2, align 4
  br label %75

50:                                               ; preds = %35
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @luaL_checkstack(i32* %51, i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %70, %50
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %61, %63
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds i8, i8* %60, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @uchar(i8 signext %67)
  %69 = call i32 @lua_pushinteger(i32* %59, i32 %68)
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %54

73:                                               ; preds = %54
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %47, %34
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i64) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @uchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
