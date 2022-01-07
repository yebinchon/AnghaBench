; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lundump.c_LoadHeader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lundump.c_LoadHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUAC_HEADERSIZE = common dso_local global i32 0, align 4
@N0 = common dso_local global i32 0, align 4
@N1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"not a\00", align 1
@N2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"version mismatch in\00", align 1
@N3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"incompatible\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @LoadHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadHeader(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @LUAC_HEADERSIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @LUAC_HEADERSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %14 = call i32 @luaU_header(i32* %10)
  %15 = call i32 @memcpy(i32* %13, i32* %10, i32 1)
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 1
  %18 = load i32, i32* @LUAC_HEADERSIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 1
  %21 = trunc i64 %20 to i32
  %22 = call i32 @LoadBlock(i32* %16, i32* %17, i32 %21)
  %23 = load i32, i32* @N0, align 4
  %24 = call i64 @memcmp(i32* %10, i32* %13, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %52

27:                                               ; preds = %1
  %28 = load i32, i32* @N1, align 4
  %29 = call i64 @memcmp(i32* %10, i32* %13, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @error(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* @N2, align 4
  %36 = call i64 @memcmp(i32* %10, i32* %13, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @error(i32* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* @N3, align 4
  %43 = call i64 @memcmp(i32* %10, i32* %13, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @error(i32* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %51

48:                                               ; preds = %41
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @error(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %6, align 4
  switch i32 %54, label %56 [
    i32 0, label %55
    i32 1, label %55
  ]

55:                                               ; preds = %52, %52
  ret void

56:                                               ; preds = %52
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @luaU_header(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @LoadBlock(i32*, i32*, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @error(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
