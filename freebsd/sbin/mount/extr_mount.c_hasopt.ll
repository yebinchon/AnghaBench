; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_hasopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_hasopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hasopt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 110
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 111
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %22, i8** %4, align 8
  br label %24

23:                                               ; preds = %14, %2
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @strdup(i8* %25)
  store i8* %26, i8** %8, align 8
  store i32 0, i32* %6, align 4
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %65, %24
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @strtok(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 110
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 111
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strcasecmp(i8* %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %44
  br label %64

53:                                               ; preds = %38, %32
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @strcasecmp(i8* %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %52
  br label %65

65:                                               ; preds = %64
  store i8* null, i8** %7, align 8
  br label %28

66:                                               ; preds = %28
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
