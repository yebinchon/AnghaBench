; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_liolib.c_f_setvbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_liolib.c_f_setvbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_setvbuf.mode = internal constant [3 x i32] [i32 128, i32 130, i32 129], align 4
@f_setvbuf.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@LUAL_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @f_setvbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_setvbuf(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @tofile(i32* %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @luaL_checkoption(i32* %9, i32 2, i32* null, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_setvbuf.modenames, i64 0, i64 0))
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @LUAL_BUFFERSIZE, align 4
  %13 = call i64 @luaL_optinteger(i32* %11, i32 3, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* @f_setvbuf.mode, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @setvbuf(i32* %14, i32* null, i32 %18, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @luaL_fileresult(i32* %21, i32 %24, i32* null)
  ret i32 %25
}

declare dso_local i32* @tofile(i32*) #1

declare dso_local i32 @luaL_checkoption(i32*, i32, i32*, i8**) #1

declare dso_local i64 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i64) #1

declare dso_local i32 @luaL_fileresult(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
