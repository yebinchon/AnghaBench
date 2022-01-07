; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_datas_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_datas_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"error for input line: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"removed %d datas\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.local_zones*)* @do_datas_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_datas_remove(i32* %0, %struct.local_zones* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.local_zones*, align 8
  %5 = alloca [2048 x i8], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.local_zones* %1, %struct.local_zones** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %39, %2
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %10 = call i64 @ssl_read_line(i32* %8, i8* %9, i32 2048)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %7
  %13 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %14 = load i8, i8* %13, align 16
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %40

23:                                               ; preds = %17, %12
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.local_zones*, %struct.local_zones** %4, align 8
  %26 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %27 = call i32 @perform_data_remove(i32* %24, %struct.local_zones* %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %32 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %44

35:                                               ; preds = %29
  br label %39

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %35
  br label %7

40:                                               ; preds = %22, %7
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %34
  ret void
}

declare dso_local i64 @ssl_read_line(i32*, i8*, i32) #1

declare dso_local i32 @perform_data_remove(i32*, %struct.local_zones*, i8*) #1

declare dso_local i32 @ssl_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
