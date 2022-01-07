; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_b64encode.c_archive_filter_b64encode_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_b64encode.c_archive_filter_b64encode_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32, i32, i64 }
%struct.private_b64encode = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"====\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_filter_b64encode_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_filter_b64encode_close(%struct.archive_write_filter* %0) #0 {
  %2 = alloca %struct.archive_write_filter*, align 8
  %3 = alloca %struct.private_b64encode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %2, align 8
  %6 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %7 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.private_b64encode*
  store %struct.private_b64encode* %9, %struct.private_b64encode** %3, align 8
  %10 = load %struct.private_b64encode*, %struct.private_b64encode** %3, align 8
  %11 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.private_b64encode*, %struct.private_b64encode** %3, align 8
  %16 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %15, i32 0, i32 1
  %17 = load %struct.private_b64encode*, %struct.private_b64encode** %3, align 8
  %18 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.private_b64encode*, %struct.private_b64encode** %3, align 8
  %21 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @la_b64_encode(%struct.TYPE_4__* %16, i32 %19, i64 %22)
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.private_b64encode*, %struct.private_b64encode** %3, align 8
  %26 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %25, i32 0, i32 1
  %27 = call i32 @archive_string_sprintf(%struct.TYPE_4__* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %29 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @archive_write_set_bytes_in_last_block(i32 %30, i32 1)
  %32 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %33 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.private_b64encode*, %struct.private_b64encode** %3, align 8
  %36 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.private_b64encode*, %struct.private_b64encode** %3, align 8
  %40 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %39, i32 0, i32 1
  %41 = call i32 @archive_strlen(%struct.TYPE_4__* %40)
  %42 = call i32 @__archive_write_filter(i32 %34, i32 %38, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %44 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @__archive_write_close_filter(i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %24
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %24
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @la_b64_encode(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @archive_string_sprintf(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @archive_write_set_bytes_in_last_block(i32, i32) #1

declare dso_local i32 @__archive_write_filter(i32, i32, i32) #1

declare dso_local i32 @archive_strlen(%struct.TYPE_4__*) #1

declare dso_local i32 @__archive_write_close_filter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
