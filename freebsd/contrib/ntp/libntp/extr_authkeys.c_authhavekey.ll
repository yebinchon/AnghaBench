; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_authhavekey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_authhavekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i32, i32, i32 }

@authkeylookups = common dso_local global i32 0, align 4
@cache_keyid = common dso_local global i64 0, align 8
@KEY_TRUSTED = common dso_local global i32 0, align 4
@cache_flags = common dso_local global i32 0, align 4
@authkeyuncached = common dso_local global i32 0, align 4
@authkeynotfound = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@authnokey = common dso_local global i32 0, align 4
@cache_type = common dso_local global i64 0, align 8
@cache_secret = common dso_local global i32 0, align 4
@cache_secretsize = common dso_local global i32 0, align 4
@cache_keyacclist = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @authhavekey(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @authkeylookups, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @authkeylookups, align 4
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 0, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @cache_keyid, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @KEY_TRUSTED, align 4
  %15 = load i32, i32* @cache_flags, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %68

21:                                               ; preds = %9
  %22 = load i32, i32* @authkeyuncached, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @authkeyuncached, align 4
  %24 = load i64, i64* %3, align 8
  %25 = call %struct.TYPE_3__* @auth_findkey(i64 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = icmp eq %struct.TYPE_3__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %21
  %34 = load i32, i32* @authkeynotfound, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @authkeynotfound, align 4
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %68

37:                                               ; preds = %28
  %38 = load i32, i32* @KEY_TRUSTED, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @authnokey, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @authnokey, align 4
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %37
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* @cache_keyid, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* @cache_type, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* @cache_flags, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* @cache_secret, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* @cache_secretsize, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* @cache_keyacclist, align 4
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %48, %44, %33, %13
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_3__* @auth_findkey(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
