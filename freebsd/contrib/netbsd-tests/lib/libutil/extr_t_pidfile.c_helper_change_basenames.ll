; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libutil/extr_t_pidfile.c_helper_change_basenames.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libutil/extr_t_pidfile.c_helper_change_basenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to create pidfile with default basename\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to recreate pidfile with default basename\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"custom-basename\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to create pidfile with custom basename\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to recreate pidfile with custom basename\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @helper_change_basenames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @helper_change_basenames(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i8* @generate_varrun_pidfile(i8* null)
  store i8* %5, i8** %3, align 8
  %6 = call i32 @pidfile(i8* null)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EXIT_FAILURE, align 4
  %10 = call i32 @errx(i32 %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @check_pidfile(i8* %12)
  %14 = call i32 @pidfile(i8* null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  %18 = call i32 @errx(i32 %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @check_pidfile(i8* %20)
  %22 = call i8* @generate_varrun_pidfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %22, i8** %4, align 8
  %23 = call i32 @pidfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 @errx(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @ensure_deleted(i8* %29)
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @check_pidfile(i8* %31)
  %33 = call i32 @pidfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  %37 = call i32 @errx(i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @check_pidfile(i8* %39)
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* @EXIT_SUCCESS, align 4
  %46 = call i32 @exit(i32 %45) #3
  unreachable
}

declare dso_local i8* @generate_varrun_pidfile(i8*) #1

declare dso_local i32 @pidfile(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @check_pidfile(i8*) #1

declare dso_local i32 @ensure_deleted(i8*) #1

declare dso_local i32 @free(i8*) #1

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
