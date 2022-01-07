; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf6.c_ospf6_decode_v3_trailer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf6.c_ospf6_decode_v3_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ospf6hdr = type { i64 }
%struct.hello6 = type { i32 }
%struct.dd6 = type { i32 }

@OSPF_TYPE_HELLO = common dso_local global i64 0, align 8
@OSPF6HDR_LEN = common dso_local global i32 0, align 4
@OSPF6_OPTION_L = common dso_local global i32 0, align 4
@OSPF_TYPE_DD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ospf6hdr*, i32*, i32)* @ospf6_decode_v3_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ospf6_decode_v3_trailer(i32* %0, %struct.ospf6hdr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ospf6hdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hello6*, align 8
  %14 = alloca %struct.dd6*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ospf6hdr* %1, %struct.ospf6hdr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %16 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OSPF_TYPE_HELLO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %4
  %21 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %22 = bitcast %struct.ospf6hdr* %21 to i32*
  %23 = load i32, i32* @OSPF6HDR_LEN, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = bitcast i32* %25 to %struct.hello6*
  store %struct.hello6* %26, %struct.hello6** %13, align 8
  %27 = load %struct.hello6*, %struct.hello6** %13, align 8
  %28 = getelementptr inbounds %struct.hello6, %struct.hello6* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ND_TCHECK(i32 %29)
  %31 = load %struct.hello6*, %struct.hello6** %13, align 8
  %32 = getelementptr inbounds %struct.hello6, %struct.hello6* %31, i32 0, i32 0
  %33 = call i32 @EXTRACT_32BITS(i32* %32)
  %34 = load i32, i32* @OSPF6_OPTION_L, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  br label %38

38:                                               ; preds = %37, %20
  br label %65

39:                                               ; preds = %4
  %40 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %41 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @OSPF_TYPE_DD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %47 = bitcast %struct.ospf6hdr* %46 to i32*
  %48 = load i32, i32* @OSPF6HDR_LEN, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = bitcast i32* %50 to %struct.dd6*
  store %struct.dd6* %51, %struct.dd6** %14, align 8
  %52 = load %struct.dd6*, %struct.dd6** %14, align 8
  %53 = getelementptr inbounds %struct.dd6, %struct.dd6* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ND_TCHECK(i32 %54)
  %56 = load %struct.dd6*, %struct.dd6** %14, align 8
  %57 = getelementptr inbounds %struct.dd6, %struct.dd6* %56, i32 0, i32 0
  %58 = call i32 @EXTRACT_32BITS(i32* %57)
  %59 = load i32, i32* @OSPF6_OPTION_L, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63, %39
  br label %65

65:                                               ; preds = %64, %38
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68, %65
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ospf6_print_lls(i32* %72, i32* %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %88

78:                                               ; preds = %71, %68
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub i32 %84, %85
  %87 = call i32 @ospf6_decode_at(i32* %79, i32* %83, i32 %86)
  store i32 %87, i32* %5, align 4
  br label %89

88:                                               ; preds = %77
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %78
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ospf6_print_lls(i32*, i32*, i32) #1

declare dso_local i32 @ospf6_decode_at(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
