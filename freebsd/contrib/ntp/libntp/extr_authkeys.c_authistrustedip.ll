; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_authistrustedip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_authistrustedip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@cache_keyid = common dso_local global i64 0, align 8
@KEY_TRUSTED = common dso_local global i32 0, align 4
@cache_flags = common dso_local global i32 0, align 4
@cache_keyacclist = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@authkeyuncached = common dso_local global i32 0, align 4
@authkeynotfound = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @authistrustedip(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @cache_keyid, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32, i32* @KEY_TRUSTED, align 4
  %12 = load i32, i32* @cache_flags, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @cache_keyacclist, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i64 @keyacc_contains(i32 %16, i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi i1 [ false, %10 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = call %struct.TYPE_3__* @auth_findkey(i64 %25)
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %6, align 8
  %27 = icmp ne %struct.TYPE_3__* null, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32, i32* @authkeyuncached, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @authkeyuncached, align 4
  %31 = load i32, i32* @KEY_TRUSTED, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i64 @keyacc_contains(i32 %40, i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %37, %28
  %46 = phi i1 [ false, %28 ], [ %44, %37 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %52

48:                                               ; preds = %24
  %49 = load i32, i32* @authkeynotfound, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @authkeynotfound, align 4
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %45, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @keyacc_contains(i32, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @auth_findkey(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
