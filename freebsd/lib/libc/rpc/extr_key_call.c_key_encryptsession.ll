; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_key_call.c_key_encryptsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_key_call.c_key_encryptsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@KEY_ENCRYPT = common dso_local global i64 0, align 8
@xdr_cryptkeyarg = common dso_local global i64 0, align 8
@xdr_cryptkeyres = common dso_local global i64 0, align 8
@KEY_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"encrypt status is nonzero\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_encryptsession(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load i64, i64* @KEY_ENCRYPT, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i64, i64* @xdr_cryptkeyarg, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* @xdr_cryptkeyres, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @key_call(i32 %14, i32 %16, %struct.TYPE_8__* %6, i32 %18, %struct.TYPE_7__* %7)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %34

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @KEY_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %27, %21
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @key_call(i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
