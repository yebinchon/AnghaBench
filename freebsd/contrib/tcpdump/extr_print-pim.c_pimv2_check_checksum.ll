; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pim.c_pimv2_check_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pim.c_pimv2_check_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32 }
%struct.cksum_vec = type { i64, i32* }
%struct.ip6_hdr = type { i32 }

@UNVERIFIED = common dso_local global i32 0, align 4
@INCORRECT = common dso_local global i32 0, align 4
@CORRECT = common dso_local global i32 0, align 4
@IPPROTO_PIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64)* @pimv2_check_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pimv2_check_checksum(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [1 x %struct.cksum_vec], align 16
  %13 = alloca %struct.ip6_hdr*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @ND_TTEST2(i32 %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @UNVERIFIED, align 4
  store i32 %21, i32* %5, align 4
  br label %69

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  %24 = bitcast i32* %23 to %struct.ip*
  store %struct.ip* %24, %struct.ip** %10, align 8
  %25 = load %struct.ip*, %struct.ip** %10, align 8
  %26 = call i32 @IP_V(%struct.ip* %25)
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %12, i64 0, i64 0
  %31 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %12, i64 0, i64 0
  %34 = getelementptr inbounds %struct.cksum_vec, %struct.cksum_vec* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 16
  %35 = getelementptr inbounds [1 x %struct.cksum_vec], [1 x %struct.cksum_vec]* %12, i64 0, i64 0
  %36 = call i64 @in_cksum(%struct.cksum_vec* %35, i32 1)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @INCORRECT, align 4
  br label %43

41:                                               ; preds = %28
  %42 = load i32, i32* @CORRECT, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %5, align 4
  br label %69

45:                                               ; preds = %22
  %46 = load %struct.ip*, %struct.ip** %10, align 8
  %47 = call i32 @IP_V(%struct.ip* %46)
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  %51 = bitcast i32* %50 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %51, %struct.ip6_hdr** %13, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.ip6_hdr*, %struct.ip6_hdr** %13, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* @IPPROTO_PIM, align 4
  %58 = call i64 @nextproto6_cksum(i32* %52, %struct.ip6_hdr* %53, i32* %54, i64 %55, i64 %56, i32 %57)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* @INCORRECT, align 4
  br label %65

63:                                               ; preds = %49
  %64 = load i32, i32* @CORRECT, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %5, align 4
  br label %69

67:                                               ; preds = %45
  %68 = load i32, i32* @UNVERIFIED, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %65, %43, %20
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @ND_TTEST2(i32, i64) #1

declare dso_local i32 @IP_V(%struct.ip*) #1

declare dso_local i64 @in_cksum(%struct.cksum_vec*, i32) #1

declare dso_local i64 @nextproto6_cksum(i32*, %struct.ip6_hdr*, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
