; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_nodeaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_nodeaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmp6_nodeinfo = type { i32, i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@F_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"refused\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"unknown qtype\00", align 1
@NI_NODEADDR_FLAG_TRUNCATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c" truncated\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"  no address\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"(TTL=infty)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"(TTL=%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icmp6_nodeinfo*, i32)* @pr_nodeaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_nodeaddr(%struct.icmp6_nodeinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.icmp6_nodeinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.icmp6_nodeinfo* %0, %struct.icmp6_nodeinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.icmp6_nodeinfo*, %struct.icmp6_nodeinfo** %3, align 8
  %12 = getelementptr inbounds %struct.icmp6_nodeinfo, %struct.icmp6_nodeinfo* %11, i64 1
  %13 = bitcast %struct.icmp6_nodeinfo* %12 to i32*
  store i32* %13, i32** %5, align 8
  %14 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @options, align 4
  %23 = load i32, i32* @F_VERBOSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %2
  %27 = load %struct.icmp6_nodeinfo*, %struct.icmp6_nodeinfo** %3, align 8
  %28 = getelementptr inbounds %struct.icmp6_nodeinfo, %struct.icmp6_nodeinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %34 [
    i32 129, label %30
    i32 128, label %32
  ]

30:                                               ; preds = %26
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %34

32:                                               ; preds = %26
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %26, %32, %30
  %35 = load %struct.icmp6_nodeinfo*, %struct.icmp6_nodeinfo** %3, align 8
  %36 = getelementptr inbounds %struct.icmp6_nodeinfo, %struct.icmp6_nodeinfo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NI_NODEADDR_FLAG_TRUNCATE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %34
  br label %44

44:                                               ; preds = %43, %2
  %45 = call i32 @putchar(i8 signext 10)
  %46 = load i32, i32* %4, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = urem i64 %52, 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %50
  br label %57

57:                                               ; preds = %96, %56
  %58 = load i32, i32* %4, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @memcpy(i32* %10, i32* %64, i32 4)
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @ntohl(i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  store i32* %69, i32** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, 4
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %63, %60
  %75 = load i32, i32* @AF_INET6, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = trunc i64 %15 to i32
  %78 = call i32* @inet_ntop(i32 %75, i32* %76, i8* %17, i32 %77)
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = trunc i64 %15 to i32
  %82 = call i32 @strlcpy(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %74
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %17)
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %90
  br label %96

96:                                               ; preds = %95, %83
  %97 = call i32 @putchar(i8 signext 10)
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 %99, 4
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %4, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32* %103, i32** %5, align 8
  br label %57

104:                                              ; preds = %57
  %105 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %105)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32* @inet_ntop(i32, i32*, i8*, i32) #2

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
