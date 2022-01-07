; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_find_kld_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_find_kld_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linker_files_addr = common dso_local global i64 0, align 8
@off_address = common dso_local global i64 0, align 8
@off_filename = common dso_local global i64 0, align 8
@off_next = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @find_kld_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_kld_address(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64, i64* @linker_files_addr, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @off_address, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* @off_filename, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* @off_next, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %12, %2
  store i32 0, i32* %3, align 4
  br label %67

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @basename(i8* %23)
  store i8* %24, i8** %8, align 8
  %25 = load i64, i64* @linker_files_addr, align 8
  %26 = call i64 @read_pointer(i64 %25)
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %61, %22
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @off_filename, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @read_pointer(i64 %33)
  %35 = load i32, i32* @PATH_MAX, align 4
  %36 = call i32 @target_read_string(i64 %34, i8** %7, i32 %35, i32* %9)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %61

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strcmp(i8* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @xfree(i8* %46)
  br label %61

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @xfree(i8* %49)
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @off_address, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i64 @read_pointer(i64 %53)
  %55 = load i64*, i64** %5, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %67

60:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %67

61:                                               ; preds = %45, %39
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @off_next, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i64 @read_pointer(i64 %64)
  store i64 %65, i64* %6, align 8
  br label %27

66:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %60, %59, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i8* @basename(i8*) #1

declare dso_local i64 @read_pointer(i64) #1

declare dso_local i32 @target_read_string(i64, i8**, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
