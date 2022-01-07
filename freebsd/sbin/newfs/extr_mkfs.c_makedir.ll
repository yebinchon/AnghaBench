; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_makedir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_makedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.direct = type { i32 }

@DIRBLKSIZ = common dso_local global i32 0, align 4
@iobuf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @makedir(%struct.direct* %0, i32 %1) #0 {
  %3 = alloca %struct.direct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.direct* %0, %struct.direct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @DIRBLKSIZ, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i8*, i8** @iobuf, align 8
  %10 = load i32, i32* @DIRBLKSIZ, align 4
  %11 = call i32 @memset(i8* %9, i32 0, i32 %10)
  %12 = load i8*, i8** @iobuf, align 8
  store i8* %12, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %58, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %13
  %19 = load %struct.direct*, %struct.direct** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.direct, %struct.direct* %19, i64 %21
  %23 = call i32 @DIRSIZ(i32 0, %struct.direct* %22)
  %24 = load %struct.direct*, %struct.direct** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.direct, %struct.direct* %24, i64 %26
  %28 = getelementptr inbounds %struct.direct, %struct.direct* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.direct*, %struct.direct** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.direct, %struct.direct* %30, i64 %32
  %34 = load %struct.direct*, %struct.direct** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.direct, %struct.direct* %34, i64 %36
  %38 = getelementptr inbounds %struct.direct, %struct.direct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memmove(i8* %29, %struct.direct* %33, i32 %39)
  %41 = load %struct.direct*, %struct.direct** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.direct, %struct.direct* %41, i64 %43
  %45 = getelementptr inbounds %struct.direct, %struct.direct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %5, align 8
  %50 = load %struct.direct*, %struct.direct** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.direct, %struct.direct* %50, i64 %52
  %54 = getelementptr inbounds %struct.direct, %struct.direct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %18
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %13

61:                                               ; preds = %13
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.direct*, %struct.direct** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.direct, %struct.direct* %63, i64 %65
  %67 = getelementptr inbounds %struct.direct, %struct.direct* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = load %struct.direct*, %struct.direct** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.direct, %struct.direct* %69, i64 %71
  %73 = load %struct.direct*, %struct.direct** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.direct, %struct.direct* %73, i64 %75
  %77 = call i32 @DIRSIZ(i32 0, %struct.direct* %76)
  %78 = call i32 @memmove(i8* %68, %struct.direct* %72, i32 %77)
  %79 = load i32, i32* @DIRBLKSIZ, align 4
  ret i32 %79
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @DIRSIZ(i32, %struct.direct*) #1

declare dso_local i32 @memmove(i8*, %struct.direct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
