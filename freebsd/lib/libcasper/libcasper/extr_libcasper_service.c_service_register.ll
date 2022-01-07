; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper_service.c_service_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper_service.c_service_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.casper_service = type { i32* }

@casper_services = common dso_local global i32 0, align 4
@cs_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.casper_service* @service_register(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.casper_service*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.casper_service*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %8, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store %struct.casper_service* null, %struct.casper_service** %5, align 8
  br label %54

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %14
  store %struct.casper_service* null, %struct.casper_service** %5, align 8
  br label %54

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = call i32* @service_find(i8* %25)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store %struct.casper_service* null, %struct.casper_service** %5, align 8
  br label %54

29:                                               ; preds = %24
  %30 = call %struct.casper_service* @malloc(i32 8)
  store %struct.casper_service* %30, %struct.casper_service** %10, align 8
  %31 = load %struct.casper_service*, %struct.casper_service** %10, align 8
  %32 = icmp eq %struct.casper_service* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store %struct.casper_service* null, %struct.casper_service** %5, align 8
  br label %54

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32* @service_alloc(i8* %35, i32* %36, i32* %37, i32 %38)
  %40 = load %struct.casper_service*, %struct.casper_service** %10, align 8
  %41 = getelementptr inbounds %struct.casper_service, %struct.casper_service* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.casper_service*, %struct.casper_service** %10, align 8
  %43 = getelementptr inbounds %struct.casper_service, %struct.casper_service* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load %struct.casper_service*, %struct.casper_service** %10, align 8
  %48 = call i32 @free(%struct.casper_service* %47)
  store %struct.casper_service* null, %struct.casper_service** %5, align 8
  br label %54

49:                                               ; preds = %34
  %50 = load %struct.casper_service*, %struct.casper_service** %10, align 8
  %51 = load i32, i32* @cs_next, align 4
  %52 = call i32 @TAILQ_INSERT_TAIL(i32* @casper_services, %struct.casper_service* %50, i32 %51)
  %53 = load %struct.casper_service*, %struct.casper_service** %10, align 8
  store %struct.casper_service* %53, %struct.casper_service** %5, align 8
  br label %54

54:                                               ; preds = %49, %46, %33, %28, %23, %13
  %55 = load %struct.casper_service*, %struct.casper_service** %5, align 8
  ret %struct.casper_service* %55
}

declare dso_local i32* @service_find(i8*) #1

declare dso_local %struct.casper_service* @malloc(i32) #1

declare dso_local i32* @service_alloc(i8*, i32*, i32*, i32) #1

declare dso_local i32 @free(%struct.casper_service*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.casper_service*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
