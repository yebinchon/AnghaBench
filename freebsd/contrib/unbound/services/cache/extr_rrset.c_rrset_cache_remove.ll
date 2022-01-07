; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_cache = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, %struct.ub_packed_rrset_key* }
%struct.TYPE_4__ = type { i64, i32, i8*, i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrset_cache_remove(%struct.rrset_cache* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rrset_cache*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ub_packed_rrset_key, align 8
  store %struct.rrset_cache* %0, %struct.rrset_cache** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %13, %struct.ub_packed_rrset_key** %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i8* @htons(i32 %22)
  %24 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i8* @htons(i32 %26)
  %28 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 1
  %34 = call i32 @rrset_key_hash(%struct.TYPE_4__* %33)
  %35 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.rrset_cache*, %struct.rrset_cache** %7, align 8
  %38 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @slabhash_remove(i32* %38, i32 %41, %struct.ub_packed_rrset_key* %13)
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @rrset_key_hash(%struct.TYPE_4__*) #1

declare dso_local i32 @slabhash_remove(i32*, i32, %struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
