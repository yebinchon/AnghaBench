; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_devinfo.c_null_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_devinfo.c_null_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ibv_gid = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ibv_gid*)* @null_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_gid(%union.ibv_gid* %0) #0 {
  %2 = alloca %union.ibv_gid*, align 8
  store %union.ibv_gid* %0, %union.ibv_gid** %2, align 8
  %3 = load %union.ibv_gid*, %union.ibv_gid** %2, align 8
  %4 = bitcast %union.ibv_gid* %3 to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 8
  %7 = load i32, i32* %6, align 4
  %8 = load %union.ibv_gid*, %union.ibv_gid** %2, align 8
  %9 = bitcast %union.ibv_gid* %8 to i32**
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 9
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %7, %12
  %14 = load %union.ibv_gid*, %union.ibv_gid** %2, align 8
  %15 = bitcast %union.ibv_gid* %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 10
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %13, %18
  %20 = load %union.ibv_gid*, %union.ibv_gid** %2, align 8
  %21 = bitcast %union.ibv_gid* %20 to i32**
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 11
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %19, %24
  %26 = load %union.ibv_gid*, %union.ibv_gid** %2, align 8
  %27 = bitcast %union.ibv_gid* %26 to i32**
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 12
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %25, %30
  %32 = load %union.ibv_gid*, %union.ibv_gid** %2, align 8
  %33 = bitcast %union.ibv_gid* %32 to i32**
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 13
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %31, %36
  %38 = load %union.ibv_gid*, %union.ibv_gid** %2, align 8
  %39 = bitcast %union.ibv_gid* %38 to i32**
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 14
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %37, %42
  %44 = load %union.ibv_gid*, %union.ibv_gid** %2, align 8
  %45 = bitcast %union.ibv_gid* %44 to i32**
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 15
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %43, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
