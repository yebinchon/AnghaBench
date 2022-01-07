; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aoe.c_aoev1_issue_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aoe.c_aoev1_issue_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AOEV1_ISSUE_ARG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"\0A\09AFlags: [%s]\00", align 1
@aoev1_aflag_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c", Err/Feature: %u\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c", Sector Count: %u\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c", Cmd/Status: %u\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\0A\09lba0: %u\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c", lba1: %u\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c", lba2: %u\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c", lba3: %u\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c", lba4: %u\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c", lba5: %u\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\0A\09Data: %u bytes\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @aoev1_issue_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aoev1_issue_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @AOEV1_ISSUE_ARG_LEN, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %146

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK2(i32 %18, i32 1)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @aoev1_aflag_str, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bittok2str(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  %27 = call i32 @ND_PRINT(i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ND_TCHECK2(i32 %31, i32 1)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @ND_PRINT(i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ND_TCHECK2(i32 %42, i32 1)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32 @ND_PRINT(i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32* %51, i32** %5, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ND_TCHECK2(i32 %53, i32 1)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @ND_PRINT(i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ND_TCHECK2(i32 %64, i32 1)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i32*
  %71 = call i32 @ND_PRINT(i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32* %73, i32** %5, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ND_TCHECK2(i32 %75, i32 1)
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i32*
  %82 = call i32 @ND_PRINT(i32* %81)
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32* %84, i32** %5, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ND_TCHECK2(i32 %86, i32 1)
  %88 = load i32*, i32** %4, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i32*
  %93 = call i32 @ND_PRINT(i32* %92)
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32* %95, i32** %5, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ND_TCHECK2(i32 %97, i32 1)
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i32*
  %104 = call i32 @ND_PRINT(i32* %103)
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32* %106, i32** %5, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ND_TCHECK2(i32 %108, i32 1)
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i32*
  %115 = call i32 @ND_PRINT(i32* %114)
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32* %117, i32** %5, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ND_TCHECK2(i32 %119, i32 1)
  %121 = load i32*, i32** %4, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i32*
  %126 = call i32 @ND_PRINT(i32* %125)
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32* %128, i32** %5, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ND_TCHECK2(i32 %130, i32 2)
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  store i32* %133, i32** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @AOEV1_ISSUE_ARG_LEN, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %16
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @AOEV1_ISSUE_ARG_LEN, align 4
  %141 = sub nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i32*
  %144 = call i32 @ND_PRINT(i32* %143)
  br label %145

145:                                              ; preds = %137, %16
  br label %168

146:                                              ; preds = %15
  %147 = load i32*, i32** %4, align 8
  %148 = load i32, i32* @istr, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i32*
  %151 = call i32 @ND_PRINT(i32* %150)
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = ptrtoint i32* %154 to i64
  %157 = ptrtoint i32* %155 to i64
  %158 = sub i64 %156, %157
  %159 = sdiv exact i64 %158, 4
  %160 = trunc i64 %159 to i32
  %161 = call i32 @ND_TCHECK2(i32 %153, i32 %160)
  br label %168

162:                                              ; No predecessors!
  %163 = load i32*, i32** %4, align 8
  %164 = load i32, i32* @tstr, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i32*
  %167 = call i32 @ND_PRINT(i32* %166)
  br label %168

168:                                              ; preds = %162, %146, %145
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
