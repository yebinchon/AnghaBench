; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_getstrfromtype_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_getstrfromtype_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fp = common dso_local global i32* null, align 8
@AUDIT_CONTROL_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@linestr = common dso_local global i8* null, align 8
@AU_LINE_MAX = common dso_local global i32 0, align 4
@delim = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @getstrfromtype_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getstrfromtype_locked(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  store i8* null, i8** %10, align 8
  %11 = load i32*, i32** @fp, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @AUDIT_CONTROL_FILE, align 4
  %15 = call i32* @fopen(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** @fp, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %85

18:                                               ; preds = %13, %2
  br label %19

19:                                               ; preds = %18, %37, %84
  %20 = load i8*, i8** @linestr, align 8
  %21 = load i32, i32* @AU_LINE_MAX, align 4
  %22 = load i32*, i32** @fp, align 8
  %23 = call i32* @fgets(i8* %20, i32 %21, i32* %22)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32*, i32** @fp, align 8
  %27 = call i64 @ferror(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %85

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %85

31:                                               ; preds = %19
  %32 = load i8*, i8** @linestr, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %19

38:                                               ; preds = %31
  %39 = load i8*, i8** @linestr, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 0)
  %41 = getelementptr inbounds i8, i8* %40, i64 -1
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %65, %38
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** @linestr, align 8
  %45 = icmp uge i8* %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 10, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 32, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 9, %59
  br label %61

61:                                               ; preds = %56, %51, %46
  %62 = phi i1 [ true, %51 ], [ true, %46 ], [ %60, %56 ]
  br label %63

63:                                               ; preds = %61, %42
  %64 = phi i1 [ false, %42 ], [ %62, %61 ]
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = load i8*, i8** %7, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %68, i8** %7, align 8
  br label %42

69:                                               ; preds = %63
  %70 = load i8*, i8** @linestr, align 8
  store i8* %70, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* @delim, align 4
  %73 = call i8* @strtok_r(i8* %71, i32 %72, i8** %9)
  store i8* %73, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @strcmp(i8* %76, i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** %9, align 8
  %82 = load i8**, i8*** %5, align 8
  store i8* %81, i8** %82, align 8
  store i32 0, i32* %3, align 4
  br label %85

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %69
  br label %19

85:                                               ; preds = %80, %30, %29, %17
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strtok_r(i8*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
