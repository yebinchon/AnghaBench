; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_cref_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_cref_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_cref = type { i64, i32 }
%struct.unicx = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"cref\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d.\00", align 1
@CREF_GLOBAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@CREF_DUMMY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"DUMMY\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_cref*, %struct.unicx*)* @uni_print_cref_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uni_print_cref_internal(%struct.uni_cref* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_cref*, align 8
  %4 = alloca %struct.unicx*, align 8
  store %struct.uni_cref* %0, %struct.uni_cref** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  %5 = load %struct.unicx*, %struct.unicx** %4, align 8
  %6 = load %struct.uni_cref*, %struct.uni_cref** %3, align 8
  %7 = getelementptr inbounds %struct.uni_cref, %struct.uni_cref* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @uni_print_entry(%struct.unicx* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct.uni_cref*, %struct.uni_cref** %3, align 8
  %11 = getelementptr inbounds %struct.uni_cref, %struct.uni_cref* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CREF_GLOBAL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.unicx*, %struct.unicx** %4, align 8
  %17 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.uni_cref*, %struct.uni_cref** %3, align 8
  %20 = getelementptr inbounds %struct.uni_cref, %struct.uni_cref* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CREF_DUMMY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.unicx*, %struct.unicx** %4, align 8
  %26 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.unicx*, %struct.unicx** %4, align 8
  %29 = load %struct.uni_cref*, %struct.uni_cref** %3, align 8
  %30 = getelementptr inbounds %struct.uni_cref, %struct.uni_cref* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %27, %24
  br label %34

34:                                               ; preds = %33, %15
  ret void
}

declare dso_local i32 @uni_print_entry(%struct.unicx*, i8*, i8*, i32) #1

declare dso_local i32 @uni_printf(%struct.unicx*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
