; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_tzset_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_tzset_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i32, %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@lcl_rwlock = common dso_local global i32 0, align 4
@lcl_is_set = common dso_local global i32 0, align 4
@lcl_TZname = common dso_local global i32 0, align 4
@lclptr = common dso_local global %struct.state* null, align 8
@gmt = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tzset_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tzset_basic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @tzsetwall_basic(i32 %8)
  br label %105

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 @_RWLOCK_RDLOCK(i32* @lcl_rwlock)
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32, i32* @lcl_is_set, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, i32* @lcl_TZname, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @_RWLOCK_UNLOCK(i32* @lcl_rwlock)
  br label %28

28:                                               ; preds = %26, %23
  br label %105

29:                                               ; preds = %18, %15
  %30 = call i32 @_RWLOCK_UNLOCK(i32* @lcl_rwlock)
  %31 = call i32 @_RWLOCK_WRLOCK(i32* @lcl_rwlock)
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 4
  %36 = zext i1 %35 to i32
  store i32 %36, i32* @lcl_is_set, align 4
  %37 = load i32, i32* @lcl_is_set, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i32, i32* @lcl_TZname, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @strcpy(i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %29
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load %struct.state*, %struct.state** @lclptr, align 8
  %50 = getelementptr inbounds %struct.state, %struct.state* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.state*, %struct.state** @lclptr, align 8
  %52 = getelementptr inbounds %struct.state, %struct.state* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.state*, %struct.state** @lclptr, align 8
  %54 = getelementptr inbounds %struct.state, %struct.state* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.state*, %struct.state** @lclptr, align 8
  %56 = getelementptr inbounds %struct.state, %struct.state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.state*, %struct.state** @lclptr, align 8
  %61 = getelementptr inbounds %struct.state, %struct.state* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.state*, %struct.state** @lclptr, align 8
  %66 = getelementptr inbounds %struct.state, %struct.state* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.state*, %struct.state** @lclptr, align 8
  %71 = getelementptr inbounds %struct.state, %struct.state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** @gmt, align 8
  %74 = call i32 @strcpy(i32 %72, i8* %73)
  br label %98

75:                                               ; preds = %43
  %76 = load i8*, i8** %3, align 8
  %77 = load %struct.state*, %struct.state** @lclptr, align 8
  %78 = load i32, i32* @TRUE, align 4
  %79 = call i64 @tzload(i8* %76, %struct.state* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 58
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %3, align 8
  %89 = load %struct.state*, %struct.state** @lclptr, align 8
  %90 = load i32, i32* @FALSE, align 4
  %91 = call i64 @tzparse(i8* %88, %struct.state* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87, %81
  %94 = load %struct.state*, %struct.state** @lclptr, align 8
  %95 = call i32 @gmtload(%struct.state* %94)
  br label %96

96:                                               ; preds = %93, %87
  br label %97

97:                                               ; preds = %96, %75
  br label %98

98:                                               ; preds = %97, %48
  %99 = call i32 (...) @settzname()
  %100 = call i32 @_RWLOCK_UNLOCK(i32* @lcl_rwlock)
  %101 = load i32, i32* %2, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 @_RWLOCK_RDLOCK(i32* @lcl_rwlock)
  br label %105

105:                                              ; preds = %7, %28, %103, %98
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @tzsetwall_basic(i32) #1

declare dso_local i32 @_RWLOCK_RDLOCK(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @_RWLOCK_UNLOCK(i32*) #1

declare dso_local i32 @_RWLOCK_WRLOCK(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @tzload(i8*, %struct.state*, i32) #1

declare dso_local i64 @tzparse(i8*, %struct.state*, i32) #1

declare dso_local i32 @gmtload(%struct.state*) #1

declare dso_local i32 @settzname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
