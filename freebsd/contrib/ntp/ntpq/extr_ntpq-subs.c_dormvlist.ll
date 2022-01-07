; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_dormvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_dormvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlist = type { i64, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Variable `%s' not found\0A\00", align 1
@g_varlist = common dso_local global %struct.varlist* null, align 8
@MAXLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.varlist*, i8*)* @dormvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dormvlist(%struct.varlist* %0, i8* %1) #0 {
  %3 = alloca %struct.varlist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.varlist*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.varlist* %0, %struct.varlist** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %6, align 8
  br label %11

11:                                               ; preds = %91, %2
  %12 = call i64 @nextvar(i64* %6, i8** %4, i8** %7, i8** %8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %92

14:                                               ; preds = %11
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @INSIST(i32 %22)
  %24 = load %struct.varlist*, %struct.varlist** %3, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call %struct.varlist* @findlistvar(%struct.varlist* %24, i8* %25)
  store %struct.varlist* %26, %struct.varlist** %5, align 8
  %27 = load %struct.varlist*, %struct.varlist** %5, align 8
  %28 = icmp eq %struct.varlist* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load %struct.varlist*, %struct.varlist** %5, align 8
  %31 = getelementptr inbounds %struct.varlist, %struct.varlist* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %20
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %91

38:                                               ; preds = %29
  %39 = load %struct.varlist*, %struct.varlist** %5, align 8
  %40 = getelementptr inbounds %struct.varlist, %struct.varlist* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @free(i8* %42)
  %44 = load %struct.varlist*, %struct.varlist** %5, align 8
  %45 = getelementptr inbounds %struct.varlist, %struct.varlist* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.varlist*, %struct.varlist** %5, align 8
  %50 = getelementptr inbounds %struct.varlist, %struct.varlist* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %48, %38
  br label %54

54:                                               ; preds = %83, %53
  %55 = load %struct.varlist*, %struct.varlist** %5, align 8
  %56 = getelementptr inbounds %struct.varlist, %struct.varlist* %55, i64 1
  %57 = load %struct.varlist*, %struct.varlist** @g_varlist, align 8
  %58 = load i32, i32* @MAXLIST, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.varlist, %struct.varlist* %57, i64 %59
  %61 = icmp ult %struct.varlist* %56, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.varlist*, %struct.varlist** %5, align 8
  %64 = getelementptr inbounds %struct.varlist, %struct.varlist* %63, i64 1
  %65 = getelementptr inbounds %struct.varlist, %struct.varlist* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %62, %54
  %69 = phi i1 [ false, %54 ], [ %67, %62 ]
  br i1 %69, label %70, label %86

70:                                               ; preds = %68
  %71 = load %struct.varlist*, %struct.varlist** %5, align 8
  %72 = getelementptr inbounds %struct.varlist, %struct.varlist* %71, i64 1
  %73 = getelementptr inbounds %struct.varlist, %struct.varlist* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.varlist*, %struct.varlist** %5, align 8
  %76 = getelementptr inbounds %struct.varlist, %struct.varlist* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.varlist*, %struct.varlist** %5, align 8
  %78 = getelementptr inbounds %struct.varlist, %struct.varlist* %77, i64 1
  %79 = getelementptr inbounds %struct.varlist, %struct.varlist* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.varlist*, %struct.varlist** %5, align 8
  %82 = getelementptr inbounds %struct.varlist, %struct.varlist* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %70
  %84 = load %struct.varlist*, %struct.varlist** %5, align 8
  %85 = getelementptr inbounds %struct.varlist, %struct.varlist* %84, i32 1
  store %struct.varlist* %85, %struct.varlist** %5, align 8
  br label %54

86:                                               ; preds = %68
  %87 = load %struct.varlist*, %struct.varlist** %5, align 8
  %88 = getelementptr inbounds %struct.varlist, %struct.varlist* %87, i32 0, i32 1
  store i8* null, i8** %88, align 8
  %89 = load %struct.varlist*, %struct.varlist** %5, align 8
  %90 = getelementptr inbounds %struct.varlist, %struct.varlist* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %34
  br label %11

92:                                               ; preds = %11
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @nextvar(i64*, i8**, i8**, i8**) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local %struct.varlist* @findlistvar(%struct.varlist*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
