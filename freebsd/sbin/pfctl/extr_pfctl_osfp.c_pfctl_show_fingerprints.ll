; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_pfctl_show_fingerprints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_pfctl_show_fingerprints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@classes = common dso_local global i32 0, align 4
@PF_OPT_SHOWALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"OS FINGERPRINTS:\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%u fingerprints loaded\0A\00", align 1
@fingerprint_count = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Class\09Version\09Subtype(subversion)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"-----\09-------\09-------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfctl_show_fingerprints(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32* @LIST_FIRST(i32* @classes)
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @PF_OPT_SHOWALL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = call i32 @pfctl_print_title(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @fingerprint_count, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %21

14:                                               ; preds = %5
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @sort_name_list(i32 %17, i32* @classes)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @print_name_list(i32 %19, i32* @classes, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %21

21:                                               ; preds = %14, %10
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32* @LIST_FIRST(i32*) #1

declare dso_local i32 @pfctl_print_title(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sort_name_list(i32, i32*) #1

declare dso_local i32 @print_name_list(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
