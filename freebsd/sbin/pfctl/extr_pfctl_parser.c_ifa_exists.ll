; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_ifa_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_ifa_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_host = type { i64, i32*, %struct.node_host* }

@iftab = common dso_local global %struct.node_host* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@AF_LINK = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node_host* @ifa_exists(i8* %0) #0 {
  %2 = alloca %struct.node_host*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.node_host*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load %struct.node_host*, %struct.node_host** @iftab, align 8
  %7 = icmp eq %struct.node_host* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @ifa_load()
  br label %10

10:                                               ; preds = %8, %1
  %11 = call i32 (...) @get_query_socket()
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @is_a_group(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = call %struct.node_host* @calloc(i32 1, i32 24)
  store %struct.node_host* %16, %struct.node_host** %4, align 8
  %17 = icmp eq %struct.node_host* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8*, i8** %3, align 8
  %22 = call i32* @strdup(i8* %21)
  %23 = load %struct.node_host*, %struct.node_host** %4, align 8
  %24 = getelementptr inbounds %struct.node_host, %struct.node_host* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = icmp eq i32* %22, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.node_host*, %struct.node_host** %4, align 8
  store %struct.node_host* %29, %struct.node_host** %2, align 8
  br label %57

30:                                               ; preds = %10
  %31 = load %struct.node_host*, %struct.node_host** @iftab, align 8
  store %struct.node_host* %31, %struct.node_host** %4, align 8
  br label %32

32:                                               ; preds = %52, %30
  %33 = load %struct.node_host*, %struct.node_host** %4, align 8
  %34 = icmp ne %struct.node_host* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load %struct.node_host*, %struct.node_host** %4, align 8
  %37 = getelementptr inbounds %struct.node_host, %struct.node_host* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_LINK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.node_host*, %struct.node_host** %4, align 8
  %43 = getelementptr inbounds %struct.node_host, %struct.node_host* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* @IFNAMSIZ, align 4
  %47 = call i32 @strncmp(i32* %44, i8* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load %struct.node_host*, %struct.node_host** %4, align 8
  store %struct.node_host* %50, %struct.node_host** %2, align 8
  br label %57

51:                                               ; preds = %41, %35
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.node_host*, %struct.node_host** %4, align 8
  %54 = getelementptr inbounds %struct.node_host, %struct.node_host* %53, i32 0, i32 2
  %55 = load %struct.node_host*, %struct.node_host** %54, align 8
  store %struct.node_host* %55, %struct.node_host** %4, align 8
  br label %32

56:                                               ; preds = %32
  store %struct.node_host* null, %struct.node_host** %2, align 8
  br label %57

57:                                               ; preds = %56, %49, %28
  %58 = load %struct.node_host*, %struct.node_host** %2, align 8
  ret %struct.node_host* %58
}

declare dso_local i32 @ifa_load(...) #1

declare dso_local i32 @get_query_socket(...) #1

declare dso_local i64 @is_a_group(i8*) #1

declare dso_local %struct.node_host* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
