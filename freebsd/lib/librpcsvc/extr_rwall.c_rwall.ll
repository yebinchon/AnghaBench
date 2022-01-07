; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_rwall.c_rwall.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_rwall.c_rwall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WALLPROG = common dso_local global i32 0, align 4
@WALLVERS = common dso_local global i32 0, align 4
@WALLPROC_WALL = common dso_local global i32 0, align 4
@xdr_wrapstring = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rwall(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @WALLPROG, align 4
  %7 = load i32, i32* @WALLVERS, align 4
  %8 = load i32, i32* @WALLPROC_WALL, align 4
  %9 = load i64, i64* @xdr_wrapstring, align 8
  %10 = trunc i64 %9 to i32
  %11 = bitcast i8** %4 to i8*
  %12 = load i64, i64* @xdr_void, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @callrpc(i8* %5, i32 %6, i32 %7, i32 %8, i32 %10, i8* %11, i32 %13, i8* null)
  ret i32 %14
}

declare dso_local i32 @callrpc(i8*, i32, i32, i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
