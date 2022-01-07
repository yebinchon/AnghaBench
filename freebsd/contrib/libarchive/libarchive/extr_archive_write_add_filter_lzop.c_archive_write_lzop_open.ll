; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lzop.c_archive_write_lzop_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lzop.c_archive_write_lzop_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i64 }
%struct.write_lzop = type { i8, i32 }
%struct.archive_string = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"lzop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_write_lzop_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_lzop_open(%struct.archive_write_filter* %0) #0 {
  %2 = alloca %struct.archive_write_filter*, align 8
  %3 = alloca %struct.write_lzop*, align 8
  %4 = alloca %struct.archive_string, align 4
  %5 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %2, align 8
  %6 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %7 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.write_lzop*
  store %struct.write_lzop* %9, %struct.write_lzop** %3, align 8
  %10 = call i32 @archive_string_init(%struct.archive_string* %4)
  %11 = call i32 @archive_strcpy(%struct.archive_string* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.write_lzop*, %struct.write_lzop** %3, align 8
  %13 = getelementptr inbounds %struct.write_lzop, %struct.write_lzop* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 4
  %15 = sext i8 %14 to i32
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = call i32 @archive_strappend_char(%struct.archive_string* %4, i8 signext 32)
  %19 = call i32 @archive_strappend_char(%struct.archive_string* %4, i8 signext 45)
  %20 = load %struct.write_lzop*, %struct.write_lzop** %3, align 8
  %21 = getelementptr inbounds %struct.write_lzop, %struct.write_lzop* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 4
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 48, %23
  %25 = trunc i32 %24 to i8
  %26 = call i32 @archive_strappend_char(%struct.archive_string* %4, i8 signext %25)
  br label %27

27:                                               ; preds = %17, %1
  %28 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %29 = load %struct.write_lzop*, %struct.write_lzop** %3, align 8
  %30 = getelementptr inbounds %struct.write_lzop, %struct.write_lzop* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__archive_write_program_open(%struct.archive_write_filter* %28, i32 %31, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = call i32 @archive_string_free(%struct.archive_string* %4)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_strcpy(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i8 signext) #1

declare dso_local i32 @__archive_write_program_open(%struct.archive_write_filter*, i32, i32) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
