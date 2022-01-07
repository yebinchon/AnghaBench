; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_executable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_executable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@S_IXOTH = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @executable(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64*, i64** %4, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i64*, i64** %4, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = call i64* @Strspl(i64* %17, i64* %18)
  store i64* %19, i64** %9, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = call i8* @short2str(i64* %20)
  store i8* %21, i8** %8, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = call i32 @xfree(i64* %22)
  br label %27

24:                                               ; preds = %12, %3
  %25 = load i64*, i64** %5, align 8
  %26 = call i8* @short2str(i64* %25)
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @stat(i8* %28, %struct.stat* %7)
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %63

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %34, %31
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @S_ISREG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @S_IXOTH, align 4
  %48 = load i32, i32* @S_IXGRP, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @S_IXUSR, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %46, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* @X_OK, align 4
  %57 = call i64 @access(i8* %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br label %59

59:                                               ; preds = %54, %44, %39
  %60 = phi i1 [ false, %44 ], [ false, %39 ], [ %58, %54 ]
  br label %61

61:                                               ; preds = %59, %34
  %62 = phi i1 [ true, %34 ], [ %60, %59 ]
  br label %63

63:                                               ; preds = %61, %27
  %64 = phi i1 [ false, %27 ], [ %62, %61 ]
  %65 = zext i1 %64 to i32
  ret i32 %65
}

declare dso_local i64* @Strspl(i64*, i64*) #1

declare dso_local i8* @short2str(i64*) #1

declare dso_local i32 @xfree(i64*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @access(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
