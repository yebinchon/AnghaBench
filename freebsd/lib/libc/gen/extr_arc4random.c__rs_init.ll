; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_arc4random.c__rs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_arc4random.c__rs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@KEYSZ = common dso_local global i64 0, align 8
@IVSZ = common dso_local global i64 0, align 8
@rs = common dso_local global i32* null, align 8
@rsx = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @_rs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rs_init(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @KEYSZ, align 8
  %7 = load i64, i64* @IVSZ, align 8
  %8 = add i64 %6, %7
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = load i32*, i32** @rs, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = call i32 @_rs_allocate(i32** @rs, %struct.TYPE_3__** @rsx)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @abort() #3
  unreachable

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %11
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rsx, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* @KEYSZ, align 8
  %25 = mul i64 %24, 8
  %26 = call i32 @chacha_keysetup(i32* %22, i32* %23, i64 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rsx, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* @KEYSZ, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32 @chacha_ivsetup(i32* %28, i32* %31, i32* null)
  br label %33

33:                                               ; preds = %20, %10
  ret void
}

declare dso_local i32 @_rs_allocate(i32**, %struct.TYPE_3__**) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @chacha_keysetup(i32*, i32*, i64) #1

declare dso_local i32 @chacha_ivsetup(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
