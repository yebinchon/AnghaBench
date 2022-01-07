; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_arc4random.c__rs_rekey.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_arc4random.c__rs_rekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@rsx = common dso_local global %struct.TYPE_3__* null, align 8
@KEYSZ = common dso_local global i32 0, align 4
@IVSZ = common dso_local global i32 0, align 4
@rs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @_rs_rekey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rs_rekey(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rsx, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @memset(i32* %9, i32 0, i32 8)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rsx, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rsx, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rsx, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @chacha_encrypt_bytes(i32* %12, i32* %15, i32* %18, i32 8)
  %20 = load i32*, i32** %3, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @KEYSZ, align 4
  %25 = load i32, i32* @IVSZ, align 4
  %26 = add nsw i32 %24, %25
  %27 = call i64 @minimum(i64 %23, i32 %26)
  store i64 %27, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %44, %22
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rsx, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, %36
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %28

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rsx, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @KEYSZ, align 4
  %53 = load i32, i32* @IVSZ, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @_rs_init(i32* %51, i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rsx, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @KEYSZ, align 4
  %60 = load i32, i32* @IVSZ, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @memset(i32* %58, i32 0, i32 %61)
  %63 = load i32, i32* @KEYSZ, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 8, %64
  %66 = load i32, i32* @IVSZ, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 %65, %67
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @chacha_encrypt_bytes(i32*, i32*, i32*, i32) #1

declare dso_local i64 @minimum(i64, i32) #1

declare dso_local i32 @_rs_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
