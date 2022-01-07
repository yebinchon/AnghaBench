; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/test/extr_test_copy.c_copy_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/test/extr_test_copy.c_copy_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"%s cf archive -C ../original f d l m s >pack.out 2>pack.err\00", align 1
@testprog = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Error invoking \22%s cf\22\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pack.err\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"pack.out\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%s xf archive >unpack.out 2>unpack.err\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Error invoking %s xf archive\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"unpack.err\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"unpack.out\00", align 1
@LIMIT_NONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @copy_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_basic() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @assertMakeDir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 509)
  %3 = call i32 @chdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @assertEqualInt(i32 0, i32 %3)
  %5 = load i32, i32* @testprog, align 4
  %6 = call i32 @systemf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @testprog, align 4
  %8 = call i32 @failure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @assertEqualInt(i32 %9, i32 0)
  %11 = call i32 @assertEmptyFile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 @assertEmptyFile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32, i32* @testprog, align 4
  %14 = call i32 @systemf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @testprog, align 4
  %16 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @assertEqualInt(i32 %17, i32 0)
  %19 = call i32 @assertEmptyFile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %20 = call i32 @assertEmptyFile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %21 = load i32, i32* @LIMIT_NONE, align 4
  %22 = call i32 @verify_tree(i32 %21)
  %23 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %24 = call i32 @assertEqualInt(i32 0, i32 %23)
  ret void
}

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @systemf(i8*, i32) #1

declare dso_local i32 @failure(i8*, i32) #1

declare dso_local i32 @assertEmptyFile(i8*) #1

declare dso_local i32 @verify_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
