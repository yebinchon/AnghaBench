; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_make_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_make_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assignment = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-flag\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s_flag\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.assignment*)* @make_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_name(%struct.assignment* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.assignment*, align 8
  %4 = alloca %struct.assignment*, align 8
  %5 = alloca %struct.assignment*, align 8
  %6 = alloca i8*, align 8
  store %struct.assignment* %0, %struct.assignment** %3, align 8
  %7 = load %struct.assignment*, %struct.assignment** %3, align 8
  %8 = call %struct.assignment* @find(%struct.assignment* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.assignment* %8, %struct.assignment** %4, align 8
  %9 = load %struct.assignment*, %struct.assignment** %4, align 8
  %10 = icmp eq %struct.assignment* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.assignment*, %struct.assignment** %3, align 8
  %13 = call %struct.assignment* @find(%struct.assignment* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.assignment* %13, %struct.assignment** %4, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.assignment*, %struct.assignment** %4, align 8
  %16 = icmp eq %struct.assignment* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %47

18:                                               ; preds = %14
  %19 = load %struct.assignment*, %struct.assignment** %3, align 8
  %20 = call %struct.assignment* @find(%struct.assignment* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %20, %struct.assignment** %5, align 8
  %21 = load %struct.assignment*, %struct.assignment** %5, align 8
  %22 = getelementptr inbounds %struct.assignment, %struct.assignment* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strcmp(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.assignment*, %struct.assignment** %4, align 8
  %29 = getelementptr inbounds %struct.assignment, %struct.assignment* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  br label %43

33:                                               ; preds = %18
  %34 = load %struct.assignment*, %struct.assignment** %4, align 8
  %35 = getelementptr inbounds %struct.assignment, %struct.assignment* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.assignment*, %struct.assignment** %5, align 8
  %39 = getelementptr inbounds %struct.assignment, %struct.assignment* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %33, %27
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @gen_name(i8* %44)
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %2, align 8
  br label %47

47:                                               ; preds = %43, %17
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

declare dso_local %struct.assignment* @find(%struct.assignment*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, ...) #1

declare dso_local i32 @gen_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
