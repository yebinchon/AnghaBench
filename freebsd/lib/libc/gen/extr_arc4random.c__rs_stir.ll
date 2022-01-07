; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_arc4random.c__rs_stir.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_arc4random.c__rs_stir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@KEYSZ = common dso_local global i32 0, align 4
@IVSZ = common dso_local global i32 0, align 4
@rs = common dso_local global %struct.TYPE_4__* null, align 8
@rsx = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_rs_stir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rs_stir() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @KEYSZ, align 4
  %4 = load i32, i32* @IVSZ, align 4
  %5 = add nsw i32 %3, %4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = mul nuw i64 4, %6
  %10 = trunc i64 %9 to i32
  %11 = call i32 @getentropy(i32* %8, i32 %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (...) @_getentropy_fail()
  br label %15

15:                                               ; preds = %13, %0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = mul nuw i64 4, %6
  %20 = trunc i64 %19 to i32
  %21 = call i32 @_rs_init(i32* %8, i32 %20)
  br label %26

22:                                               ; preds = %15
  %23 = mul nuw i64 4, %6
  %24 = trunc i64 %23 to i32
  %25 = call i32 @_rs_rekey(i32* %8, i32 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = mul nuw i64 4, %6
  %28 = trunc i64 %27 to i32
  %29 = call i32 @explicit_bzero(i32* %8, i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rsx, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memset(i32 %34, i32 0, i32 4)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 1600000, i32* %37, align 8
  %38 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %38)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getentropy(i32*, i32) #2

declare dso_local i32 @_getentropy_fail(...) #2

declare dso_local i32 @_rs_init(i32*, i32) #2

declare dso_local i32 @_rs_rekey(i32*, i32) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
