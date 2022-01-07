; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_hash_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_hash_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @awg_hash_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_hash_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %14 = call i32 @LLADDR(%struct.sockaddr_dl* %13)
  %15 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %16 = call i32 @ether_crc32_le(i32 %14, i32 %15)
  %17 = and i32 %16, 127
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = xor i32 %18, -1
  %20 = call i32 @bitrev32(i32 %19)
  %21 = ashr i32 %20, 26
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 5
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 31
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 1, %26
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  ret i32 1
}

declare dso_local i32 @ether_crc32_le(i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @bitrev32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
