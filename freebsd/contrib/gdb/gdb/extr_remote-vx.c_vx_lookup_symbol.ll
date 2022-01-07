; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_lookup_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_lookup_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@VX_SYMBOL_INQ = common dso_local global i32 0, align 4
@xdr_wrapstring = common dso_local global i32 0, align 4
@xdr_SYMBOL_ADDR = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Lost contact with VxWorks target\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @vx_lookup_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_lookup_symbol(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = bitcast %struct.TYPE_3__* %7 to i8*
  %10 = call i32 @memset(i8* %9, i8 signext 0, i32 8)
  %11 = load i32, i32* @VX_SYMBOL_INQ, align 4
  %12 = load i32, i32* @xdr_wrapstring, align 4
  %13 = load i32, i32* @xdr_SYMBOL_ADDR, align 4
  %14 = call i32 @net_clnt_call(i32 %11, i32 %12, i8** %4, i32 %13, %struct.TYPE_3__* %7)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RPC_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %26

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @net_clnt_call(i32, i32, i8**, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @complaint(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
