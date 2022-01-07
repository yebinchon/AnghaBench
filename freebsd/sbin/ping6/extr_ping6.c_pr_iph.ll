; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_iph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_iph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_hdr = type { i32, i32, i32, i32, i32, i32, i32 }

@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Vr TC  Flow Plen Nxt Hlim\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c" %1x %02x %05x %04x  %02x   %02x\0A\00", align 1
@IPV6_VERSION_MASK = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s->\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_hdr*)* @pr_iph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_iph(%struct.ip6_hdr* %0) #0 {
  %2 = alloca %struct.ip6_hdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ip6_hdr* %0, %struct.ip6_hdr** %2, align 8
  %7 = load %struct.ip6_hdr*, %struct.ip6_hdr** %2, align 8
  %8 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.ip6_hdr*, %struct.ip6_hdr** %2, align 8
  %17 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %16, i32 0, i32 1
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 15
  store i32 %22, i32* %4, align 4
  %23 = load %struct.ip6_hdr*, %struct.ip6_hdr** %2, align 8
  %24 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.ip6_hdr*, %struct.ip6_hdr** %2, align 8
  %31 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IPV6_VERSION_MASK, align 4
  %34 = and i32 %32, %33
  %35 = ashr i32 %34, 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @ntohl(i32 %37)
  %39 = trunc i64 %38 to i32
  %40 = load %struct.ip6_hdr*, %struct.ip6_hdr** %2, align 8
  %41 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohs(i32 %42)
  %44 = load %struct.ip6_hdr*, %struct.ip6_hdr** %2, align 8
  %45 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ip6_hdr*, %struct.ip6_hdr** %2, align 8
  %48 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36, i32 %39, i32 %43, i32 %46, i32 %49)
  %51 = load i32, i32* @AF_INET6, align 4
  %52 = load %struct.ip6_hdr*, %struct.ip6_hdr** %2, align 8
  %53 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %52, i32 0, i32 5
  %54 = trunc i64 %13 to i32
  %55 = call i32 @inet_ntop(i32 %51, i32* %53, i8* %15, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %1
  %58 = trunc i64 %13 to i32
  %59 = call i32 @strlcpy(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %1
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %62 = load i32, i32* @AF_INET6, align 4
  %63 = load %struct.ip6_hdr*, %struct.ip6_hdr** %2, align 8
  %64 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %63, i32 0, i32 4
  %65 = trunc i64 %13 to i32
  %66 = call i32 @inet_ntop(i32 %62, i32* %64, i8* %15, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = trunc i64 %13 to i32
  %70 = call i32 @strlcpy(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %60
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %73 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @ntohl(i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #2

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
