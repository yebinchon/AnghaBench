; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libstdthreads/extr_thrd.c_thrd_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libstdthreads/extr_thrd.c_thrd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thrd_param = type { i8*, i32 }

@thrd_nomem = common dso_local global i32 0, align 4
@thrd_entry = common dso_local global i32 0, align 4
@thrd_error = common dso_local global i32 0, align 4
@thrd_success = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thrd_create(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.thrd_param*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = call %struct.thrd_param* @malloc(i32 16)
  store %struct.thrd_param* %9, %struct.thrd_param** %8, align 8
  %10 = load %struct.thrd_param*, %struct.thrd_param** %8, align 8
  %11 = icmp eq %struct.thrd_param* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @thrd_nomem, align 4
  store i32 %13, i32* %4, align 4
  br label %32

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.thrd_param*, %struct.thrd_param** %8, align 8
  %17 = getelementptr inbounds %struct.thrd_param, %struct.thrd_param* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.thrd_param*, %struct.thrd_param** %8, align 8
  %20 = getelementptr inbounds %struct.thrd_param, %struct.thrd_param* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @thrd_entry, align 4
  %23 = load %struct.thrd_param*, %struct.thrd_param** %8, align 8
  %24 = call i64 @pthread_create(i32* %21, i32* null, i32 %22, %struct.thrd_param* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.thrd_param*, %struct.thrd_param** %8, align 8
  %28 = call i32 @free(%struct.thrd_param* %27)
  %29 = load i32, i32* @thrd_error, align 4
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %14
  %31 = load i32, i32* @thrd_success, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %26, %12
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.thrd_param* @malloc(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.thrd_param*) #1

declare dso_local i32 @free(%struct.thrd_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
