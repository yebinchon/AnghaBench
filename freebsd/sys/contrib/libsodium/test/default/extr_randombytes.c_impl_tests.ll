; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_randombytes.c_impl_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_randombytes.c_impl_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }

@randombytes_sysrandom_implementation = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@randombytes_uniform_impl = common dso_local global i32 0, align 4
@randombytes_nativeclient_implementation = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @impl_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @impl_tests() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32, align 4
  %3 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_5__* @randombytes_sysrandom_implementation to i8*), i64 16, i1 false)
  %4 = call i32 (...) @randombytes_random()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @randombytes_uniform_impl, align 4
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i32 %5, i32* %6, align 8
  %7 = call i32 (...) @randombytes_close()
  %8 = call i32 @randombytes_set_implementation(%struct.TYPE_5__* %1)
  %9 = call i32 @randombytes_uniform(i32 1)
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @randombytes_uniform(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @randombytes_uniform(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @randombytes_uniform(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @randombytes_uniform(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = call i32 (...) @randombytes_close()
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = call i32 (...) @randombytes_close()
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @randombytes_random(...) #2

declare dso_local i32 @randombytes_close(...) #2

declare dso_local i32 @randombytes_set_implementation(%struct.TYPE_5__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @randombytes_uniform(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
