; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_print_nfsaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_print_nfsaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32, i32 }
%struct.ip6_hdr = type { i32, i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s.%s > %s.%s: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i8*)* @print_nfsaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_nfsaddr(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ip*, align 8
  %10 = alloca %struct.ip6_hdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 16
  %22 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %22, align 16
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to %struct.ip*
  %25 = call i32 @IP_V(%struct.ip* %24)
  switch i32 %25, label %56 [
    i32 4, label %26
    i32 6, label %41
  ]

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = bitcast i32* %27 to %struct.ip*
  store %struct.ip* %28, %struct.ip** %9, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.ip*, %struct.ip** %9, align 8
  %31 = getelementptr inbounds %struct.ip, %struct.ip* %30, i32 0, i32 1
  %32 = call i8* @ipaddr_string(i32* %29, i32* %31)
  %33 = trunc i64 %15 to i32
  %34 = call i32 @strlcpy(i8* %17, i8* %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.ip*, %struct.ip** %9, align 8
  %37 = getelementptr inbounds %struct.ip, %struct.ip* %36, i32 0, i32 0
  %38 = call i8* @ipaddr_string(i32* %35, i32* %37)
  %39 = trunc i64 %19 to i32
  %40 = call i32 @strlcpy(i8* %20, i8* %38, i32 %39)
  br label %61

41:                                               ; preds = %4
  %42 = load i32*, i32** %6, align 8
  %43 = bitcast i32* %42 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %43, %struct.ip6_hdr** %10, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %46 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %45, i32 0, i32 1
  %47 = call i8* @ip6addr_string(i32* %44, i32* %46)
  %48 = trunc i64 %15 to i32
  %49 = call i32 @strlcpy(i8* %17, i8* %47, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %52 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %51, i32 0, i32 0
  %53 = call i8* @ip6addr_string(i32* %50, i32* %52)
  %54 = trunc i64 %19 to i32
  %55 = call i32 @strlcpy(i8* %20, i8* %53, i32 %54)
  br label %61

56:                                               ; preds = %4
  %57 = trunc i64 %15 to i32
  %58 = call i32 @strlcpy(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = trunc i64 %19 to i32
  %60 = call i32 @strlcpy(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %41, %26
  %62 = load i32*, i32** %5, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = call i32 @ND_PRINT(i32* %65)
  %67 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %67)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IP_V(%struct.ip*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @ipaddr_string(i32*, i32*) #2

declare dso_local i8* @ip6addr_string(i32*, i32*) #2

declare dso_local i32 @ND_PRINT(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
