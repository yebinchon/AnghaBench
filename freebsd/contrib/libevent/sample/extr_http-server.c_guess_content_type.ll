; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_http-server.c_guess_content_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_http-server.c_guess_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_entry = type { i8*, i64 }

@content_type_table = common dso_local global %struct.table_entry* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"application/misc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @guess_content_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @guess_content_type(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.table_entry*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strrchr(i8* %7, i8 signext 46)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strchr(i8* %12, i8 signext 47)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  br label %42

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %18, i8** %5, align 8
  %19 = load %struct.table_entry*, %struct.table_entry** @content_type_table, align 8
  %20 = getelementptr inbounds %struct.table_entry, %struct.table_entry* %19, i64 0
  store %struct.table_entry* %20, %struct.table_entry** %6, align 8
  br label %21

21:                                               ; preds = %38, %16
  %22 = load %struct.table_entry*, %struct.table_entry** %6, align 8
  %23 = getelementptr inbounds %struct.table_entry, %struct.table_entry* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.table_entry*, %struct.table_entry** %6, align 8
  %28 = getelementptr inbounds %struct.table_entry, %struct.table_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @evutil_ascii_strcasecmp(i64 %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load %struct.table_entry*, %struct.table_entry** %6, align 8
  %35 = getelementptr inbounds %struct.table_entry, %struct.table_entry* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %2, align 8
  br label %43

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.table_entry*, %struct.table_entry** %6, align 8
  %40 = getelementptr inbounds %struct.table_entry, %struct.table_entry* %39, i32 1
  store %struct.table_entry* %40, %struct.table_entry** %6, align 8
  br label %21

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41, %15
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @evutil_ascii_strcasecmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
