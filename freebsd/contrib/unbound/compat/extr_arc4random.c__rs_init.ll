; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_arc4random.c__rs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_arc4random.c__rs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@KEYSZ = common dso_local global i64 0, align 8
@IVSZ = common dso_local global i64 0, align 8
@rs = common dso_local global %struct.TYPE_7__* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.TYPE_7__* null, align 8
@rsx = common dso_local global %struct.TYPE_7__* null, align 8
@MAP_INHERIT_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @_rs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rs_init(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @assert(i32* %5)
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @KEYSZ, align 8
  %9 = load i64, i64* @IVSZ, align 8
  %10 = add i64 %8, %9
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rs, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* @PROT_READ, align 4
  %18 = load i32, i32* @PROT_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MAP_ANON, align 4
  %21 = load i32, i32* @MAP_PRIVATE, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.TYPE_7__* @mmap(i32* null, i32 4, i32 %19, i32 %22, i32 -1, i32 0)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** @rs, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MAP_FAILED, align 8
  %25 = icmp eq %struct.TYPE_7__* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 (...) @abort() #3
  unreachable

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %13
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsx, align 8
  %31 = icmp eq %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i32, i32* @PROT_READ, align 4
  %34 = load i32, i32* @PROT_WRITE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MAP_ANON, align 4
  %37 = load i32, i32* @MAP_PRIVATE, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.TYPE_7__* @mmap(i32* null, i32 4, i32 %35, i32 %38, i32 -1, i32 0)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** @rsx, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MAP_FAILED, align 8
  %41 = icmp eq %struct.TYPE_7__* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 (...) @abort() #3
  unreachable

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsx, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* @KEYSZ, align 8
  %50 = mul i64 %49, 8
  %51 = call i32 @chacha_keysetup(i32* %47, i32* %48, i64 %50, i32 0)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsx, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* @KEYSZ, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i32 @chacha_ivsetup(i32* %53, i32* %56)
  br label %58

58:                                               ; preds = %45, %12
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.TYPE_7__* @mmap(i32*, i32, i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @chacha_keysetup(i32*, i32*, i64, i32) #1

declare dso_local i32 @chacha_ivsetup(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
