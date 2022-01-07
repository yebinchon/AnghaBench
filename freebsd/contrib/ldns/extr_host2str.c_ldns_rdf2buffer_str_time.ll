; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%Y%m%d%H%M%S\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rdf2buffer_str_time(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tm, align 4
  %6 = alloca [16 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 @memset(%struct.tm* %5, i32 0, i32 4)
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @ldns_rdf2native_int32(i32* %8)
  %10 = call i32 @time(i32* null)
  %11 = call i64 @ldns_serial_arithmitics_gmtime_r(i32 %9, i32 %10, %struct.tm* %5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %15 = call i64 @strftime(i8* %14, i32 15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.tm* %5)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %20 = call i32 @ldns_buffer_printf(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %17, %13, %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @ldns_buffer_status(i32* %22)
  ret i32 %23
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @ldns_serial_arithmitics_gmtime_r(i32, i32, %struct.tm*) #1

declare dso_local i32 @ldns_rdf2native_int32(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, i8*) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
