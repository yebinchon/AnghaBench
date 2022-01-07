; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_copy_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_copy_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_data_chunk = type { i64, i64, i32 }
%struct.cuse_dev_entered = type { i64, i32 }

@f_cuse = common dso_local global i64 0, align 8
@CUSE_ERR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cuse: copy_out(%p,%p,%d), cmd = %d = %s\0A\00", align 1
@CUSE_IOCTL_WRITE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cuse: copy_out() error = %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@CUSE_ERR_FAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cuse_copy_out(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cuse_data_chunk, align 8
  %9 = alloca %struct.cuse_dev_entered*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @f_cuse, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @CUSE_ERR_INVALID, align 4
  store i32 %17, i32* %4, align 4
  br label %67

18:                                               ; preds = %13
  %19 = call %struct.cuse_dev_entered* (...) @cuse_dev_get_entered()
  store %struct.cuse_dev_entered* %19, %struct.cuse_dev_entered** %9, align 8
  %20 = load %struct.cuse_dev_entered*, %struct.cuse_dev_entered** %9, align 8
  %21 = icmp eq %struct.cuse_dev_entered* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @CUSE_ERR_INVALID, align 4
  store i32 %23, i32* %4, align 4
  br label %67

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.cuse_dev_entered*, %struct.cuse_dev_entered** %9, align 8
  %29 = getelementptr inbounds %struct.cuse_dev_entered, %struct.cuse_dev_entered* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cuse_dev_entered*, %struct.cuse_dev_entered** %9, align 8
  %32 = getelementptr inbounds %struct.cuse_dev_entered, %struct.cuse_dev_entered* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cuse_cmd_str(i32 %33)
  %35 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i32 %27, i32 %30, i32 %34)
  %36 = load %struct.cuse_dev_entered*, %struct.cuse_dev_entered** %9, align 8
  %37 = getelementptr inbounds %struct.cuse_dev_entered, %struct.cuse_dev_entered* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @memcpy(i8* %41, i8* %42, i32 %43)
  br label %66

45:                                               ; preds = %24
  %46 = load i8*, i8** %5, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %8, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %8, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %8, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = load i64, i64* @f_cuse, align 8
  %55 = load i32, i32* @CUSE_IOCTL_WRITE_DATA, align 4
  %56 = call i32 @ioctl(i64 %54, i32 %55, %struct.cuse_data_chunk* %8)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %45
  %60 = load i32, i32* @errno, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @CUSE_ERR_FAULT, align 4
  store i32 %64, i32* %4, align 4
  br label %67

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65, %40
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %59, %22, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.cuse_dev_entered* @cuse_dev_get_entered(...) #1

declare dso_local i32 @DPRINTF(i8*, i8*, ...) #1

declare dso_local i32 @cuse_cmd_str(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ioctl(i64, i32, %struct.cuse_data_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
