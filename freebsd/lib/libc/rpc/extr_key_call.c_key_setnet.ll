; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_key_call.c_key_setnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_key_call.c_key_setnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_netstarg = type { i32 }

@KEY_NET_PUT = common dso_local global i64 0, align 8
@xdr_key_netstarg = common dso_local global i64 0, align 8
@xdr_keystatus = common dso_local global i64 0, align 8
@KEY_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"key_setnet status is nonzero\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_setnet(%struct.key_netstarg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key_netstarg*, align 8
  %4 = alloca i64, align 8
  store %struct.key_netstarg* %0, %struct.key_netstarg** %3, align 8
  %5 = load i64, i64* @KEY_NET_PUT, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i64, i64* @xdr_key_netstarg, align 8
  %8 = trunc i64 %7 to i32
  %9 = load %struct.key_netstarg*, %struct.key_netstarg** %3, align 8
  %10 = load i64, i64* @xdr_keystatus, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @key_call(i32 %6, i32 %8, %struct.key_netstarg* %9, i32 %11, i64* %4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @KEY_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %22

21:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %19, %14
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @key_call(i32, i32, %struct.key_netstarg*, i32, i64*) #1

declare dso_local i32 @debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
