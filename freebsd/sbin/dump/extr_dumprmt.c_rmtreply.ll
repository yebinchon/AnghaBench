; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_dumprmt.c_rmtreply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_dumprmt.c_rmtreply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@TS_CLOSED = common dso_local global i32 0, align 4
@rmtstate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Protocol to remote tape server botched (code \22%s\22).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rmtreply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmtreply(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [30 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @BUFSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %14 = call i32 @rmtgets(i8* %13, i32 30)
  %15 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %16 = load i8, i8* %15, align 16
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 69
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %21 = load i8, i8* %20, align 16
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 70
  br i1 %23, label %24, label %39

24:                                               ; preds = %19, %1
  %25 = trunc i64 %10 to i32
  %26 = call i32 @rmtgets(i8* %12, i32 %25)
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i8*, i8*, ...) @msg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %12)
  %29 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* @errno, align 4
  %32 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 70
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @TS_CLOSED, align 4
  store i32 %37, i32* @rmtstate, align 4
  br label %38

38:                                               ; preds = %36, %24
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %69

39:                                               ; preds = %19
  %40 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %41 = load i8, i8* %40, align 16
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 65
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %46 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %47 = call i32 @strlen(i8* %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8* %49, i8** %4, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %52 = icmp ugt i8* %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i8*, i8** %4, align 8
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %59, %53, %44
  %62 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %63 = call i32 (i8*, i8*, ...) @msg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = call i32 @rmtconnaborted(i32 0)
  br label %65

65:                                               ; preds = %61, %39
  %66 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = call i32 @atoi(i8* %67)
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %38
  %70 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rmtgets(i8*, i32) #2

declare dso_local i32 @msg(i8*, i8*, ...) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @rmtconnaborted(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
