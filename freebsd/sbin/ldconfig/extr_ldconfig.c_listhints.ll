; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_ldconfig.c_listhints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_ldconfig.c_listhints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shlib_list = type { i8*, i32, i32, i8*, %struct.shlib_list* }

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@hints_file = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"\09search directories: %s\0A\00", align 1
@dir_list = common dso_local global i8* null, align 8
@shlib_head = common dso_local global %struct.shlib_list* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"\09%d:-l%s.%d.%d => %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @listhints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listhints() #0 {
  %1 = alloca %struct.shlib_list*, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @hints_file, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = load i8*, i8** @dir_list, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  store i32 0, i32* %2, align 4
  %7 = load %struct.shlib_list*, %struct.shlib_list** @shlib_head, align 8
  store %struct.shlib_list* %7, %struct.shlib_list** %1, align 8
  br label %8

8:                                                ; preds = %26, %0
  %9 = load %struct.shlib_list*, %struct.shlib_list** %1, align 8
  %10 = icmp ne %struct.shlib_list* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.shlib_list*, %struct.shlib_list** %1, align 8
  %14 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.shlib_list*, %struct.shlib_list** %1, align 8
  %17 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.shlib_list*, %struct.shlib_list** %1, align 8
  %20 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.shlib_list*, %struct.shlib_list** %1, align 8
  %23 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %12, i8* %15, i32 %18, i32 %21, i8* %24)
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  %29 = load %struct.shlib_list*, %struct.shlib_list** %1, align 8
  %30 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %29, i32 0, i32 4
  %31 = load %struct.shlib_list*, %struct.shlib_list** %30, align 8
  store %struct.shlib_list* %31, %struct.shlib_list** %1, align 8
  br label %8

32:                                               ; preds = %8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
