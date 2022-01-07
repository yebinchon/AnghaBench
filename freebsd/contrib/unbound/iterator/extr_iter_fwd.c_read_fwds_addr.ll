; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_read_fwds_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_read_fwds_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_stub = type { i32, %struct.config_strlist* }
%struct.config_strlist = type { i32, %struct.config_strlist* }
%struct.delegpt = type { i32 }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"cannot parse forward %s ip address: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"no name verification functionality in ssl library, ignored name for %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_stub*, %struct.delegpt*)* @read_fwds_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_fwds_addr(%struct.config_stub* %0, %struct.delegpt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_stub*, align 8
  %5 = alloca %struct.delegpt*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.config_stub* %0, %struct.config_stub** %4, align 8
  store %struct.delegpt* %1, %struct.delegpt** %5, align 8
  %10 = load %struct.config_stub*, %struct.config_stub** %4, align 8
  %11 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %10, i32 0, i32 1
  %12 = load %struct.config_strlist*, %struct.config_strlist** %11, align 8
  store %struct.config_strlist* %12, %struct.config_strlist** %6, align 8
  br label %13

13:                                               ; preds = %51, %2
  %14 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %15 = icmp ne %struct.config_strlist* %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  %17 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %18 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @log_assert(i32 %19)
  %21 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %22 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @authextstrtoaddr(i32 %23, %struct.sockaddr_storage* %7, i32* %8, i8** %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %16
  %27 = load %struct.config_stub*, %struct.config_stub** %4, align 8
  %28 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %31 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  store i32 0, i32* %3, align 4
  br label %56

34:                                               ; preds = %16
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %39 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @delegpt_add_addr_mlc(%struct.delegpt* %43, %struct.sockaddr_storage* %7, i32 %44, i32 0, i32 0, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %56

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %53 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %52, i32 0, i32 1
  %54 = load %struct.config_strlist*, %struct.config_strlist** %53, align 8
  store %struct.config_strlist* %54, %struct.config_strlist** %6, align 8
  br label %13

55:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %48, %26
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @authextstrtoaddr(i32, %struct.sockaddr_storage*, i32*, i8**) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @delegpt_add_addr_mlc(%struct.delegpt*, %struct.sockaddr_storage*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
