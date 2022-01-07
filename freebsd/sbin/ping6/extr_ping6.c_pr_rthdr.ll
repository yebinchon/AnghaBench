; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_rthdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_rthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.ip6_rthdr = type { i32, i32, i32, i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"nxt %u, len %u (%d bytes), type %u, \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%d segments, \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d left\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"segments unknown, \00", align 1
@IPV6_RTHDR_TYPE_0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"segments truncated, showing only %d (total=%d)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"   [%d]<NULL>\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"   [%d]%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @pr_rthdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_rthdr(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ip6_rthdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = bitcast i8* %20 to %struct.ip6_rthdr*
  store %struct.ip6_rthdr* %21, %struct.ip6_rthdr** %8, align 8
  %22 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %8, align 8
  %23 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %8, align 8
  %26 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %8, align 8
  %29 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = shl i32 %31, 3
  %33 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %8, align 8
  %34 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %32, i32 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @inet6_rth_segments(i8* %37)
  store i32 %38, i32* %10, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %8, align 8
  %44 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %53

47:                                               ; preds = %2
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %8, align 8
  %50 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  store i32 1, i32* %15, align 4
  br label %121

53:                                               ; preds = %40
  %54 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %8, align 8
  %55 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = mul nsw i32 %57, 8
  store i32 %58, i32* %12, align 4
  %59 = load i64, i64* %4, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = call i64 @CMSG_SPACE(i32 0)
  %63 = add i64 %61, %62
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %68 = call i32 @inet6_rth_space(i32 %67, i32 0)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %70 = call i32 @inet6_rth_space(i32 %69, i32 1)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %4, align 8
  %74 = call i64 @CMSG_SPACE(i32 0)
  %75 = sub i64 %73, %74
  %76 = sub i64 %72, %75
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %76, %80
  %82 = add i64 %81, 1
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %65, %53
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %117, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %91
  %96 = load i8*, i8** %3, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call %struct.in6_addr* @inet6_rth_getaddr(i8* %96, i32 %97)
  store %struct.in6_addr* %98, %struct.in6_addr** %5, align 8
  %99 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %100 = icmp eq %struct.in6_addr* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %116

104:                                              ; preds = %95
  %105 = load i32, i32* @AF_INET6, align 4
  %106 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %107 = trunc i64 %17 to i32
  %108 = call i32 @inet_ntop(i32 %105, %struct.in6_addr* %106, i8* %19, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = trunc i64 %17 to i32
  %112 = call i32 @strlcpy(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %110, %104
  %114 = load i32, i32* %9, align 4
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %114, i8* %19)
  br label %116

116:                                              ; preds = %113, %101
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %91

120:                                              ; preds = %91
  store i32 1, i32* %15, align 4
  br label %121

121:                                              ; preds = %120, %47
  %122 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %122)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @inet6_rth_segments(i8*) #2

declare dso_local i64 @CMSG_SPACE(i32) #2

declare dso_local i32 @inet6_rth_space(i32, i32) #2

declare dso_local i32 @warnx(i8*, i32, i32) #2

declare dso_local %struct.in6_addr* @inet6_rth_getaddr(i8*, i32) #2

declare dso_local i32 @inet_ntop(i32, %struct.in6_addr*, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
