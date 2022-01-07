; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_eloop_tests_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_eloop_tests_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_eloop = type { i32, i32, i32*, i32* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"starting eloop tests (%p) (close_in_timeout=%d)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pipe: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"pipe fds: %d,%d %d,%d\00", align 1
@eloop_test_read_1 = common dso_local global i32 0, align 4
@eloop_test_read_2 = common dso_local global i32 0, align 4
@eloop_test_cb = common dso_local global i32 0, align 4
@eloop_test_timeout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"HELLO\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"write: %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"waiting for eloop callbacks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @eloop_tests_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eloop_tests_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test_eloop*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call %struct.test_eloop* @os_zalloc(i32 24)
  store %struct.test_eloop* %5, %struct.test_eloop** %3, align 8
  %6 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %7 = icmp ne %struct.test_eloop* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %132

9:                                                ; preds = %1
  %10 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %11 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %10, i32 0, i32 0
  store i32 305419896, i32* %11, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %14 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @MSG_INFO, align 4
  %16 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.test_eloop* %16, i32 %17)
  %19 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %20 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @pipe(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %9
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %31 = call i32 @os_free(%struct.test_eloop* %30)
  br label %132

32:                                               ; preds = %9
  %33 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %34 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @pipe(i32* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %45 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %51 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %57 = call i32 @os_free(%struct.test_eloop* %56)
  br label %132

58:                                               ; preds = %32
  %59 = load i32, i32* @MSG_INFO, align 4
  %60 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %61 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %66 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %71 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %76 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %69, i32 %74, i32 %79)
  %81 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %82 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @eloop_test_read_1, align 4
  %87 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %88 = call i32 @eloop_register_read_sock(i32 %85, i32 %86, %struct.test_eloop* %87, i32* null)
  %89 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %90 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @eloop_test_read_2, align 4
  %95 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %96 = call i32 @eloop_register_read_sock(i32 %93, i32 %94, %struct.test_eloop* %95, i32* null)
  %97 = load i32, i32* @eloop_test_cb, align 4
  %98 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %99 = call i32 @eloop_register_timeout(i32 0, i32 0, i32 %97, %struct.test_eloop* %98, i32* null)
  %100 = load i32, i32* @eloop_test_timeout, align 4
  %101 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %102 = call i32 @eloop_register_timeout(i32 0, i32 200000, i32 %100, %struct.test_eloop* %101, i32* null)
  %103 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %104 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @write(i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %58
  %111 = load i32, i32* @MSG_INFO, align 4
  %112 = load i32, i32* @errno, align 4
  %113 = call i32 @strerror(i32 %112)
  %114 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %110, %58
  %116 = load %struct.test_eloop*, %struct.test_eloop** %3, align 8
  %117 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @write(i32 %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load i32, i32* @MSG_INFO, align 4
  %125 = load i32, i32* @errno, align 4
  %126 = call i32 @strerror(i32 %125)
  %127 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %123, %115
  %129 = call i32 @os_sleep(i32 0, i32 50000)
  %130 = load i32, i32* @MSG_INFO, align 4
  %131 = call i32 (i32, i8*, ...) @wpa_printf(i32 %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %39, %25, %8
  ret void
}

declare dso_local %struct.test_eloop* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_free(%struct.test_eloop*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @eloop_register_read_sock(i32, i32, %struct.test_eloop*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.test_eloop*, i32*) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @os_sleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
