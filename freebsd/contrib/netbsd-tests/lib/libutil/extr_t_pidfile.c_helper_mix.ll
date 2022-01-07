; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libutil/extr_t_pidfile.c_helper_mix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libutil/extr_t_pidfile.c_helper_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"custom-basename\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to create default pidfile\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"./second.pid\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to create pidfile 'second.pid'\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"./custom-basename\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @helper_mix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @helper_mix(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i8* @generate_varrun_pidfile(i8* null)
  store i8* %5, i8** %3, align 8
  %6 = call i8* @generate_varrun_pidfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %4, align 8
  %7 = call i32 @pidfile(i8* null)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  %11 = call i32 @errx(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @check_pidfile(i8* %13)
  %15 = call i32 @pidfile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  %19 = call i32 @errx(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @ensure_deleted(i8* %21)
  %23 = call i32 @check_pidfile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @pidfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @errx(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @ensure_deleted(i8* %30)
  %32 = call i32 @ensure_deleted(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @ensure_deleted(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @check_pidfile(i8* %34)
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i32, i32* @EXIT_SUCCESS, align 4
  %41 = call i32 @exit(i32 %40) #3
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
