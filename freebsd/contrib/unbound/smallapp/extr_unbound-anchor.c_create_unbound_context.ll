; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_create_unbound_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_create_unbound_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32 }

@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"target-fetch-policy:\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"0 0 0 0 0\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ctx targetfetchpolicy: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"root-hints:\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"do-ip6:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ip4only\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"do-ip4:\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ip6only\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_ctx* (i8*, i8*, i8*, i32, i32)* @create_unbound_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_ctx* @create_unbound_context(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ub_ctx*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = call %struct.ub_ctx* (...) @ub_ctx_create()
  store %struct.ub_ctx* %13, %struct.ub_ctx** %12, align 8
  %14 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %15 = icmp ne %struct.ub_ctx* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %5
  %17 = load i64, i64* @verb, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 @exit(i32 0) #3
  unreachable

23:                                               ; preds = %5
  %24 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %25 = call i32 @ub_ctx_set_option(%struct.ub_ctx* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i64, i64* @verb, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = call i8* @ub_strerror(i32 %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %28, %23
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @ub_ctx_config(%struct.ub_ctx* %39, i8* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i8* @ub_strerror(i32 %47)
  %49 = call i32 @ub_ctx_error_exit(%struct.ub_ctx* %45, i8* %46, i8* %48)
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @ub_ctx_resolvconf(%struct.ub_ctx* %55, i8* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i8* @ub_strerror(i32 %63)
  %65 = call i32 @ub_ctx_error_exit(%struct.ub_ctx* %61, i8* %62, i8* %64)
  br label %66

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %66, %51
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @ub_ctx_set_option(%struct.ub_ctx* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i8* @ub_strerror(i32 %79)
  %81 = call i32 @ub_ctx_error_exit(%struct.ub_ctx* %77, i8* %78, i8* %80)
  br label %82

82:                                               ; preds = %76, %70
  br label %83

83:                                               ; preds = %82, %67
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %88 = call i32 @ub_ctx_set_option(%struct.ub_ctx* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i8* @ub_strerror(i32 %93)
  %95 = call i32 @ub_ctx_error_exit(%struct.ub_ctx* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %83
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %102 = call i32 @ub_ctx_set_option(%struct.ub_ctx* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i8* @ub_strerror(i32 %107)
  %109 = call i32 @ub_ctx_error_exit(%struct.ub_ctx* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %97
  %112 = load %struct.ub_ctx*, %struct.ub_ctx** %12, align 8
  ret %struct.ub_ctx* %112
}

declare dso_local %struct.ub_ctx* @ub_ctx_create(...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ub_ctx_set_option(%struct.ub_ctx*, i8*, i8*) #1

declare dso_local i8* @ub_strerror(i32) #1

declare dso_local i32 @ub_ctx_config(%struct.ub_ctx*, i8*) #1

declare dso_local i32 @ub_ctx_error_exit(%struct.ub_ctx*, i8*, i8*) #1

declare dso_local i32 @ub_ctx_resolvconf(%struct.ub_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
