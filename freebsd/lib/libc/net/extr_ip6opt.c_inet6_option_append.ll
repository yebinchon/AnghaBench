; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_option_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ip6opt.c_inet6_option_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i32 }
%struct.ip6_ext = type { i32 }

@IP6OPT_PAD1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_option_append(%struct.cmsghdr* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmsghdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ip6_ext*, align 8
  store %struct.cmsghdr* %0, %struct.cmsghdr** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %16 = bitcast %struct.cmsghdr* %15 to i32*
  %17 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %18 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %13, align 8
  %22 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %23 = call i64 @CMSG_DATA(%struct.cmsghdr* %22)
  %24 = inttoptr i64 %23 to %struct.ip6_ext*
  store %struct.ip6_ext* %24, %struct.ip6_ext** %14, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %37

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 8
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %154

37:                                               ; preds = %33, %30, %27, %4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 7
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37
  store i32 -1, i32* %5, align 4
  br label %154

44:                                               ; preds = %40
  %45 = load i32*, i32** %13, align 8
  %46 = load %struct.ip6_ext*, %struct.ip6_ext** %14, align 8
  %47 = bitcast %struct.ip6_ext* %46 to i32*
  %48 = icmp eq i32* %45, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32* %51, i32** %13, align 8
  %52 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %53 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %44
  %57 = load i32*, i32** %13, align 8
  %58 = load %struct.ip6_ext*, %struct.ip6_ext** %14, align 8
  %59 = bitcast %struct.ip6_ext* %58 to i32*
  %60 = ptrtoint i32* %57 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %8, align 4
  %67 = srem i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @roundup2(i32 %67, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %8, align 4
  %72 = srem i32 %70, %71
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = srem i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @inet6_insert_padopt(i32* %80, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %85 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %13, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IP6OPT_PAD1, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %56
  store i32 1, i32* %11, align 4
  br label %103

98:                                               ; preds = %56
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %98, %97
  %104 = load i32*, i32** %13, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @memcpy(i32* %104, i32* %105, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %13, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %114 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = load %struct.ip6_ext*, %struct.ip6_ext** %14, align 8
  %119 = bitcast %struct.ip6_ext* %118 to i32*
  %120 = ptrtoint i32* %117 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 7
  %127 = and i32 %126, -8
  %128 = load i32, i32* %12, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %10, align 4
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @inet6_insert_padopt(i32* %130, i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = load i32*, i32** %13, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %13, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %139 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i32*, i32** %13, align 8
  %143 = load %struct.ip6_ext*, %struct.ip6_ext** %14, align 8
  %144 = bitcast %struct.ip6_ext* %143 to i32*
  %145 = ptrtoint i32* %142 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 4
  %149 = ashr i64 %148, 3
  %150 = sub nsw i64 %149, 1
  %151 = trunc i64 %150 to i32
  %152 = load %struct.ip6_ext*, %struct.ip6_ext** %14, align 8
  %153 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %103, %43, %36
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @inet6_insert_padopt(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
