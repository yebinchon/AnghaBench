; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.bind.c_printkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.bind.c_printkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.KeyFuncs = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i64* }

@STRQQ = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@F_UNASSIGNED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"%-15s->  is undefined\0A\00", align 1
@FuncNames = common dso_local global %struct.KeyFuncs* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%-15s->  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%-4s to %-7s->  %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"BUG!!! %s isn't bound to anything.\0A\00", align 1
@CcKeyMap = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"CcKeyMap[%d] == %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"CcAltMap[%d] == %d\0A\00", align 1
@CcAltMap = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32)* @printkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printkeys(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.KeyFuncs*, align 8
  %8 = alloca [2 x i64], align 16
  %9 = alloca [2 x i64], align 16
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i64* %14, i64** %15, align 8
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i64* %16, i64** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %19, i64* %20, align 16
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %23, i64* %24, align 16
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @STRQQ, align 4
  %29 = call i8* @unparsestring(%struct.TYPE_3__* %10, i32 %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* @xfree, align 4
  %32 = call i32 @cleanup_push(i8* %30, i32 %31)
  %33 = load i64*, i64** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @F_UNASSIGNED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %3
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = call i32 @CGETS(i32 20, i32 10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 (i8*, ...) @xprintf(i8* %47, i8* %48)
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @cleanup_until(i8* %51)
  br label %127

53:                                               ; preds = %3
  %54 = load %struct.KeyFuncs*, %struct.KeyFuncs** @FuncNames, align 8
  store %struct.KeyFuncs* %54, %struct.KeyFuncs** %7, align 8
  br label %55

55:                                               ; preds = %96, %53
  %56 = load %struct.KeyFuncs*, %struct.KeyFuncs** %7, align 8
  %57 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %55
  %61 = load %struct.KeyFuncs*, %struct.KeyFuncs** %7, align 8
  %62 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %63, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %60
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.KeyFuncs*, %struct.KeyFuncs** %7, align 8
  %77 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %75, i64 %78)
  br label %92

80:                                               ; preds = %70
  %81 = load i32, i32* @STRQQ, align 4
  %82 = call i8* @unparsestring(%struct.TYPE_3__* %11, i32 %81)
  store i8* %82, i8** %13, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load i32, i32* @xfree, align 4
  %85 = call i32 @cleanup_push(i8* %83, i32 %84)
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load %struct.KeyFuncs*, %struct.KeyFuncs** %7, align 8
  %89 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %86, i8* %87, i64 %90)
  br label %92

92:                                               ; preds = %80, %74
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @cleanup_until(i8* %93)
  br label %127

95:                                               ; preds = %60
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.KeyFuncs*, %struct.KeyFuncs** %7, align 8
  %98 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %97, i32 1
  store %struct.KeyFuncs* %98, %struct.KeyFuncs** %7, align 8
  br label %55

99:                                               ; preds = %55
  %100 = call i32 @CGETS(i32 20, i32 11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 (i8*, ...) @xprintf(i8* %102, i8* %103)
  %105 = load i64*, i64** %4, align 8
  %106 = load i64*, i64** @CcKeyMap, align 8
  %107 = icmp eq i64* %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %99
  %109 = load i32, i32* %5, align 4
  %110 = load i64*, i64** @CcKeyMap, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %109, i64 %114)
  br label %124

116:                                              ; preds = %99
  %117 = load i32, i32* %5, align 4
  %118 = load i64*, i64** @CcAltMap, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %117, i64 %122)
  br label %124

124:                                              ; preds = %116, %108
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 @cleanup_until(i8* %125)
  br label %127

127:                                              ; preds = %124, %92, %50
  ret void
}

declare dso_local i8* @unparsestring(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @xprintf(i8*, ...) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
