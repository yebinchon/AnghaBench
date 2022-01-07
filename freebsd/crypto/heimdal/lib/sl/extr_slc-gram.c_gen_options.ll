; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_gen_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_gen_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assignment = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.type_handler = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"struct %s_options {\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s %s;\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assignment*, i8*)* @gen_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_options(%struct.assignment* %0, i8* %1) #0 {
  %3 = alloca %struct.assignment*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.assignment*, align 8
  %6 = alloca %struct.assignment*, align 8
  %7 = alloca %struct.type_handler*, align 8
  %8 = alloca i8*, align 8
  store %struct.assignment* %0, %struct.assignment** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (i32, i8*, ...) @hprint(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load %struct.assignment*, %struct.assignment** %3, align 8
  store %struct.assignment* %11, %struct.assignment** %5, align 8
  br label %12

12:                                               ; preds = %35, %2
  %13 = load %struct.assignment*, %struct.assignment** %5, align 8
  %14 = icmp ne %struct.assignment* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load %struct.assignment*, %struct.assignment** %5, align 8
  %17 = getelementptr inbounds %struct.assignment, %struct.assignment* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @make_name(i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load %struct.assignment*, %struct.assignment** %5, align 8
  %22 = getelementptr inbounds %struct.assignment, %struct.assignment* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.assignment* @find(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.assignment* %25, %struct.assignment** %6, align 8
  %26 = load %struct.assignment*, %struct.assignment** %6, align 8
  %27 = call %struct.type_handler* @find_handler(%struct.assignment* %26)
  store %struct.type_handler* %27, %struct.type_handler** %7, align 8
  %28 = load %struct.type_handler*, %struct.type_handler** %7, align 8
  %29 = getelementptr inbounds %struct.type_handler, %struct.type_handler* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 (i32, i8*, ...) @hprint(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %30, i8* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @free(i8* %33)
  br label %35

35:                                               ; preds = %15
  %36 = load %struct.assignment*, %struct.assignment** %5, align 8
  %37 = call %struct.assignment* @find_next(%struct.assignment* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.assignment* %37, %struct.assignment** %5, align 8
  br label %12

38:                                               ; preds = %12
  %39 = call i32 (i32, i8*, ...) @hprint(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @hprint(i32, i8*, ...) #1

declare dso_local i8* @make_name(i32) #1

declare dso_local %struct.assignment* @find(i32, i8*) #1

declare dso_local %struct.type_handler* @find_handler(%struct.assignment*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.assignment* @find_next(%struct.assignment*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
