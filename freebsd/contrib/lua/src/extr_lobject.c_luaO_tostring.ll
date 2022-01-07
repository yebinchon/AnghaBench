; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lobject.c_luaO_tostring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lobject.c_luaO_tostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXNUMBER2STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaO_tostring(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @MAXNUMBER2STR, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ttisnumber(i32 %12)
  %14 = call i32 @lua_assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @ttisinteger(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = trunc i64 %9 to i32
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ivalue(i32 %20)
  %22 = call i64 @lua_integer2str(i8* %11, i32 %19, i32 %21)
  store i64 %22, i64* %7, align 8
  br label %42

23:                                               ; preds = %2
  %24 = trunc i64 %9 to i32
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @fltvalue(i32 %25)
  %27 = call i64 @lua_number2str(i8* %11, i32 %24, i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = call i64 @strspn(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %29 = getelementptr inbounds i8, i8* %11, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = call signext i8 (...) @lua_getlocaledecpoint()
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %11, i64 %35
  store i8 %34, i8* %37, align 1
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %11, i64 %38
  store i8 48, i8* %40, align 1
  br label %41

41:                                               ; preds = %33, %23
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @luaS_newlstr(i32* %45, i8* %11, i64 %46)
  %48 = call i32 @setsvalue2s(i32* %43, i32 %44, i32 %47)
  %49 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lua_assert(i32) #2

declare dso_local i32 @ttisnumber(i32) #2

declare dso_local i64 @ttisinteger(i32) #2

declare dso_local i64 @lua_integer2str(i8*, i32, i32) #2

declare dso_local i32 @ivalue(i32) #2

declare dso_local i64 @lua_number2str(i8*, i32, i32) #2

declare dso_local i32 @fltvalue(i32) #2

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local signext i8 @lua_getlocaledecpoint(...) #2

declare dso_local i32 @setsvalue2s(i32*, i32, i32) #2

declare dso_local i32 @luaS_newlstr(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
