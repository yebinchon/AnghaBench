; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_load_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_load_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_buffer = type { i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"cannot decode %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot load %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_addr(%struct.pfr_buffer* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfr_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.pfr_buffer* %0, %struct.pfr_buffer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %12

12:                                               ; preds = %34, %5
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.pfr_buffer*, %struct.pfr_buffer** %7, align 8
  %18 = load i8**, i8*** %9, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %9, align 8
  %20 = load i8*, i8** %18, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @append_addr(%struct.pfr_buffer* %17, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load i64, i64* @errno, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8**, i8*** %9, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 -1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %28, %25
  store i32 -1, i32* %6, align 4
  br label %45

34:                                               ; preds = %16
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.pfr_buffer*, %struct.pfr_buffer** %7, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @pfr_buf_load(%struct.pfr_buffer* %36, i8* %37, i32 %38, i64 (%struct.pfr_buffer*, i32, i32)* @append_addr)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 -1, i32* %6, align 4
  br label %45

44:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %41, %33
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i64 @append_addr(%struct.pfr_buffer*, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @pfr_buf_load(%struct.pfr_buffer*, i8*, i32, i64 (%struct.pfr_buffer*, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
