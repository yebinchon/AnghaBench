; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_print_tstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_print_tstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_tstats = type { i32, i32, i32*, i64**, i64**, i64, i64, i32, i32 }

@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\09Addresses:   %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09Cleared:     %s\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\09References:  [ Anchors: %-18d Rules: %-18d ]\0A\00", align 1
@PFR_REFCNT_ANCHOR = common dso_local global i64 0, align 8
@PFR_REFCNT_RULE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"\09Evaluations: [ NoMatch: %-18llu Match: %-18llu ]\0A\00", align 1
@PFR_DIR_MAX = common dso_local global i32 0, align 4
@PFR_OP_TABLE_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"\09%-12s [ Packets: %-18llu Bytes: %-18llu ]\0A\00", align 1
@stats_text = common dso_local global i8*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_tstats(%struct.pfr_tstats* %0, i32 %1) #0 {
  %3 = alloca %struct.pfr_tstats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pfr_tstats* %0, %struct.pfr_tstats** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %9 = getelementptr inbounds %struct.pfr_tstats, %struct.pfr_tstats* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %15 = getelementptr inbounds %struct.pfr_tstats, %struct.pfr_tstats* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %101

21:                                               ; preds = %13, %2
  %22 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %23 = getelementptr inbounds %struct.pfr_tstats, %struct.pfr_tstats* %22, i32 0, i32 7
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @print_table(i32* %23, i32 1, i32 %24)
  %26 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %27 = getelementptr inbounds %struct.pfr_tstats, %struct.pfr_tstats* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = call i8* @ctime(i32* %5)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %33 = getelementptr inbounds %struct.pfr_tstats, %struct.pfr_tstats* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @PFR_REFCNT_ANCHOR, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %39 = getelementptr inbounds %struct.pfr_tstats, %struct.pfr_tstats* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @PFR_REFCNT_RULE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %43)
  %45 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %46 = getelementptr inbounds %struct.pfr_tstats, %struct.pfr_tstats* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %49 = getelementptr inbounds %struct.pfr_tstats, %struct.pfr_tstats* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %47, i64 %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %98, %21
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PFR_DIR_MAX, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %101

56:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %94, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PFR_OP_TABLE_MAX, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %57
  %62 = load i8***, i8**** @stats_text, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8**, i8*** %62, i64 %64
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %72 = getelementptr inbounds %struct.pfr_tstats, %struct.pfr_tstats* %71, i32 0, i32 4
  %73 = load i64**, i64*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64*, i64** %73, i64 %75
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.pfr_tstats*, %struct.pfr_tstats** %3, align 8
  %83 = getelementptr inbounds %struct.pfr_tstats, %struct.pfr_tstats* %82, i32 0, i32 3
  %84 = load i64**, i64*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64*, i64** %84, i64 %86
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %70, i64 %81, i64 %92)
  br label %94

94:                                               ; preds = %61
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %57

97:                                               ; preds = %57
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %52

101:                                              ; preds = %20, %52
  ret void
}

declare dso_local i32 @print_table(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
