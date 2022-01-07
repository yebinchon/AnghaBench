; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_bio_destroy_pair.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_bio_destroy_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.bio_bio_st* }
%struct.bio_bio_st = type { i64, i64, i32*, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @bio_destroy_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_destroy_pair(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.bio_bio_st*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.bio_bio_st*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  store %struct.bio_bio_st* %8, %struct.bio_bio_st** %3, align 8
  %9 = load %struct.bio_bio_st*, %struct.bio_bio_st** %3, align 8
  %10 = icmp ne %struct.bio_bio_st* %9, null
  br i1 %10, label %11, label %61

11:                                               ; preds = %1
  %12 = load %struct.bio_bio_st*, %struct.bio_bio_st** %3, align 8
  %13 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %60

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.bio_bio_st*, %struct.bio_bio_st** %19, align 8
  store %struct.bio_bio_st* %20, %struct.bio_bio_st** %5, align 8
  %21 = load %struct.bio_bio_st*, %struct.bio_bio_st** %5, align 8
  %22 = icmp ne %struct.bio_bio_st* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.bio_bio_st*, %struct.bio_bio_st** %5, align 8
  %26 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = icmp eq %struct.TYPE_3__* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.bio_bio_st*, %struct.bio_bio_st** %5, align 8
  %33 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %32, i32 0, i32 3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.bio_bio_st*, %struct.bio_bio_st** %5, align 8
  %37 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.bio_bio_st*, %struct.bio_bio_st** %5, align 8
  %43 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.bio_bio_st*, %struct.bio_bio_st** %5, align 8
  %45 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.bio_bio_st*, %struct.bio_bio_st** %3, align 8
  %47 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %46, i32 0, i32 3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.bio_bio_st*, %struct.bio_bio_st** %3, align 8
  %51 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.bio_bio_st*, %struct.bio_bio_st** %3, align 8
  %57 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.bio_bio_st*, %struct.bio_bio_st** %3, align 8
  %59 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %17, %11
  br label %61

61:                                               ; preds = %60, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
