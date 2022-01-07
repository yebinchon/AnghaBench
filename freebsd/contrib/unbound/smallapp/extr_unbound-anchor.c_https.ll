; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_https.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_https.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_list = type { i32 }

@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"could not fetch %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"fetched %s (%d bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ip_list*, i8*, i8*)* @https to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @https(%struct.ip_list* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ip_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ip_list*, align 8
  %8 = alloca i32*, align 8
  store %struct.ip_list* %0, %struct.ip_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %8, align 8
  %9 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %10 = call i32 @wipe_ip_usage(%struct.ip_list* %9)
  br label %11

11:                                               ; preds = %25, %3
  %12 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %13 = call %struct.ip_list* @pick_random_ip(%struct.ip_list* %12)
  store %struct.ip_list* %13, %struct.ip_list** %7, align 8
  %14 = icmp ne %struct.ip_list* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.ip_list*, %struct.ip_list** %7, align 8
  %17 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.ip_list*, %struct.ip_list** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32* @https_to_ip(%struct.ip_list* %18, i8* %19, i8* %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %26

25:                                               ; preds = %15
  br label %11

26:                                               ; preds = %24, %11
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* @verb, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = call i32 @exit(i32 0) #3
  unreachable

37:                                               ; preds = %26
  %38 = load i64, i64* @verb, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @BIO_ctrl_pending(i32* %42)
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32*, i32** %8, align 8
  ret i32* %48
}

declare dso_local i32 @wipe_ip_usage(%struct.ip_list*) #1

declare dso_local %struct.ip_list* @pick_random_ip(%struct.ip_list*) #1

declare dso_local i32* @https_to_ip(%struct.ip_list*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @BIO_ctrl_pending(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
