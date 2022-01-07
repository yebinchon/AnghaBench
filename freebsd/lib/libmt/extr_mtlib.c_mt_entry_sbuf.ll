; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_entry_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_entry_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.mt_status_entry = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt_entry_sbuf(%struct.sbuf* %0, %struct.mt_status_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.mt_status_entry*, align 8
  %6 = alloca i8*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store %struct.mt_status_entry* %1, %struct.mt_status_entry** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %8 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %44 [
    i32 129, label %10
    i32 128, label %27
  ]

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %17 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sbuf_printf(%struct.sbuf* %14, i8* %15, i32 %18)
  br label %26

20:                                               ; preds = %10
  %21 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %22 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %23 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sbuf_printf(%struct.sbuf* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %20, %13
  br label %61

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %34 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sbuf_printf(%struct.sbuf* %31, i8* %32, i32 %35)
  br label %43

37:                                               ; preds = %27
  %38 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %39 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %40 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sbuf_printf(%struct.sbuf* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %30
  br label %61

44:                                               ; preds = %3
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %51 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sbuf_printf(%struct.sbuf* %48, i8* %49, i32 %52)
  br label %60

54:                                               ; preds = %44
  %55 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %56 = load %struct.mt_status_entry*, %struct.mt_status_entry** %5, align 8
  %57 = getelementptr inbounds %struct.mt_status_entry, %struct.mt_status_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sbuf_printf(%struct.sbuf* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %47
  br label %61

61:                                               ; preds = %60, %43, %26
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
