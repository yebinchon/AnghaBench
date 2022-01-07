; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_find_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_find_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_handler = type { i32* }
%struct.assignment = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@type_handlers = common dso_local global %struct.type_handler* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"unknown type \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type_handler* (%struct.assignment*)* @find_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type_handler* @find_handler(%struct.assignment* %0) #0 {
  %2 = alloca %struct.assignment*, align 8
  %3 = alloca %struct.type_handler*, align 8
  store %struct.assignment* %0, %struct.assignment** %2, align 8
  %4 = load %struct.type_handler*, %struct.type_handler** @type_handlers, align 8
  store %struct.type_handler* %4, %struct.type_handler** %3, align 8
  br label %5

5:                                                ; preds = %23, %1
  %6 = load %struct.type_handler*, %struct.type_handler** %3, align 8
  %7 = getelementptr inbounds %struct.type_handler, %struct.type_handler* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = load %struct.assignment*, %struct.assignment** %2, align 8
  %12 = getelementptr inbounds %struct.assignment, %struct.assignment* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.type_handler*, %struct.type_handler** %3, align 8
  %16 = getelementptr inbounds %struct.type_handler, %struct.type_handler* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @strcmp(i32 %14, i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load %struct.type_handler*, %struct.type_handler** %3, align 8
  ret %struct.type_handler* %21

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.type_handler*, %struct.type_handler** %3, align 8
  %25 = getelementptr inbounds %struct.type_handler, %struct.type_handler* %24, i32 1
  store %struct.type_handler* %25, %struct.type_handler** %3, align 8
  br label %5

26:                                               ; preds = %5
  %27 = load %struct.assignment*, %struct.assignment** %2, align 8
  %28 = load %struct.assignment*, %struct.assignment** %2, align 8
  %29 = getelementptr inbounds %struct.assignment, %struct.assignment* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ex(%struct.assignment* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i64 @strcmp(i32, i32*) #1

declare dso_local i32 @ex(%struct.assignment*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
