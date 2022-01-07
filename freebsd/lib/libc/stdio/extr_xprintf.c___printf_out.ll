; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf.c___printf_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf.c___printf_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__printf_io = type { i32 }
%struct.printf_info = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__printf_out(%struct.__printf_io* %0, %struct.printf_info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.__printf_io*, align 8
  %6 = alloca %struct.printf_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.__printf_io* %0, %struct.__printf_io** %5, align 8
  store %struct.printf_info* %1, %struct.printf_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %11 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %4
  %15 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %16 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.__printf_io*, %struct.__printf_io** %5, align 8
  %22 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %23 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %28 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 48
  %31 = zext i1 %30 to i32
  %32 = call i64 @__printf_pad(%struct.__printf_io* %21, i32 %26, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %20, %14, %4
  %38 = load %struct.__printf_io*, %struct.__printf_io** %5, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @__printf_puts(%struct.__printf_io* %38, i8* %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %47 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %37
  %51 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %52 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.__printf_io*, %struct.__printf_io** %5, align 8
  %58 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %59 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %64 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 48
  %67 = zext i1 %66 to i32
  %68 = call i64 @__printf_pad(%struct.__printf_io* %57, i32 %62, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %56, %50, %37
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i64 @__printf_pad(%struct.__printf_io*, i32, i32) #1

declare dso_local i64 @__printf_puts(%struct.__printf_io*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
