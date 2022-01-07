; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_conf.c_inithostmaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_conf.c_inithostmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXMAPSTACK = common dso_local global i32 0, align 4
@MAXMAPACTIONS = common dso_local global i32 0, align 4
@MAXLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@ST_MAP = common dso_local global i32 0, align 4
@ST_FIND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"host host\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"aliases.files\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"aliases.files null\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"aliases switch aliases\00", align 1
@ConfigLevel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inithostmaps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @MAXMAPSTACK, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8*, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @MAXMAPACTIONS, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i16, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %14 = load i32, i32* @MAXLINE, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %17 = load i32, i32* @ST_MAP, align 4
  %18 = load i32, i32* @ST_FIND, align 4
  %19 = call i32* @stab(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %0
  %22 = trunc i64 %15 to i32
  %23 = call i32 @sm_strlcpy(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = call i32 @makemapentry(i8* %16)
  br label %25

25:                                               ; preds = %21, %0
  %26 = call i32 @switch_map_find(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %10, i16* %13)
  store i32 %26, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %48, %25
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %10, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load i32, i32* @ST_MAP, align 4
  %40 = load i32, i32* @ST_FIND, align 4
  %41 = call i32* @stab(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 %40)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = trunc i64 %15 to i32
  %45 = call i32 @sm_strlcpy(i8* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = call i32 @makemapentry(i8* %16)
  br label %47

47:                                               ; preds = %43, %38, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load i32, i32* @ST_MAP, align 4
  %53 = load i32, i32* @ST_FIND, align 4
  %54 = call i32* @stab(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = trunc i64 %15 to i32
  %58 = call i32 @sm_strlcpy(i8* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = call i32 @makemapentry(i8* %16)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %61)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @stab(i8*, i32, i32) #2

declare dso_local i32 @sm_strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @makemapentry(i8*) #2

declare dso_local i32 @switch_map_find(i8*, i8**, i16*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
