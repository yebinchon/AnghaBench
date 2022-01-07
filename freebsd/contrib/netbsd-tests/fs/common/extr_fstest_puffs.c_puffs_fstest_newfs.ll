; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_puffs_fstest_newfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_puffs_fstest_newfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s/../puffs/h_dtfs/h_dtfs\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"srcdir\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dtfs\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"fictional\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puffs_fstest_newfs(i32* %0, i8** %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [6 x i8*], align 16
  %14 = alloca i8**, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i8* @atf_tc_get_config_var(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast i8* %25 to i8**
  store i8** %26, i8*** %14, align 8
  %27 = load i8**, i8*** %14, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %18, i8** %28, align 8
  br label %41

29:                                               ; preds = %5
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 0
  store i8* %18, i8** %30, align 16
  %31 = call i8* @__UNCONST(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 1
  store i8* %31, i8** %32, align 8
  %33 = call i8* @__UNCONST(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %34 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 2
  store i8* %33, i8** %34, align 16
  %35 = call i8* @__UNCONST(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 3
  store i8* %35, i8** %36, align 8
  %37 = call i8* @__UNCONST(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %38 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 4
  store i8* %37, i8** %38, align 16
  %39 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 5
  store i8* null, i8** %39, align 8
  %40 = getelementptr inbounds [6 x i8*], [6 x i8*]* %13, i64 0, i64 0
  store i8** %40, i8*** %14, align 8
  br label %41

41:                                               ; preds = %29, %24
  %42 = load i32*, i32** %6, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = load i8**, i8*** %14, align 8
  %48 = call i32 @donewfs(i32* %42, i8** %43, i8* %44, i32 %45, i8* %46, i8** %47)
  %49 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i8* @atf_tc_get_config_var(i32*, i8*) #2

declare dso_local i8* @__UNCONST(i8*) #2

declare dso_local i32 @donewfs(i32*, i8**, i8*, i32, i8*, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
