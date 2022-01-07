; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_net_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_net_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldfile = type { i64*, i32, i32, i32 }
%struct.timeval = type { i32, i64 }

@pClient = common dso_local global i32 0, align 4
@VX_LOAD = common dso_local global i32 0, align 4
@xdr_wrapstring = common dso_local global i32 0, align 4
@xdr_ldfile = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @net_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_load(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ldfile, align 8
  %12 = alloca %struct.timeval, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = bitcast %struct.ldfile* %11 to i8*
  %14 = call i32 @memset(i8* %13, i8 signext 0, i32 24)
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 99999999, i32* %15, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @pClient, align 4
  %18 = load i32, i32* @VX_LOAD, align 4
  %19 = load i32, i32* @xdr_wrapstring, align 4
  %20 = load i32, i32* @xdr_ldfile, align 4
  %21 = call i32 @clnt_call(i32 %17, i32 %18, i32 %19, i8** %6, i32 %20, %struct.ldfile* %11, %struct.timeval* byval(%struct.timeval) align 8 %12)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @RPC_SUCCESS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.ldfile, %struct.ldfile* %11, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %42

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ldfile, %struct.ldfile* %11, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.ldfile, %struct.ldfile* %11, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ldfile, %struct.ldfile* %11, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %42

41:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %31, %30
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @clnt_call(i32, i32, i32, i8**, i32, %struct.ldfile*, %struct.timeval* byval(%struct.timeval) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
