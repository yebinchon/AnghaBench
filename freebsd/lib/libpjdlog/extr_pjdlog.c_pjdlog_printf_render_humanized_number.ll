; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpjdlog/extr_pjdlog.c_pjdlog_printf_render_humanized_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpjdlog/extr_pjdlog.c_pjdlog_printf_render_humanized_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__printf_io = type { i32 }
%struct.printf_info = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__printf_io*, %struct.printf_info*, i8**)* @pjdlog_printf_render_humanized_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pjdlog_printf_render_humanized_number(%struct.__printf_io* %0, %struct.printf_info* %1, i8** %2) #0 {
  %4 = alloca %struct.__printf_io*, align 8
  %5 = alloca %struct.printf_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca [5 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.__printf_io* %0, %struct.__printf_io** %4, align 8
  store %struct.printf_info* %1, %struct.printf_info** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %16 = load i64, i64* %8, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @HN_AUTOSCALE, align 4
  %19 = load i32, i32* @HN_NOSPACE, align 4
  %20 = load i32, i32* @HN_DECIMAL, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @humanize_number(i8* %15, i32 5, i32 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %24 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @__printf_out(%struct.__printf_io* %23, %struct.printf_info* %24, i8* %25, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %30 = call i32 @__printf_flush(%struct.__printf_io* %29)
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @__printf_out(%struct.__printf_io*, %struct.printf_info*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @__printf_flush(%struct.__printf_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
