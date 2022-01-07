; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip.c_ip_finddst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip.c_ip_finddst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32 }

@IPOPT_EOL = common dso_local global i32 0, align 4
@IPOPT_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ip*)* @ip_finddst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_finddst(i32* %0, %struct.ip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.ip* %1, %struct.ip** %5, align 8
  %11 = load %struct.ip*, %struct.ip** %5, align 8
  %12 = getelementptr inbounds %struct.ip, %struct.ip* %11, i64 1
  %13 = bitcast %struct.ip* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load %struct.ip*, %struct.ip** %5, align 8
  %15 = call i32 @IP_HL(%struct.ip* %14)
  %16 = shl i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %70, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %78

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ND_TCHECK(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @IPOPT_EOL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %78

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @IPOPT_NOP, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %50

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ND_TCHECK(i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %78

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ND_TCHECK2(i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  switch i32 %56, label %69 [
    i32 128, label %57
    i32 129, label %57
  ]

57:                                               ; preds = %51, %51
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 7
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %69

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = getelementptr inbounds i32, i32* %65, i64 -4
  %67 = call i32 @UNALIGNED_MEMCPY(i32* %9, i32* %66, i32 4)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %84

69:                                               ; preds = %51, %60
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %20

78:                                               ; preds = %48, %32, %20
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.ip*, %struct.ip** %5, align 8
  %81 = getelementptr inbounds %struct.ip, %struct.ip* %80, i32 0, i32 0
  %82 = call i32 @UNALIGNED_MEMCPY(i32* %9, i32* %81, i32 4)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %61
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @IP_HL(%struct.ip*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @UNALIGNED_MEMCPY(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
