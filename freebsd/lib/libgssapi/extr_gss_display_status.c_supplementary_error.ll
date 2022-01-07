; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_display_status.c_supplementary_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_display_status.c_supplementary_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@supplementary_error.msgs = internal global [6 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [18 x i8] c"normal completion\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"continuation call to routine required\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"duplicate per-message token detected\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"timed-out per-message token detected\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"reordered (early) per-message token detected\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"skipped predecessor token(s) detected\00", align 1
@GSS_C_SUPPLEMENTARY_OFFSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"unknown routine error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @supplementary_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @supplementary_error(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @GSS_C_SUPPLEMENTARY_OFFSET, align 4
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, %4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp uge i64 %8, 6
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* @supplementary_error.msgs, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %2, align 8
  br label %16

16:                                               ; preds = %11, %10
  %17 = load i8*, i8** %2, align 8
  ret i8* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
