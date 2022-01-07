; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dologin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dologin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type opaque

@blk_cleanup = common dso_local global i32 0, align 4
@STRsavehist = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@parterm = common dso_local global i32 0, align 4
@_PATH_BIN_LOGIN = common dso_local global i32 0, align 4
@_PATH_USRBIN_LOGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dologin(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i8**, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %6 = load i32**, i32*** %3, align 8
  %7 = call i8** @short2blk(i32** %6)
  store i8** %7, i8*** %5, align 8
  %8 = load %struct.command*, %struct.command** %4, align 8
  %9 = bitcast %struct.command* %8 to i32**
  %10 = call i32 @USE(i32** %9)
  %11 = load i8**, i8*** %5, align 8
  %12 = bitcast i8** %11 to i32**
  %13 = load i32, i32* @blk_cleanup, align 4
  %14 = call i32 @cleanup_push(i32** %12, i32 %13)
  %15 = call i32 (...) @islogin()
  %16 = load i32, i32* @STRsavehist, align 4
  %17 = call i32* @adrof(i32 %16)
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @rechist(i32* null, i32 %19)
  %21 = load i32, i32* @SIGTERM, align 4
  %22 = call i32 @sigaction(i32 %21, i32* @parterm, i32* null)
  %23 = load i32, i32* @_PATH_BIN_LOGIN, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @execv(i32 %23, i8** %24)
  %26 = load i32, i32* @_PATH_USRBIN_LOGIN, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @execv(i32 %26, i8** %27)
  %29 = load i8**, i8*** %5, align 8
  %30 = bitcast i8** %29 to i32**
  %31 = call i32 @cleanup_until(i32** %30)
  %32 = call i32 (...) @untty()
  %33 = call i32 @xexit(i32 1)
  ret void
}

declare dso_local i8** @short2blk(i32**) #1

declare dso_local i32 @USE(i32**) #1

declare dso_local i32 @cleanup_push(i32**, i32) #1

declare dso_local i32 @islogin(...) #1

declare dso_local i32 @rechist(i32*, i32) #1

declare dso_local i32* @adrof(i32) #1

declare dso_local i32 @sigaction(i32, i32*, i32*) #1

declare dso_local i32 @execv(i32, i8**) #1

declare dso_local i32 @cleanup_until(i32**) #1

declare dso_local i32 @untty(...) #1

declare dso_local i32 @xexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
