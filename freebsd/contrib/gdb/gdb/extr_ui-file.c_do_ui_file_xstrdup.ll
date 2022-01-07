; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-file.c_do_ui_file_xstrdup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-file.c_do_ui_file_xstrdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.accumulated_ui_file = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @do_ui_file_xstrdup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ui_file_xstrdup(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.accumulated_ui_file*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.accumulated_ui_file*
  store %struct.accumulated_ui_file* %9, %struct.accumulated_ui_file** %7, align 8
  %10 = load %struct.accumulated_ui_file*, %struct.accumulated_ui_file** %7, align 8
  %11 = getelementptr inbounds %struct.accumulated_ui_file, %struct.accumulated_ui_file* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i8* @xmalloc(i64 %16)
  %18 = load %struct.accumulated_ui_file*, %struct.accumulated_ui_file** %7, align 8
  %19 = getelementptr inbounds %struct.accumulated_ui_file, %struct.accumulated_ui_file* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.accumulated_ui_file*, %struct.accumulated_ui_file** %7, align 8
  %22 = getelementptr inbounds %struct.accumulated_ui_file, %struct.accumulated_ui_file* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.accumulated_ui_file*, %struct.accumulated_ui_file** %7, align 8
  %25 = getelementptr inbounds %struct.accumulated_ui_file, %struct.accumulated_ui_file* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %26, %27
  %29 = add nsw i64 %28, 1
  %30 = call i8* @xrealloc(i8* %23, i64 %29)
  %31 = load %struct.accumulated_ui_file*, %struct.accumulated_ui_file** %7, align 8
  %32 = getelementptr inbounds %struct.accumulated_ui_file, %struct.accumulated_ui_file* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %20, %14
  %34 = load %struct.accumulated_ui_file*, %struct.accumulated_ui_file** %7, align 8
  %35 = getelementptr inbounds %struct.accumulated_ui_file, %struct.accumulated_ui_file* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.accumulated_ui_file*, %struct.accumulated_ui_file** %7, align 8
  %38 = getelementptr inbounds %struct.accumulated_ui_file, %struct.accumulated_ui_file* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.accumulated_ui_file*, %struct.accumulated_ui_file** %7, align 8
  %46 = getelementptr inbounds %struct.accumulated_ui_file, %struct.accumulated_ui_file* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.accumulated_ui_file*, %struct.accumulated_ui_file** %7, align 8
  %50 = getelementptr inbounds %struct.accumulated_ui_file, %struct.accumulated_ui_file* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.accumulated_ui_file*, %struct.accumulated_ui_file** %7, align 8
  %53 = getelementptr inbounds %struct.accumulated_ui_file, %struct.accumulated_ui_file* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 0, i8* %55, align 1
  ret void
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
