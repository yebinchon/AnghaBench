; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_arc4random.c__rs_stir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_arc4random.c__rs_stir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@KEYSZ = common dso_local global i32 0, align 4
@IVSZ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@rs = common dso_local global %struct.TYPE_4__* null, align 8
@rsx = common dso_local global %struct.TYPE_3__* null, align 8
@SIGKILL = common dso_local global i32 0, align 4
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
  br i1 %12, label %13, label %25

13:                                               ; preds = %0
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @ENOSYS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = mul nuw i64 4, %6
  %19 = trunc i64 %18 to i32
  %20 = call i32 @fallback_getentropy_urandom(i32* %8, i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %13
  %23 = call i32 @exit(i32 9) #4
  unreachable

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = mul nuw i64 4, %6
  %30 = trunc i64 %29 to i32
  %31 = call i32 @_rs_init(i32* %8, i32 %30)
  br label %36

32:                                               ; preds = %25
  %33 = mul nuw i64 4, %6
  %34 = trunc i64 %33 to i32
  %35 = call i32 @_rs_rekey(i32* %8, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = mul nuw i64 4, %6
  %38 = trunc i64 %37 to i32
  %39 = call i32 @explicit_bzero(i32* %8, i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rsx, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memset(i32 %44, i32 0, i32 4)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 1600000, i32* %47, align 8
  %48 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %48)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getentropy(i32*, i32) #2

declare dso_local i32 @fallback_getentropy_urandom(i32*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @_rs_init(i32*, i32) #2

declare dso_local i32 @_rs_rekey(i32*, i32) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
