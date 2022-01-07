; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_check_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvlist_header = type { i64, i32, i8*, i8* }

@NVLIST_HEADER_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NV_FLAG_ALL_MASK = common dso_local global i32 0, align 4
@NV_FLAG_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvlist_header*)* @nvlist_check_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvlist_check_header(%struct.nvlist_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvlist_header*, align 8
  store %struct.nvlist_header* %0, %struct.nvlist_header** %3, align 8
  %4 = load %struct.nvlist_header*, %struct.nvlist_header** %3, align 8
  %5 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NVLIST_HEADER_MAGIC, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = call i32 @ERRNO_SET(i32 %10)
  store i32 0, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.nvlist_header*, %struct.nvlist_header** %3, align 8
  %14 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NV_FLAG_ALL_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @ERRNO_SET(i32 %21)
  store i32 0, i32* %2, align 4
  br label %44

23:                                               ; preds = %12
  %24 = load %struct.nvlist_header*, %struct.nvlist_header** %3, align 8
  %25 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NV_FLAG_BIG_ENDIAN, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.nvlist_header*, %struct.nvlist_header** %3, align 8
  %32 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @le64toh(i8* %33)
  %35 = load %struct.nvlist_header*, %struct.nvlist_header** %3, align 8
  %36 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.nvlist_header*, %struct.nvlist_header** %3, align 8
  %38 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @le64toh(i8* %39)
  %41 = load %struct.nvlist_header*, %struct.nvlist_header** %3, align 8
  %42 = getelementptr inbounds %struct.nvlist_header, %struct.nvlist_header* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %30, %23
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %20, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @ERRNO_SET(i32) #1

declare dso_local i8* @le64toh(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
