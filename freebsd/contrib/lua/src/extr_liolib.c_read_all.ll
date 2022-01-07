; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_liolib.c_read_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_liolib.c_read_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUAL_BUFFERSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @read_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_all(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @luaL_buffinit(i32* %8, i32* %6)
  br label %10

10:                                               ; preds = %18, %2
  %11 = call i8* @luaL_prepbuffer(i32* %6)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i64, i64* @LUAL_BUFFERSIZE, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @fread(i8* %12, i32 1, i64 %13, i32* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @luaL_addsize(i32* %6, i64 %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @LUAL_BUFFERSIZE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %10, label %22

22:                                               ; preds = %18
  %23 = call i32 @luaL_pushresult(i32* %6)
  ret void
}

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i8* @luaL_prepbuffer(i32*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @luaL_addsize(i32*, i64) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
