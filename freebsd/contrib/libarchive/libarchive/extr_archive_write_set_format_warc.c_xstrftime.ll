; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_warc.c_xstrftime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_warc.c_xstrftime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }
%struct.tm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_string*, i8*, i32)* @xstrftime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xstrftime(%struct.archive_string* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.archive_string*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm*, align 8
  %8 = alloca [100 x i8], align 16
  %9 = alloca i64, align 8
  store %struct.archive_string* %0, %struct.archive_string** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call %struct.tm* @gmtime(i32* %6)
  store %struct.tm* %10, %struct.tm** %7, align 8
  %11 = icmp eq %struct.tm* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %22

13:                                               ; preds = %3
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.tm*, %struct.tm** %7, align 8
  %17 = call i64 @strftime(i8* %14, i32 99, i8* %15, %struct.tm* %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @archive_strncat(%struct.archive_string* %18, i8* %19, i64 %20)
  br label %22

22:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @archive_strncat(%struct.archive_string*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
