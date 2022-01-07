; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_print_astats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_print_astats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_astats = type { i64**, i64**, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"\09Cleared:     %s\00", align 1
@PFR_FB_NOCOUNT = common dso_local global i64 0, align 8
@PFR_DIR_MAX = common dso_local global i32 0, align 4
@PFR_OP_ADDR_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\09%-12s [ Packets: %-18llu Bytes: %-18llu ]\0A\00", align 1
@stats_text = common dso_local global i8*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_astats(%struct.pfr_astats* %0, i32 %1) #0 {
  %3 = alloca %struct.pfr_astats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pfr_astats* %0, %struct.pfr_astats** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pfr_astats*, %struct.pfr_astats** %3, align 8
  %9 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.pfr_astats*, %struct.pfr_astats** %3, align 8
  %12 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %11, i32 0, i32 2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @print_addrx(%struct.TYPE_2__* %12, i32* null, i32 %13)
  %15 = call i8* @ctime(i32* %5)
  %16 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.pfr_astats*, %struct.pfr_astats** %3, align 8
  %18 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PFR_FB_NOCOUNT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %74

24:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %71, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PFR_DIR_MAX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %67, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PFR_OP_ADDR_MAX, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load i8***, i8**** @stats_text, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8**, i8*** %35, i64 %37
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.pfr_astats*, %struct.pfr_astats** %3, align 8
  %45 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %44, i32 0, i32 1
  %46 = load i64**, i64*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64*, i64** %46, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pfr_astats*, %struct.pfr_astats** %3, align 8
  %56 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %55, i32 0, i32 0
  %57 = load i64**, i64*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64*, i64** %57, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %43, i64 %54, i64 %65)
  br label %67

67:                                               ; preds = %34
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %30

70:                                               ; preds = %30
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %25

74:                                               ; preds = %23, %25
  ret void
}

declare dso_local i32 @print_addrx(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
