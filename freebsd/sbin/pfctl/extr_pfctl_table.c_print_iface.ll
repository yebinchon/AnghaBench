; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_print_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_print_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfi_kif = type { i8*, i32, i32, i64***, i64***, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@PFI_IFLAG_SKIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" (skip)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PF_OPT_VERBOSE2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"\09Cleared:     %s\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\09References:  %-18d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"\09%-12s [ Packets: %-18llu Bytes: %-18llu ]\0A\00", align 1
@istats_text = common dso_local global i8**** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_iface(%struct.pfi_kif* %0, i32 %1) #0 {
  %3 = alloca %struct.pfi_kif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pfi_kif* %0, %struct.pfi_kif** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %11 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %14 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %23 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PFI_IFLAG_SKIP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  br label %31

31:                                               ; preds = %30, %2
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @PF_OPT_VERBOSE2, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %104

38:                                               ; preds = %31
  %39 = call i8* @ctime(i32* %5)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %42 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %101, %38
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %104

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, 2
  %51 = and i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 1
  %54 = and i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = load i8****, i8***** @istats_text, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8***, i8**** %57, i64 %59
  %61 = load i8***, i8**** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8**, i8*** %61, i64 %63
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %71 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %70, i32 0, i32 4
  %72 = load i64***, i64**** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64**, i64*** %72, i64 %74
  %76 = load i64**, i64*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64*, i64** %76, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %86 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %85, i32 0, i32 3
  %87 = load i64***, i64**** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64**, i64*** %87, i64 %89
  %91 = load i64**, i64*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64*, i64** %91, i64 %93
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %69, i64 %84, i64 %99)
  br label %101

101:                                              ; preds = %48
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %45

104:                                              ; preds = %37, %45
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
