; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_get_rootdisk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_get_rootdisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"statfs(\22/\22)\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"^(/dev/[a-z/]+[0-9]*)([sp][0-9]+)?[a-h]?(\\.journal)?$\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"regcomp() failed (%d)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".eli\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"mounted root fs resource doesn't match expectations (regexec returned %d)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@NMATCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_rootdisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_rootdisk() #0 {
  %1 = alloca %struct.statfs, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x %struct.TYPE_3__], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = call i32 @statfs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.statfs* %1)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32, i32* @REG_EXTENDED, align 4
  %18 = call i32 @regcomp(i32* %2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.statfs, %struct.statfs* %1, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = trunc i64 %9 to i32
  %27 = call i32 @strlcpy(i8* %11, i32 %25, i32 %26)
  %28 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %28, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  %36 = call i64 @strlen(i8* %35)
  %37 = add nsw i64 %36, 1
  %38 = call i32 @memmove(i8* %31, i8* %33, i64 %37)
  br label %39

39:                                               ; preds = %30, %23
  %40 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %41 = call i32 @regexec(i32* %2, i8* %11, i32 2, %struct.TYPE_3__* %40, i32 0)
  store i32 %41, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  %54 = add nsw i32 %53, 1
  %55 = call i8* @malloc(i32 %54)
  store i8* %55, i8** %6, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %46
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds %struct.statfs, %struct.statfs* %1, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  %74 = call i32 @memcpy(i8* %60, i32 %66, i32 %73)
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %75, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %86)
  ret i8* %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @statfs(i8*, %struct.statfs*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @regcomp(i32*, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @regexec(i32*, i8*, i32, %struct.TYPE_3__*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
