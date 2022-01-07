; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_option_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_option_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i64, i64, i32 }
%struct.ip6_ext = type { i32 }

@IPPROTO_IPV6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_option_next(%struct.cmsghdr* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmsghdr*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.ip6_ext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.cmsghdr* %0, %struct.cmsghdr** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %11 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPPROTO_IPV6, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %17 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @is_ipv6_hopopts(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %23 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @is_ipv6_dstopts(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %2
  store i32 -1, i32* %3, align 4
  br label %94

28:                                               ; preds = %21, %15
  %29 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %30 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @CMSG_SPACE(i32 4)
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %94

35:                                               ; preds = %28
  %36 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %37 = call i64 @CMSG_DATA(%struct.cmsghdr* %36)
  %38 = inttoptr i64 %37 to %struct.ip6_ext*
  store %struct.ip6_ext* %38, %struct.ip6_ext** %6, align 8
  %39 = load %struct.ip6_ext*, %struct.ip6_ext** %6, align 8
  %40 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = shl i32 %42, 3
  store i32 %43, i32* %7, align 4
  %44 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %45 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @CMSG_SPACE(i32 %47)
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %94

51:                                               ; preds = %35
  %52 = load %struct.ip6_ext*, %struct.ip6_ext** %6, align 8
  %53 = bitcast %struct.ip6_ext* %52 to i32*
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %9, align 8
  %57 = load i32**, i32*** %5, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.ip6_ext*, %struct.ip6_ext** %6, align 8
  %62 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %61, i64 1
  %63 = bitcast %struct.ip6_ext* %62 to i32*
  %64 = load i32**, i32*** %5, align 8
  store i32* %63, i32** %64, align 8
  br label %79

65:                                               ; preds = %51
  %66 = load i32**, i32*** %5, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @ip6optlen(i32* %67, i32* %68)
  store i32 %69, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %94

72:                                               ; preds = %65
  %73 = load i32**, i32*** %5, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32**, i32*** %5, align 8
  store i32* %77, i32** %78, align 8
  br label %79

79:                                               ; preds = %72, %60
  %80 = load i32**, i32*** %5, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = icmp uge i32* %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32**, i32*** %5, align 8
  store i32* null, i32** %85, align 8
  store i32 -1, i32* %3, align 4
  br label %94

86:                                               ; preds = %79
  %87 = load i32**, i32*** %5, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @ip6optlen(i32* %88, i32* %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 -1, i32* %3, align 4
  br label %94

93:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %92, %84, %71, %50, %34, %27
  %95 = load i32, i32* %3, align 4
  ret i32 %95
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
