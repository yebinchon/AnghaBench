; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper_service.c_casper_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper_service.c_casper_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.casper_service = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOTCAPABLE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"procfd\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"chanfd\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"chanflags\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @casper_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @casper_command(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.casper_service*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %79

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @nvlist_exists_string(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %79

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = call i8* @nvlist_get_string(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call %struct.casper_service* @service_find(i8* %30)
  store %struct.casper_service* %31, %struct.casper_service** %10, align 8
  %32 = load %struct.casper_service*, %struct.casper_service** %10, align 8
  %33 = icmp eq %struct.casper_service* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOENT, align 4
  store i32 %35, i32* %5, align 4
  br label %79

36:                                               ; preds = %27
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @casper_allowed_service(i32* %37, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %42, i32* %5, align 4
  br label %79

43:                                               ; preds = %36
  %44 = call i32 @zygote_clone_service_execute(i32* %13, i32* %14)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @errno, align 4
  store i32 %47, i32* %5, align 4
  br label %79

48:                                               ; preds = %43
  %49 = call i32* @nvlist_create(i32 0)
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @nvlist_add_string(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @nvlist_move_descriptor(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @nvlist_send(i32 %56, i32* %57)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load i32, i32* @errno, align 4
  store i32 %61, i32* %15, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @nvlist_destroy(i32* %62)
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @close(i32 %64)
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %5, align 4
  br label %79

67:                                               ; preds = %48
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @nvlist_destroy(i32* %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @nvlist_move_descriptor(i32* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.casper_service*, %struct.casper_service** %10, align 8
  %75 = getelementptr inbounds %struct.casper_service, %struct.casper_service* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @service_get_channel_flags(i32 %76)
  %78 = call i32 @nvlist_add_number(i32* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %67, %60, %46, %41, %34, %25, %19
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @nvlist_exists_string(i32*, i8*) #1

declare dso_local i8* @nvlist_get_string(i32*, i8*) #1

declare dso_local %struct.casper_service* @service_find(i8*) #1

declare dso_local i32 @casper_allowed_service(i32*, i8*) #1

declare dso_local i32 @zygote_clone_service_execute(i32*, i32*) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_move_descriptor(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_send(i32, i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @service_get_channel_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
