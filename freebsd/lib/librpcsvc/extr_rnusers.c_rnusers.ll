; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_rnusers.c_rnusers.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_rnusers.c_rnusers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RUSERSPROG = common dso_local global i32 0, align 4
@RUSERSVERS_ORIG = common dso_local global i32 0, align 4
@RUSERSPROC_NUM = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_u_long = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rnusers(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @RUSERSPROG, align 4
  %7 = load i32, i32* @RUSERSVERS_ORIG, align 4
  %8 = load i32, i32* @RUSERSPROC_NUM, align 4
  %9 = load i64, i64* @xdr_void, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i64, i64* @xdr_u_long, align 8
  %12 = trunc i64 %11 to i32
  %13 = bitcast i32* %4 to i8*
  %14 = call i64 @callrpc(i8* %5, i32 %6, i32 %7, i32 %8, i32 %10, i8* null, i32 %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @callrpc(i8*, i32, i32, i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
