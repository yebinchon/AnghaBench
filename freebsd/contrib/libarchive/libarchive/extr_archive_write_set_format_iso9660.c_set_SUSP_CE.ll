; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_SUSP_CE.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_SUSP_CE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RR_CE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @set_SUSP_CE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_SUSP_CE(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 -1
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 67, i8* %13, align 1
  %14 = load i8*, i8** %9, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 69, i8* %15, align 1
  %16 = load i32, i32* @RR_CE_SIZE, align 4
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  store i8 %17, i8* %19, align 1
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 4
  store i8 1, i8* %21, align 1
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 5
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @set_num_733(i8* %23, i32 %24)
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 13
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @set_num_733(i8* %27, i32 %28)
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 21
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @set_num_733(i8* %31, i32 %32)
  %34 = load i32, i32* @RR_CE_SIZE, align 4
  ret i32 %34
}

declare dso_local i32 @set_num_733(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
