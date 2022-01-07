; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_prepare_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_prepare_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_5__* }

@PF_ANCHOR_NAME_SIZE = common dso_local global i32 0, align 4
@pft = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TRANS_SIZE = common dso_local global i32 0, align 4
@pfte = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s/%d.%d\00", align 1
@FTP_PROXY_ANCHOR = common dso_local global i8* null, align 8
@PF_RULESET_FILTER = common dso_local global i32 0, align 4
@PF_RULESET_NAT = common dso_local global i32 0, align 4
@PF_RULESET_RDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCXBEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_commit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @PF_ANCHOR_NAME_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = call i32 @memset(%struct.TYPE_5__* @pft, i32 0, i32 24)
  %13 = load i32, i32* @TRANS_SIZE, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pft, i32 0, i32 0), align 8
  store i32 24, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pft, i32 0, i32 1), align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pfte, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pft, i32 0, i32 4), align 8
  %15 = load i32, i32* @PF_ANCHOR_NAME_SIZE, align 4
  %16 = load i8*, i8** @FTP_PROXY_ANCHOR, align 8
  %17 = call i32 (...) @getpid()
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @snprintf(i8* %11, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17, i32 %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %63, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @TRANS_SIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pfte, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = call i32 @memset(%struct.TYPE_5__* %28, i32 0, i32 24)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pfte, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PF_ANCHOR_NAME_SIZE, align 4
  %37 = call i32 @strlcpy(i32 %35, i8* %11, i32 %36)
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %60 [
    i32 130, label %39
    i32 129, label %46
    i32 128, label %53
  ]

39:                                               ; preds = %24
  %40 = load i32, i32* @PF_RULESET_FILTER, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pfte, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32 %40, i32* %45, align 8
  br label %62

46:                                               ; preds = %24
  %47 = load i32, i32* @PF_RULESET_NAT, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pfte, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 %47, i32* %52, align 8
  br label %62

53:                                               ; preds = %24
  %54 = load i32, i32* @PF_RULESET_RDR, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pfte, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 %54, i32* %59, align 8
  br label %62

60:                                               ; preds = %24
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %73

62:                                               ; preds = %53, %46, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %20

66:                                               ; preds = %20
  %67 = load i32, i32* @dev, align 4
  %68 = load i32, i32* @DIOCXBEGIN, align 4
  %69 = call i32 @ioctl(i32 %67, i32 %68, %struct.TYPE_5__* @pft)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %73

72:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %71, %60
  %74 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
