; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_reopen_pipefd2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_reopen_pipefd2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_eloop = type { i32* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pipefd2 had been closed\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"close pipefd2\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pipe: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"re-register pipefd2 with new sockets %d,%d\00", align 1
@eloop_test_read_2_wrong = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_eloop*)* @reopen_pipefd2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reopen_pipefd2(%struct.test_eloop* %0) #0 {
  %2 = alloca %struct.test_eloop*, align 8
  %3 = alloca i32, align 4
  store %struct.test_eloop* %0, %struct.test_eloop** %2, align 8
  %4 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %5 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @MSG_INFO, align 4
  %12 = call i32 (i32, i8*, ...) @wpa_printf(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %82

13:                                               ; preds = %1
  %14 = load i32, i32* @MSG_INFO, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %17 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @eloop_unregister_read_sock(i32 %20)
  %22 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %23 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @close(i32 %26)
  %28 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %29 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 -1, i32* %31, align 4
  %32 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %33 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @close(i32 %36)
  %38 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %39 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 -1, i32* %41, align 4
  %42 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %43 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @pipe(i32* %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %13
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %54 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 -1, i32* %56, align 4
  %57 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %58 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 -1, i32* %60, align 4
  br label %82

61:                                               ; preds = %13
  %62 = load i32, i32* @MSG_INFO, align 4
  %63 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %64 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %69 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %72)
  %74 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %75 = getelementptr inbounds %struct.test_eloop, %struct.test_eloop* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @eloop_test_read_2_wrong, align 4
  %80 = load %struct.test_eloop*, %struct.test_eloop** %2, align 8
  %81 = call i32 @eloop_register_read_sock(i32 %78, i32 %79, %struct.test_eloop* %80, i32* null)
  br label %82

82:                                               ; preds = %48, %61, %10
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eloop_unregister_read_sock(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @eloop_register_read_sock(i32, i32, %struct.test_eloop*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
