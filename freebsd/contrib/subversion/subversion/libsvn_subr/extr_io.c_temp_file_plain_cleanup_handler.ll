; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_temp_file_plain_cleanup_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_temp_file_plain_cleanup_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_file_cleanup_s = type { i32, i64 }

@APR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @temp_file_plain_cleanup_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_file_plain_cleanup_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.temp_file_cleanup_s*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.temp_file_cleanup_s*
  store %struct.temp_file_cleanup_s* %6, %struct.temp_file_cleanup_s** %3, align 8
  %7 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.temp_file_cleanup_s*, %struct.temp_file_cleanup_s** %3, align 8
  %9 = getelementptr inbounds %struct.temp_file_cleanup_s, %struct.temp_file_cleanup_s* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.temp_file_cleanup_s*, %struct.temp_file_cleanup_s** %3, align 8
  %14 = getelementptr inbounds %struct.temp_file_cleanup_s, %struct.temp_file_cleanup_s* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.temp_file_cleanup_s*, %struct.temp_file_cleanup_s** %3, align 8
  %17 = getelementptr inbounds %struct.temp_file_cleanup_s, %struct.temp_file_cleanup_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @apr_file_remove(i64 %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.temp_file_cleanup_s*, %struct.temp_file_cleanup_s** %3, align 8
  %22 = getelementptr inbounds %struct.temp_file_cleanup_s, %struct.temp_file_cleanup_s* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.temp_file_cleanup_s*, %struct.temp_file_cleanup_s** %3, align 8
  %25 = getelementptr inbounds %struct.temp_file_cleanup_s, %struct.temp_file_cleanup_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @apr_file_remove(i64 %23, i32 %26)
  %28 = call i32 @WIN32_RETRY_LOOP(i32 %20, i32 %27)
  br label %29

29:                                               ; preds = %12, %1
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @apr_file_remove(i64, i32) #1

declare dso_local i32 @WIN32_RETRY_LOOP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
