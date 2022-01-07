; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_log.c_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_log.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_data = type { i8*, i8*, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@log_file = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i8*, i8*, i32*, i32)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_file(i32 %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.file_data*, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = call %struct.file_data* @malloc(i32 32)
  store %struct.file_data* %19, %struct.file_data** %18, align 8
  %20 = load %struct.file_data*, %struct.file_data** %18, align 8
  %21 = icmp eq %struct.file_data* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @krb5_set_error_message(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %9, align 4
  br label %49

28:                                               ; preds = %8
  %29 = load i8*, i8** %14, align 8
  %30 = load %struct.file_data*, %struct.file_data** %18, align 8
  %31 = getelementptr inbounds %struct.file_data, %struct.file_data* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = load %struct.file_data*, %struct.file_data** %18, align 8
  %34 = getelementptr inbounds %struct.file_data, %struct.file_data* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load %struct.file_data*, %struct.file_data** %18, align 8
  %37 = getelementptr inbounds %struct.file_data, %struct.file_data* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* %17, align 4
  %39 = load %struct.file_data*, %struct.file_data** %18, align 8
  %40 = getelementptr inbounds %struct.file_data, %struct.file_data* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @log_file, align 4
  %46 = load i32, i32* @close_file, align 4
  %47 = load %struct.file_data*, %struct.file_data** %18, align 8
  %48 = call i32 @krb5_addlog_func(i32 %41, i32* %42, i32 %43, i32 %44, i32 %45, i32 %46, %struct.file_data* %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %28, %22
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local %struct.file_data* @malloc(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_addlog_func(i32, i32*, i32, i32, i32, i32, %struct.file_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
