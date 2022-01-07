; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_ftp.c_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_ftp.c_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i8* }

@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empty(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.pollfd], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i8* @fileno(i32* %14)
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %18, i32 0, i32 2
  store i8* %15, i8** %19, align 8
  %20 = load i32, i32* @POLLIN, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %24, i32 0, i32 0
  store i32 %20, i32* %25, align 16
  br label %26

26:                                               ; preds = %13, %3
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @fileno(i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %34, i32 0, i32 2
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* @POLLIN, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 16
  br label %42

42:                                               ; preds = %29, %26
  %43 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 0
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 1000
  %47 = call i32 @ftp_poll(%struct.pollfd* %43, i32 %44, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %87

51:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @POLLIN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %54, %51
  %69 = load i32*, i32** %6, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @POLLIN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 2, i32 0
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %71, %68
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %49
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i8* @fileno(i32*) #1

declare dso_local i32 @ftp_poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
