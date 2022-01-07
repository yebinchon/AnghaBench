; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_authcache_flush_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_authcache_flush_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cache_keyid = common dso_local global i64 0, align 8
@cache_type = common dso_local global i64 0, align 8
@cache_flags = common dso_local global i64 0, align 8
@cache_secret = common dso_local global i32* null, align 8
@cache_secretsize = common dso_local global i64 0, align 8
@cache_keyacclist = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @authcache_flush_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authcache_flush_id(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @cache_keyid, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i64 0, i64* @cache_keyid, align 8
  store i64 0, i64* @cache_type, align 8
  store i64 0, i64* @cache_flags, align 8
  store i32* null, i32** @cache_secret, align 8
  store i64 0, i64* @cache_secretsize, align 8
  store i32* null, i32** @cache_keyacclist, align 8
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
