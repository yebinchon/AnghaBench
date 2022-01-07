; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_key_call.c_key_get_conv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_key_call.c_key_get_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KEY_GET_CONV = common dso_local global i64 0, align 8
@xdr_keybuf = common dso_local global i64 0, align 8
@xdr_cryptkeyres = common dso_local global i64 0, align 8
@KEY_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"get_conv status is nonzero\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_get_conv(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i64, i64* @KEY_GET_CONV, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i64, i64* @xdr_keybuf, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* @xdr_cryptkeyres, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @key_call(i32 %8, i32 %10, i8* %11, i32 %13, %struct.TYPE_5__* %6)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KEY_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %22, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @key_call(i32, i32, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
