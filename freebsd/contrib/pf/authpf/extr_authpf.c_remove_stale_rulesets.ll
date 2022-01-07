; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_remove_stale_rulesets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_remove_stale_rulesets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_ruleset = type { i8*, i64, i32 }

@anchorname = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCGETRULESETS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@DIOCGETRULESET = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @remove_stale_rulesets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_stale_rulesets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pfioc_ruleset, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = call i32 @memset(%struct.pfioc_ruleset* %2, i32 0, i32 24)
  %8 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %2, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @anchorname, align 4
  %11 = call i32 @strlcpy(i32 %9, i32 %10, i32 4)
  %12 = load i32, i32* @dev, align 4
  %13 = load i32, i32* @DIOCGETRULESETS, align 4
  %14 = call i64 @ioctl(i32 %12, i32 %13, %struct.pfioc_ruleset* %2)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %0
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EINVAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %99

21:                                               ; preds = %16
  store i32 1, i32* %1, align 4
  br label %99

22:                                               ; preds = %0
  %23 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %2, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %95, %22
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %98

28:                                               ; preds = %25
  %29 = load i64, i64* %3, align 8
  %30 = sub nsw i64 %29, 1
  %31 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %2, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* @dev, align 4
  %33 = load i32, i32* @DIOCGETRULESET, align 4
  %34 = call i64 @ioctl(i32 %32, i32 %33, %struct.pfioc_ruleset* %2)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %1, align 4
  br label %99

37:                                               ; preds = %28
  store i64 0, i64* @errno, align 8
  %38 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %2, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 40)
  store i8* %40, i8** %5, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %2, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %5, align 8
  br label %48

45:                                               ; preds = %37
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @strtoul(i8* %49, i8** %4, i32 10)
  store i64 %50, i64* %6, align 8
  %51 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %2, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %48
  %57 = load i64, i64* @errno, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %2, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %65, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %4, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 41
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %64, %56, %48
  store i32 1, i32* %1, align 4
  br label %99

75:                                               ; preds = %69, %59
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @kill(i64 %76, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @EPERM, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79, %75
  %84 = load i64, i64* %6, align 8
  %85 = call i64 (...) @getpid()
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83, %79
  %88 = load i32, i32* @anchorname, align 4
  %89 = getelementptr inbounds %struct.pfioc_ruleset, %struct.pfioc_ruleset* %2, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @recursive_ruleset_purge(i32 %88, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 1, i32* %1, align 4
  br label %99

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %83
  %96 = load i64, i64* %3, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %3, align 8
  br label %25

98:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %99

99:                                               ; preds = %98, %93, %74, %36, %21, %20
  %100 = load i32, i32* %1, align 4
  ret i32 %100
}

declare dso_local i32 @memset(%struct.pfioc_ruleset*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_ruleset*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @kill(i64, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @recursive_ruleset_purge(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
