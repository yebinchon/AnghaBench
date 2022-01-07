; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_anchors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_anchors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_ruleset = type { i8*, i64, i8* }

@DIOCGETRULESETS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Anchor '%s' not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"DIOCGETRULESETS\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@DIOCGETRULESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"DIOCGETRULESET\00", align 1
@PF_RESERVED_ANCHOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_show_anchors(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pfioc_ruleset, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = call i32 @memset(%struct.pfioc_ruleset* %8, i32 0, i32 24)
  %15 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %8, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @memcpy(i8* %16, i8* %17, i32 8)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @DIOCGETRULESETS, align 4
  %21 = call i64 @ioctl(i32 %19, i32 %20, %struct.pfioc_ruleset* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINVAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %33

31:                                               ; preds = %23
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  store i32 -1, i32* %4, align 4
  br label %111

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %8, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %107, %34
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %110

41:                                               ; preds = %37
  %42 = load i32, i32* @MAXPATHLEN, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %11, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %12, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %8, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @DIOCGETRULESET, align 4
  %50 = call i64 @ioctl(i32 %48, i32 %49, %struct.pfioc_ruleset* %8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %41
  %55 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %8, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @PF_RESERVED_ANCHOR, align 4
  %58 = call i32 @strcmp(i8* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store i32 4, i32* %13, align 4
  br label %103

61:                                               ; preds = %54
  %62 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 0, i8* %62, align 16
  %63 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %8, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %8, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = trunc i64 %43 to i32
  %72 = call i32 @strlcat(i8* %45, i8* %70, i32 %71)
  %73 = trunc i64 %43 to i32
  %74 = call i32 @strlcat(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %68, %61
  %76 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %8, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = trunc i64 %43 to i32
  %79 = call i32 @strlcat(i8* %45, i8* %77, i32 %78)
  %80 = getelementptr inbounds i8, i8* %45, i64 0
  %81 = load i8, i8* %80, align 16
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 95
  br i1 %83, label %89, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84, %75
  %90 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  br label %91

91:                                               ; preds = %89, %84
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @pfctl_show_anchors(i32 %97, i32 %98, i8* %45)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %103

102:                                              ; preds = %96, %91
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %102, %101, %60
  %104 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %13, align 4
  switch i32 %105, label %113 [
    i32 0, label %106
    i32 4, label %107
    i32 1, label %111
  ]

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %106, %103
  %108 = load i64, i64* %10, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %10, align 8
  br label %37

110:                                              ; preds = %37
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %103, %33
  %112 = load i32, i32* %4, align 4
  ret i32 %112

113:                                              ; preds = %103
  unreachable
}

declare dso_local i32 @memset(%struct.pfioc_ruleset*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_ruleset*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
