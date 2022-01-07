; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_authistrusted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_authistrusted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cache_keyid = common dso_local global i64 0, align 8
@KEY_TRUSTED = common dso_local global i32 0, align 4
@cache_flags = common dso_local global i32 0, align 4
@authkeyuncached = common dso_local global i32 0, align 4
@authkeynotfound = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @authistrusted(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @cache_keyid, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* @KEY_TRUSTED, align 4
  %10 = load i32, i32* @cache_flags, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load i32, i32* @authkeyuncached, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @authkeyuncached, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call %struct.TYPE_3__* @auth_findkey(i64 %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = icmp eq %struct.TYPE_3__* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @KEY_TRUSTED, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %16
  %31 = load i32, i32* @authkeynotfound, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @authkeynotfound, align 4
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %30, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_3__* @auth_findkey(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
