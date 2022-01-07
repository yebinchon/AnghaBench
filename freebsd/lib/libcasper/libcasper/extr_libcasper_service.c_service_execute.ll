; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper_service.c_service_execute.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper_service.c_service_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.casper_service = type { %struct.service* }
%struct.service = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"procfd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @service_execute(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.casper_service*, align 8
  %4 = alloca %struct.service*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32* @nvlist_recv(i32 %8, i32 0)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @_exit(i32 1) #3
  unreachable

14:                                               ; preds = %1
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @nvlist_exists_string(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = call i32 @_exit(i32 1) #3
  unreachable

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = call i8* @nvlist_get_string(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.casper_service* @service_find(i8* %23)
  store %struct.casper_service* %24, %struct.casper_service** %3, align 8
  %25 = load %struct.casper_service*, %struct.casper_service** %3, align 8
  %26 = icmp eq %struct.casper_service* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @_exit(i32 1) #3
  unreachable

29:                                               ; preds = %20
  %30 = load %struct.casper_service*, %struct.casper_service** %3, align 8
  %31 = getelementptr inbounds %struct.casper_service, %struct.casper_service* %30, i32 0, i32 0
  %32 = load %struct.service*, %struct.service** %31, align 8
  store %struct.service* %32, %struct.service** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @nvlist_take_descriptor(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @nvlist_destroy(i32* %35)
  %37 = load %struct.service*, %struct.service** %4, align 8
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @service_start(%struct.service* %37, i32 %38, i32 %39)
  %41 = call i32 @_exit(i32 1) #3
  unreachable
}

declare dso_local i32* @nvlist_recv(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @nvlist_exists_string(i32*, i8*) #1

declare dso_local i8* @nvlist_get_string(i32*, i8*) #1

declare dso_local %struct.casper_service* @service_find(i8*) #1

declare dso_local i32 @nvlist_take_descriptor(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @service_start(%struct.service*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
