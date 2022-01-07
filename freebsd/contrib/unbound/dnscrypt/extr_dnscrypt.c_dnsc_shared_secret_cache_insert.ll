; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_shared_secret_cache_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_shared_secret_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabhash = type { i32 }
%struct.shared_secret_cache_key = type { %struct.TYPE_2__, %struct.shared_secret_cache_key* }
%struct.TYPE_2__ = type { %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key*, i32, i32 }

@DNSCRYPT_SHARED_SECRET_KEY_LENGTH = common dso_local global i32 0, align 4
@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slabhash*, %struct.shared_secret_cache_key*, i32, %struct.shared_secret_cache_key*)* @dnsc_shared_secret_cache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnsc_shared_secret_cache_insert(%struct.slabhash* %0, %struct.shared_secret_cache_key* %1, i32 %2, %struct.shared_secret_cache_key* %3) #0 {
  %5 = alloca %struct.slabhash*, align 8
  %6 = alloca %struct.shared_secret_cache_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.shared_secret_cache_key*, align 8
  %9 = alloca %struct.shared_secret_cache_key*, align 8
  %10 = alloca %struct.shared_secret_cache_key*, align 8
  store %struct.slabhash* %0, %struct.slabhash** %5, align 8
  store %struct.shared_secret_cache_key* %1, %struct.shared_secret_cache_key** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.shared_secret_cache_key* %3, %struct.shared_secret_cache_key** %8, align 8
  %11 = load i32, i32* @DNSCRYPT_SHARED_SECRET_KEY_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %14 = zext i32 %13 to i64
  %15 = call i64 @calloc(i32 1, i32 32)
  %16 = inttoptr i64 %15 to %struct.shared_secret_cache_key*
  store %struct.shared_secret_cache_key* %16, %struct.shared_secret_cache_key** %9, align 8
  %17 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %18 = call %struct.shared_secret_cache_key* @malloc(i32 %17)
  store %struct.shared_secret_cache_key* %18, %struct.shared_secret_cache_key** %10, align 8
  %19 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %9, align 8
  %20 = icmp ne %struct.shared_secret_cache_key* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %10, align 8
  %23 = icmp ne %struct.shared_secret_cache_key* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %9, align 8
  %26 = call i32 @free(%struct.shared_secret_cache_key* %25)
  %27 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %10, align 8
  %28 = call i32 @free(%struct.shared_secret_cache_key* %27)
  br label %62

29:                                               ; preds = %21
  %30 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %10, align 8
  %31 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %8, align 8
  %32 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %33 = call i32 @memcpy(%struct.shared_secret_cache_key* %30, %struct.shared_secret_cache_key* %31, i32 %32)
  %34 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %9, align 8
  %35 = getelementptr inbounds %struct.shared_secret_cache_key, %struct.shared_secret_cache_key* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = call i32 @lock_rw_init(i32* %36)
  %38 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %9, align 8
  %39 = getelementptr inbounds %struct.shared_secret_cache_key, %struct.shared_secret_cache_key* %38, i32 0, i32 1
  %40 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %39, align 8
  %41 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %6, align 8
  %42 = load i32, i32* @DNSCRYPT_SHARED_SECRET_KEY_LENGTH, align 4
  %43 = call i32 @memcpy(%struct.shared_secret_cache_key* %40, %struct.shared_secret_cache_key* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %9, align 8
  %46 = getelementptr inbounds %struct.shared_secret_cache_key, %struct.shared_secret_cache_key* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %9, align 8
  %49 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %9, align 8
  %50 = getelementptr inbounds %struct.shared_secret_cache_key, %struct.shared_secret_cache_key* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store %struct.shared_secret_cache_key* %48, %struct.shared_secret_cache_key** %51, align 8
  %52 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %10, align 8
  %53 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %9, align 8
  %54 = getelementptr inbounds %struct.shared_secret_cache_key, %struct.shared_secret_cache_key* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.shared_secret_cache_key* %52, %struct.shared_secret_cache_key** %55, align 8
  %56 = load %struct.slabhash*, %struct.slabhash** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %9, align 8
  %59 = getelementptr inbounds %struct.shared_secret_cache_key, %struct.shared_secret_cache_key* %58, i32 0, i32 0
  %60 = load %struct.shared_secret_cache_key*, %struct.shared_secret_cache_key** %10, align 8
  %61 = call i32 @slabhash_insert(%struct.slabhash* %56, i32 %57, %struct.TYPE_2__* %59, %struct.shared_secret_cache_key* %60, i32* null)
  br label %62

62:                                               ; preds = %29, %24
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local %struct.shared_secret_cache_key* @malloc(i32) #1

declare dso_local i32 @free(%struct.shared_secret_cache_key*) #1

declare dso_local i32 @memcpy(%struct.shared_secret_cache_key*, %struct.shared_secret_cache_key*, i32) #1

declare dso_local i32 @lock_rw_init(i32*) #1

declare dso_local i32 @slabhash_insert(%struct.slabhash*, i32, %struct.TYPE_2__*, %struct.shared_secret_cache_key*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
