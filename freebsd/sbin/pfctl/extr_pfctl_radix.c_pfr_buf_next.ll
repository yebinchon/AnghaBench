; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_buf_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_buf_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_buffer = type { i64, i32, i8* }

@PFRB_MAX = common dso_local global i64 0, align 8
@buf_esize = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pfr_buf_next(%struct.pfr_buffer* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pfr_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.pfr_buffer* %0, %struct.pfr_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %8 = icmp eq %struct.pfr_buffer* %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ule i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PFRB_MAX, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %9, %2
  store i8* null, i8** %3, align 8
  br label %63

21:                                               ; preds = %14
  %22 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  br label %63

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  br label %63

34:                                               ; preds = %27
  %35 = load i64*, i64** @buf_esize, align 8
  %36 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = sub i64 %42, %46
  %48 = load i64, i64* %6, align 8
  %49 = udiv i64 %47, %48
  %50 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = icmp uge i64 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %34
  store i8* null, i8** %3, align 8
  br label %63

57:                                               ; preds = %34
  %58 = load i8*, i8** %5, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %59, %60
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %3, align 8
  br label %63

63:                                               ; preds = %57, %56, %30, %26, %20
  %64 = load i8*, i8** %3, align 8
  ret i8* %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
