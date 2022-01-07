; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_pfctl_define_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_pfctl_define_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_buffer = type { i32, i32 }
%struct.pfr_table = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"pfctl_define_table: strlcpy\00", align 1
@PFR_FLAG_ADDRSTOO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_define_table(i8* %0, i32 %1, i32 %2, i8* %3, %struct.pfr_buffer* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pfr_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pfr_table, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.pfr_buffer* %4, %struct.pfr_buffer** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = call i32 @bzero(%struct.pfr_table* %13, i32 12)
  %15 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %13, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strlcpy(i32 %16, i8* %17, i32 4)
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, 4
  br i1 %20, label %28, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %13, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @strlcpy(i32 %23, i8* %24, i32 4)
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %21, %6
  %29 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %13, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.pfr_buffer*, %struct.pfr_buffer** %11, align 8
  %34 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pfr_buffer*, %struct.pfr_buffer** %11, align 8
  %37 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @PFR_FLAG_ADDRSTOO, align 4
  br label %45

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = call i32 @pfr_ina_define(%struct.pfr_table* %13, i32 %35, i32 %38, i32* null, i32* null, i32 %39, i32 %46)
  ret i32 %47
}

declare dso_local i32 @bzero(%struct.pfr_table*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @pfr_ina_define(%struct.pfr_table*, i32, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
