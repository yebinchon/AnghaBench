; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_option_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_option_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i64, i64, i32 }
%struct.ip6_ext = type { i32 }

@IPPROTO_IPV6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_option_find(%struct.cmsghdr* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmsghdr*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip6_ext*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.cmsghdr* %0, %struct.cmsghdr** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %14 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IPPROTO_IPV6, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %3
  %19 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %20 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @is_ipv6_hopopts(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %26 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @is_ipv6_dstopts(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24, %3
  store i32 -1, i32* %4, align 4
  br label %111

31:                                               ; preds = %24, %18
  %32 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %33 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @CMSG_SPACE(i32 4)
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %111

38:                                               ; preds = %31
  %39 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %40 = call i64 @CMSG_DATA(%struct.cmsghdr* %39)
  %41 = inttoptr i64 %40 to %struct.ip6_ext*
  store %struct.ip6_ext* %41, %struct.ip6_ext** %8, align 8
  %42 = load %struct.ip6_ext*, %struct.ip6_ext** %8, align 8
  %43 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = shl i32 %45, 3
  store i32 %46, i32* %9, align 4
  %47 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %48 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @CMSG_SPACE(i32 %50)
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %111

54:                                               ; preds = %38
  %55 = load %struct.ip6_ext*, %struct.ip6_ext** %8, align 8
  %56 = bitcast %struct.ip6_ext* %55 to i32*
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32* %59, i32** %12, align 8
  %60 = load i32**, i32*** %6, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.ip6_ext*, %struct.ip6_ext** %8, align 8
  %65 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %64, i64 1
  %66 = bitcast %struct.ip6_ext* %65 to i32*
  %67 = load i32**, i32*** %6, align 8
  store i32* %66, i32** %67, align 8
  br label %82

68:                                               ; preds = %54
  %69 = load i32**, i32*** %6, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @ip6optlen(i32* %70, i32* %71)
  store i32 %72, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %111

75:                                               ; preds = %68
  %76 = load i32**, i32*** %6, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32**, i32*** %6, align 8
  store i32* %80, i32** %81, align 8
  br label %82

82:                                               ; preds = %75, %63
  %83 = load i32**, i32*** %6, align 8
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %11, align 8
  br label %85

85:                                               ; preds = %104, %82
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ult i32* %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %85
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32*, i32** %11, align 8
  %96 = load i32**, i32*** %6, align 8
  store i32* %95, i32** %96, align 8
  store i32 0, i32* %4, align 4
  br label %111

97:                                               ; preds = %89
  %98 = load i32*, i32** %11, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @ip6optlen(i32* %98, i32* %99)
  store i32 %100, i32* %10, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 -1, i32* %4, align 4
  br label %111

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %11, align 8
  br label %85

109:                                              ; preds = %85
  %110 = load i32**, i32*** %6, align 8
  store i32* null, i32** %110, align 8
  store i32 -1, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %102, %94, %74, %53, %37, %30
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @is_ipv6_hopopts(i32) #1

declare dso_local i32 @is_ipv6_dstopts(i32) #1

declare dso_local i64 @CMSG_SPACE(i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @ip6optlen(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
