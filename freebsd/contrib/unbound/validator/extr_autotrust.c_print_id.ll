; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_print_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_print_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"malloc failure in write to %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c";;id: %s %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"could not write to %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i64, i64)* @print_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_id(i32* %0, i8* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i64, i64* %10, align 8
  %15 = call i8* @sldns_wire2str_dname(i32* %13, i64 %14)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 0, i32* %6, align 4
  br label %38

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @fprintf(i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %31)
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @free(i8* %33)
  store i32 0, i32* %6, align 4
  br label %38

35:                                               ; preds = %21
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @free(i8* %36)
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %28, %18
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i8* @sldns_wire2str_dname(i32*, i64) #1

declare dso_local i32 @log_err(i8*, i8*, ...) #1

declare dso_local i64 @fprintf(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
