; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_date_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_date_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @set_date_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_date_time(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @get_tmfromtime(%struct.tm* %5, i32* %4)
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1900
  %11 = call i32 @set_digit(i8* %7, i32 4, i64 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @set_digit(i8* %13, i32 2, i64 %16)
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 6
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @set_digit(i8* %19, i32 2, i64 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @set_digit(i8* %24, i32 2, i64 %26)
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 10
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @set_digit(i8* %29, i32 2, i64 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 12
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @set_digit(i8* %34, i32 2, i64 %36)
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 14
  %40 = call i32 @set_digit(i8* %39, i32 2, i64 0)
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 16
  %43 = call i32 @get_gmoffset(%struct.tm* %5)
  %44 = sdiv i32 %43, 900
  %45 = trunc i32 %44 to i8
  %46 = call i32 @set_num_712(i8* %42, i8 signext %45)
  ret void
}

declare dso_local i32 @get_tmfromtime(%struct.tm*, i32*) #1

declare dso_local i32 @set_digit(i8*, i32, i64) #1

declare dso_local i32 @set_num_712(i8*, i8 signext) #1

declare dso_local i32 @get_gmoffset(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
