; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_build_iflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_build_iflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@build_iflags.ifs = internal global [1024 x i8] zeroinitializer, align 16
@INT_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"up\00", align 1
@INT_PPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ppp\00", align 1
@INT_LOOPBACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@INT_BROADCAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@INT_MULTICAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"multicast\00", align 1
@INT_BCASTOPEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"bcastopen\00", align 1
@INT_MCASTOPEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"mcastopen\00", align 1
@INT_WILDCARD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"wildcard\00", align 1
@INT_MCASTIF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"MCASTif\00", align 1
@INT_PRIVACY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"IPv6privacy\00", align 1
@INT_BCASTXMIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"bcastxmit\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_iflags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [10 x i8], align 1
  store i32 %0, i32* %2, align 4
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), align 16
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @INT_UP, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @INT_UP, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @INT_PPP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @INT_PPP, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %2, align 4
  %24 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %19, %14
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @INT_LOOPBACK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @INT_LOOPBACK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %2, align 4
  %35 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @INT_BROADCAST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @INT_BROADCAST, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %2, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %2, align 4
  %46 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @INT_MULTICAST, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @INT_MULTICAST, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %2, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %2, align 4
  %57 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @INT_BCASTOPEN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @INT_BCASTOPEN, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %2, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %2, align 4
  %68 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @INT_MCASTOPEN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @INT_MCASTOPEN, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %2, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %2, align 4
  %79 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @INT_WILDCARD, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* @INT_WILDCARD, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %2, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %2, align 4
  %90 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @INT_MCASTIF, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* @INT_MCASTIF, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %2, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %2, align 4
  %101 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @INT_PRIVACY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @INT_PRIVACY, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %2, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %2, align 4
  %112 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* @INT_BCASTXMIT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* @INT_BCASTXMIT, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %2, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %2, align 4
  %123 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %124

124:                                              ; preds = %118, %113
  %125 = load i32, i32* %2, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %129 = load i32, i32* %2, align 4
  %130 = call i32 @snprintf(i8* %128, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  %131 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %132 = call i32 @appendstr(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0), i32 1024, i8* %131)
  br label %133

133:                                              ; preds = %127, %124
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @build_iflags.ifs, i64 0, i64 0)
}

declare dso_local i32 @appendstr(i8*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
