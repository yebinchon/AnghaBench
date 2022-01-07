; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assignment = type { i8*, i32, i64, %struct.TYPE_2__, %struct.assignment* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown type %s line %d\0A\00", align 1
@a_assignment = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"bad command definition %s line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.assignment*)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check(%struct.assignment* %0) #0 {
  %2 = alloca %struct.assignment*, align 8
  %3 = alloca %struct.assignment*, align 8
  %4 = alloca i32, align 4
  store %struct.assignment* %0, %struct.assignment** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.assignment*, %struct.assignment** %2, align 8
  store %struct.assignment* %5, %struct.assignment** %3, align 8
  br label %6

6:                                                ; preds = %53, %1
  %7 = load %struct.assignment*, %struct.assignment** %3, align 8
  %8 = icmp ne %struct.assignment* %7, null
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  %10 = load %struct.assignment*, %struct.assignment** %3, align 8
  %11 = getelementptr inbounds %struct.assignment, %struct.assignment* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load i32, i32* @stderr, align 4
  %17 = load %struct.assignment*, %struct.assignment** %3, align 8
  %18 = getelementptr inbounds %struct.assignment, %struct.assignment* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.assignment*, %struct.assignment** %3, align 8
  %21 = getelementptr inbounds %struct.assignment, %struct.assignment* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %53

26:                                               ; preds = %9
  %27 = load %struct.assignment*, %struct.assignment** %3, align 8
  %28 = getelementptr inbounds %struct.assignment, %struct.assignment* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @a_assignment, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32, i32* @stderr, align 4
  %34 = load %struct.assignment*, %struct.assignment** %3, align 8
  %35 = getelementptr inbounds %struct.assignment, %struct.assignment* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.assignment*, %struct.assignment** %3, align 8
  %38 = getelementptr inbounds %struct.assignment, %struct.assignment* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %26
  %44 = load %struct.assignment*, %struct.assignment** %3, align 8
  %45 = getelementptr inbounds %struct.assignment, %struct.assignment* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @check_command(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %43, %32, %15
  %54 = load %struct.assignment*, %struct.assignment** %3, align 8
  %55 = getelementptr inbounds %struct.assignment, %struct.assignment* %54, i32 0, i32 4
  %56 = load %struct.assignment*, %struct.assignment** %55, align 8
  store %struct.assignment* %56, %struct.assignment** %3, align 8
  br label %6

57:                                               ; preds = %6
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i64 @check_command(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
