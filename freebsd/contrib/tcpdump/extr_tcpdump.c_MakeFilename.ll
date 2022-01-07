; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_MakeFilename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_MakeFilename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@PATH_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Makefilename: malloc\00", align 1
@Gflag = common dso_local global i64 0, align 8
@Gflag_time = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"MakeTimedFilename: localtime\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%0*d\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"too many output files or filename is too long (> %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @MakeFilename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MakeFilename(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tm*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @PATH_MAX, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i8* @malloc(i64 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %4
  %19 = load i64, i64* @Gflag, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = call %struct.tm* @localtime(i32* @Gflag_time)
  store %struct.tm* %22, %struct.tm** %10, align 8
  %23 = icmp eq %struct.tm* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* @PATH_MAX, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.tm*, %struct.tm** %10, align 8
  %31 = call i32 @strftime(i8* %27, i64 %28, i8* %29, %struct.tm* %30)
  br label %37

32:                                               ; preds = %18
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* @PATH_MAX, align 8
  %36 = call i32 @strncpy(i8* %33, i8* %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %26
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* @PATH_MAX, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @strncpy(i8* %44, i8* %45, i64 %47)
  br label %63

49:                                               ; preds = %40, %37
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* @PATH_MAX, align 8
  %52 = add nsw i64 %51, 1
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @snprintf(i8* %50, i64 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 %54, i32 %55)
  %57 = load i64, i64* @PATH_MAX, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i64, i64* @PATH_MAX, align 8
  %61 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %59, %49
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @free(i8* %64)
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i64, i8*, %struct.tm*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
