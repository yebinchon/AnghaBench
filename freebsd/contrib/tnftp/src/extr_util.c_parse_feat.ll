; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_parse_feat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_parse_feat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"MDTM\00", align 1
@features = common dso_local global i32* null, align 8
@FEAT_MDTM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"MLST\00", align 1
@FEAT_MLST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"REST STREAM\00", align 1
@FEAT_REST_STREAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@FEAT_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"TVFS\00", align 1
@FEAT_TVFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_feat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_feat(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %16, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i64 @isspace(i32 %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i1 [ false, %3 ], [ %13, %8 ]
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %2, align 8
  br label %3

19:                                               ; preds = %14
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** @features, align 8
  %25 = load i64, i64* @FEAT_MDTM, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 1, i32* %26, align 4
  br label %63

27:                                               ; preds = %19
  %28 = load i8*, i8** %2, align 8
  %29 = call i64 @strncasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** @features, align 8
  %33 = load i64, i64* @FEAT_MLST, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 1, i32* %34, align 4
  br label %62

35:                                               ; preds = %27
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @strcasecmp(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** @features, align 8
  %41 = load i64, i64* @FEAT_REST_STREAM, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 1, i32* %42, align 4
  br label %61

43:                                               ; preds = %35
  %44 = load i8*, i8** %2, align 8
  %45 = call i64 @strcasecmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32*, i32** @features, align 8
  %49 = load i64, i64* @FEAT_SIZE, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 1, i32* %50, align 4
  br label %60

51:                                               ; preds = %43
  %52 = load i8*, i8** %2, align 8
  %53 = call i64 @strcasecmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32*, i32** @features, align 8
  %57 = load i64, i64* @FEAT_TVFS, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60, %39
  br label %62

62:                                               ; preds = %61, %31
  br label %63

63:                                               ; preds = %62, %23
  ret void
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
