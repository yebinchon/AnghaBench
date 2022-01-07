; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_dir_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_dir_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.direct = type { i64, i64, i64, i32 }

@MAXBSIZE = common dso_local global i32 0, align 4
@disk = common dso_local global i32 0, align 4
@sblock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to read dir block\00", align 1
@SUJ_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dir_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_search(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.direct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @MAXBSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @fsbtodb(i32* @sblock, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @bread(i32* @disk, i32 %16, i8* %14, i32 %17)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

22:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %67, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %14, i64 %29
  %31 = bitcast i8* %30 to %struct.direct*
  store %struct.direct* %31, %struct.direct** %8, align 8
  %32 = load %struct.direct*, %struct.direct** %8, align 8
  %33 = getelementptr inbounds %struct.direct, %struct.direct* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %75

37:                                               ; preds = %27
  %38 = load %struct.direct*, %struct.direct** %8, align 8
  %39 = getelementptr inbounds %struct.direct, %struct.direct* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %67

43:                                               ; preds = %37
  %44 = load %struct.direct*, %struct.direct** %8, align 8
  %45 = getelementptr inbounds %struct.direct, %struct.direct* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @SUJ_FILE, align 4
  %48 = call i64 @strlen(i32 %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %67

51:                                               ; preds = %43
  %52 = load %struct.direct*, %struct.direct** %8, align 8
  %53 = getelementptr inbounds %struct.direct, %struct.direct* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SUJ_FILE, align 4
  %56 = load %struct.direct*, %struct.direct** %8, align 8
  %57 = getelementptr inbounds %struct.direct, %struct.direct* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @bcmp(i32 %54, i32 %55, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %67

62:                                               ; preds = %51
  %63 = load %struct.direct*, %struct.direct** %8, align 8
  %64 = getelementptr inbounds %struct.direct, %struct.direct* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

67:                                               ; preds = %61, %50, %42
  %68 = load %struct.direct*, %struct.direct** %8, align 8
  %69 = getelementptr inbounds %struct.direct, %struct.direct* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  br label %23

75:                                               ; preds = %36, %23
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %62, %20
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bread(i32*, i32, i8*, i32) #2

declare dso_local i32 @fsbtodb(i32*, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i64 @bcmp(i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
